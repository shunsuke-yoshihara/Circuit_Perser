/* read.c - ネットリストの読み込みと解析 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "define.h"
#include "struct.h"
#include "stdnet.h"
#include "fname.h"

extern int yyparse(void);
extern FILE *yyin;
module *mdl;


// initmdl(): モジュールの初期
module *initmdl(void) {
    module *m;
    m = (module *) malloc(sizeof(module));  // malloc() でメモリ確保
    if (m == NULL) {
        fprintf(stderr, "ERROR: malloc() failed for module!\n");
        exit(1);
    }
    m->netlistArr[0] = NULL;
    m->nnl = 0;
    //m->nfl = 0;
    m->npi = 0;
    m->npo = 0;
    m->nff = 0;
    //m->fnl = NULL;
    m->pil[0] = NULL;
    m->pol[0] = NULL;
    m->ffl[0] = NULL;

    return m;  // 正常に初期化した module を返す
}

// yyerror(): シンタックスエラー表示
/*void yyerror(const char *s) {
    extern int lineno;
    fprintf(stderr, "Error: %s at line %d\n", s, lineno);
}*/

// initnamel(): 名前リストの初期化
namelst *initnamel(void) {
    namelst *n;
    n = (namelst *) malloc(sizeof(namelst));
    if (n == NULL) {
        fprintf(stderr, "ERROR: malloc() failed for namelst!\n");
        exit(1);
    }

    n->name[0] = '\0';  // 初期化
    //n->next = NULL;
    return n;
}



// ネットリストファイルを読み込む
int readfiles(files *fnm) {
    if ((yyin = fopen(fnm->netnm, "r")) == NULL) {
        fprintf(stderr, "ファイル %s を開けません\n", fnm->netnm);
        return 1;
    }
    if (yyparse() != 0) {
        fprintf(stderr, "ネットリストの解析に失敗しました\n");
        fclose(yyin);
        return 1;
    }
    fclose(yyin);
    return 0;
}

// ネットリストの情報を解放
int freemdl(void) {
    if (mdl != NULL) {
        free(mdl->netlistArr);
//        free(mdl->fnl);
        free(mdl->pil);
        free(mdl->pol);
        free(mdl->ffl);
        free(mdl);
    }
    return 0;
}

