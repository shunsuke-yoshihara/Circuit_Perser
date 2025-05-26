/* options.c - コマンドラインオプションの解析 */

#include <stdio.h>
#include <string.h>
#include "define.h"
#include "struct.h"
#include "fname.h"
#include "fname.h"
#include <stdlib.h>


int useage(char *);


// コマンドラインオプション解析
/*int options(int argc, char *argv[], files *fnm) {
    int i;
    if (argc < 2) {
        return useage(argv[0]);
    }
    for (i = 1; i < argc; i++) {
        if (strcmp(argv[i], "-n") == 0) {
            if (i + 1 < argc) {
                strcpy(fnm->netlist, argv[++i]);
            } else {
                return useage(argv[0]);
            }
        } else {
            return useage(argv[0]);
        }
    }
    return 0;
}*/


int options(int argc, char *argv[], files *fnm) {
    if (fnm == NULL) {
        fprintf(stderr, "ERROR: fnm is NULL in options()\n");
        exit(1);
    }

    // ファイル名ポインタを初期化
    fnm->netnm = NULL;
    fnm->patnm = NULL;
    fnm->outnm = NULL;

    // オプション解析
    for (int i = 1; i < argc; i++) {
        // ネットリストファイル指定 -n <filename>
        if (strcmp(argv[i], "-n") == 0 && i + 1 < argc) {
            fnm->netnm = (char *) malloc(strlen(argv[i + 1]) + 1);
            if (fnm->netnm == NULL) {
                fprintf(stderr, "ERROR: malloc() failed for netnm\n");
                exit(1);
            }
            strcpy(fnm->netnm, argv[i + 1]);
        }
    }

    return 0;
}


// 使い方を表示
int useage(char *progname) {
    fprintf(stderr, "使用方法: %s -n <netlist file>\n", progname);
    return 1;
}

