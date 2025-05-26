%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "stdnet.h"

/* yylex, yyerror の宣言 */
int yylex(void);
void yyerror(const char *s);

/* モジュールへのポインタ */
//static module *g_module = NULL;
module *g_module = NULL;
/* 現在パース中の netlist(ゲート) */
static netlist *g_currentNet = NULL;


/*
 * 指定の要件:
 *  .Q, .QN, .Z, .ZN → 出力
 *  それ以外 → 入力
 */
static int isOutputPort(const char *pName)
{
    if(strcmp(pName,".Q")==0)  return 1;
    if(strcmp(pName,".QN")==0) return 1;
    if(strcmp(pName,".Z")==0)  return 1;
    if(strcmp(pName,".ZN")==0) return 1;
    if(strcmp(pName,".GCK")==0) return 1;
    if(strcmp(pName,".CO")==0) return 1;
    if(strcmp(pName,".S")==0) return 1;
    return 0; /* default is input */
}

/*--------------*
 * 名前リスト用
 *--------------*/
typedef struct name_node {
    char *name;
    struct name_node *next;
} name_node;

/* リスト解放 */
void freeNameList(name_node *p){
    while(p){
        name_node *nx = p->next;
        free(p->name);
        free(p);
        p=nx;
    }
}
%}

/*
 * Bison が使う共用体(%union)の定義
 * - sval    : char* (トークンなど)
 * - namelist: name_node* (NameList用)
 */
%union {
    char *sval;              /* 文字列 */
    struct name_node *namelist; /* 名前リスト */
}

/* トークンの型付け (char*) */
%token <sval> NAME
%token <sval> DOTNAME
%token INPUT
%token OUTPUT
%token WIRE

/*
 * 非終端記号の型付け
 * - 「NameList は `<namelist>`を使う」
 *   => Bison が `$2` (NameList)を「name_node*」と認識
 */
%type <namelist> NameList

/*
 * PortList や NamedPort は文字列を返さないなら <sval> でもOK
 * (値を返さないが、$1,$3 などは DOTNAME, NAME で<char*>を使う)
 */
%type <sval> PortList
%type <sval> NamedPort

%start Netlist

%%
/*----------------------
 * Netlist = 全体
 *---------------------*/
Netlist
  :
    {
      /* 開始時にモジュール初期化 */
      g_module = initModule();
    }
    Lines
    {
      /* パース完了時 */
      //buildConnPrev(g_module);
      //printModule(g_module);
      //freeModule(g_module);
    }
  ;

/* 複数行 */
Lines
    : /* empty */
    | Lines Line
    ;

/* 1行 */
Line
    : INPUT NameList ';'
      {
        /* $2 は `<namelist>` => name_node* */
        name_node *p = $2;
        while(p){
            /* createNetlist で TYPE_INPUT として登録し、npi++ */
            netlist *nl = createNetlist(g_module, TYPE_INPUT, p->name);
            p = p->next;
        }
        freeNameList($2);
      }
    | OUTPUT NameList ';'
      {
        name_node *p = $2;
        while(p){
            netlist *nl = createNetlist(g_module, TYPE_OUTPUT, p->name);
            p = p->next;
        }
        freeNameList($2);
      }
    | WIRE NameList ';'
      {
        name_node *p = $2;
        while(p){
            netlist *nl = createNetlist(g_module, TYPE_WIRE, p->name);
            p = p->next;
        }
        freeNameList($2);
      }
    | InstDecl
    ;

/* カンマ区切りの名前リスト */
NameList
    : NAME
      {
        name_node *nd = (name_node*)malloc(sizeof(name_node));
        nd->name = $1;   /* strdup済み */
        nd->next = NULL;
        $$ = nd;         /* $$は<namelist> */
      }
    | NameList ',' NAME
      {
        name_node *nd = (name_node*)malloc(sizeof(name_node));
        nd->name = $3;
        nd->next = NULL;
        /* 末尾につなぐ */
        name_node *cur = $1;
        while(cur->next) cur = cur->next;
        cur->next = nd;
        $$ = $1;
      }
    ;

/* ゲートインスタンス宣言(例: NAND2_X1 U0 ( .D(n7), .Q(n8) );) */
InstDecl
    : NAME NAME
      {
        /* $1=セル名, $2=インスタ名 */
        /* typeを getGateType($1) しつつ、instName=$2 */
        g_currentNet = createNetlist(g_module, getGateType($1), $2);
        /* ポート配列を確保 */
        allocPortsForNetlist(g_currentNet, MAX_PORT, MAX_PORT);
        free($1);
        free($2);
      }
      '(' PortList ')' ';'
      {
        //インスタンス終了
        g_currentNet = NULL;
      }
    ;

/* .D(n7), .Q(n8), ... */
PortList
    : NamedPort
    | PortList ',' NamedPort
    ;

/* 1つのポート: .D(n7) */
NamedPort
    : DOTNAME '(' NAME ')'
      {
        if(!g_currentNet){
          /* 想定外 */
          free($1); free($3);
        } else {
          if(isOutputPort($1)){
              addFanoutPort(g_currentNet, $1, $3);
          } else {
              addFaninPort(g_currentNet, $1, $3);
          }
          free($1);
          free($3);

        }
      }
    ;

%%
void yyerror(const char *s){
    fprintf(stderr,"Error: %s\n", s);
}

