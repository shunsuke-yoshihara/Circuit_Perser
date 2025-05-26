#ifndef STDNET_H
#define STDNET_H

#ifdef __cplusplus
extern "C" {
#endif

/*--------------------------------------
 * プリミティブ or 種別定数
 *--------------------------------------*/
#define TYPE_INPUT   99999
#define TYPE_OUTPUT  999999
#define TYPE_WIRE    9999999

/* 例: ゲートごとに定数 */
/*#define NAND2_X1   1
#define SDFFR_X2   2
#define SDFFR_X1   3
#define MUX2_X1    4
#define INV_X1     5
#define DFF_X1     6
#define NOR2_X1    7
#define XOR2_X1    8
#define XNOR2_X1   9
#define AOI21_X1   10
#define OAI21_X1   11
#define OAI211_X1  12
#define NAND3_X1   13
#define UNKNOWN    99
*/
#define MAX_NETLIST 500000
#define MAX_PORT    16

/*--------------------------------------
 * 前方宣言
 *--------------------------------------*/
typedef struct _module  module;
typedef struct _netlist netlist;
typedef struct _port    port;

/*--------------------------------------
 * _port 構造体
 *--------------------------------------*/
struct _port {
    netlist *nl;       /* このポートが所属する netlist */
    char    *portName; /* 例: ".D", ".Q" */
    char    *netName;  /* 例: "n7" */

    /* 接続先ポート (ファンアウトが複数あるなら配列 or リスト) */
    //port  **connNext;
    //int    connCount;

    //port  **connPrev;    // addition
    //int     connPrevCount;    //addition

    port    **connect;
    int       connCount;
};

/*--------------------------------------
 * _netlist 構造体
 *--------------------------------------*/
struct _netlist {
    int   num;      /* Net Number (ID) */
    int   type;     /* TYPE_INPUT, TYPE_OUTPUT, TYPE_WIRE, or ゲート(NAND2_X1等) */
    int   nfi;      /* ファンイン数 */
    int   nfo;      /* ファンアウト数 */

    port **fin;     /* ファンイン配列へのポインタ(要malloc) */
    port **fout;    /* ファンアウト配列へのポインタ(要malloc) */

    char  *instName; /* インスタンス名 ("U0"等) */
};

/*--------------------------------------
 * _module 構造体
 *--------------------------------------*/
struct _module {
    int nnl;    /* netlistの数 */
    int npi;    /* 外部入力数 */
    int npo;    /* 外部出力数 */
    int nff;    /* FFの数(SDFFR_X1/X2, DFF_X1等) */

    /* netlistのポインタ配列 */
    netlist *netlistArr[MAX_NETLIST];
    netlist *ffl[MAX_NETLIST];
    netlist *pil[MAX_NETLIST];
    netlist *pol[MAX_NETLIST];
};

/*--------------------------------------
 * 関数プロトタイプ
 *--------------------------------------*/

/* モジュール初期化 */
module* initModule(void);

//出力元つなげ合せ
void buildConnPrev(module *m);

extern module *g_module;


/* セル名 -> 定数(ゲート) */
int getGateType(const char *cellName);

/* createNetlist: typeを指定して netlist をmallocし、module配列に登録 */
netlist* createNetlist(module *m, int type, const char *instName);

/* allocPortsForNetlist: fanin/fanout用の配列確保 */
void allocPortsForNetlist(netlist *nl, int maxFi, int maxFo);

/* addFaninPort/addFanoutPort */
int addFaninPort(netlist *nl, const char *portName, const char *netName);
int addFanoutPort(netlist *nl, const char *portName, const char *netName);

/* print & free */
void printModule(module *m, FILE *fp);
void freeModule(module *m);

#ifdef __cplusplus
}
#endif

#endif /* STDNET_H */

