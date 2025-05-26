/* main.c - メインプログラム */

#include <stdio.h>
#include <stdlib.h>
#include "define.h"
#include "struct.h"
#include "stdnet.h"
#include "fname.h"

module *mdl = NULL;  // ← ここで初期化

extern module *g_module;    //readnet.y のモジュールを使用

int main(int argc, char *argv[]) {
    files *fnm;
    module *mdl;
    int c;

    module *initmdl(void);
    int options(int, char *[], files *);
    int readfiles(files *);
    int printmdl(module *, FILE *);
    int print_port_connections(module *mdl);
    int freemdl(void);
    void buildPortConnections(module *m);
    void connectExternalPorts(module *m);
    void Assign(module *m, const char *lhs, const char *rhs);
    void Assign_port(module *m, const char *arg2);

    const char *outFile = "/gdsfs/gdsfs/yoshihara/BIST/myNetListParser/saa.txt";
    FILE *fp = fopen(outFile, "w");
    if (!fp) {
        fprintf(stderr, "ERROR: failed to open output file\n");
        return 1;
    }


    fnm = (files *) malloc(sizeof(files));
    if (fnm == NULL) {
         fprintf(stderr, "malloc failed at fnm\n");
         exit(1);
    }


    //mdl = initmdl();  // モジュールの初期化
    if (mdl == NULL) {
        fprintf(stderr, "ERROR: mdl is NULL after initmdl()\n");
        return 1;
    }

    // コマンドライン引数の解析
    if ((c = options(argc, argv, fnm)) != 0) return c;

    // ファイルの読み込み
    if ((c = readfiles(fnm)) != 0) return c;
    if (fnm->netnm != NULL) {
        printf("target : %s\n", fnm->netnm);
        fprintf(fp, "target : %s\n", fnm->netnm);
    }

    //Error Check
    if (mdl == NULL) {
        fprintf(stderr, "ERROR: mdl is NULL\n");
        return 1;
    }


    //test
    //for(int j = 0; j < mdl->nnl; j++){
      //  printf(" net No. %d ", mdl->ntl[j].num);
    //}

    // ポートとネットの対応情報の出力
    //print_port_connections(mdl);  // 追加部分

    //printf("test!!!!!-------------------------------------------------------\n");
    //buildConnPrev(g_module);
    //AssignPorts(g_module, argv[2]);
    //fprintf(fp,"After Assign-----------------------------------------------------\n");
    //printModule(g_module, fp);
    //fprintf(fp,"After Assign end ------------------------------------------------\n\n\n\n\n\n");
    buildPortConnections(g_module);
    connectExternalPorts(g_module);
    printModule(g_module, fp);
    fprintf(fp,"Before Assign  ------------------------------------------------\n\n\n\n\n\n");

    //Assign_port(g_module, argv[2]);
    //printModule(g_module, fp);

    fclose(fp);

    // メモリ解放
    freeModule(g_module);
    //(void) freemdl();

    printf("Output File: %s\n", outFile);


    return 0;
}

