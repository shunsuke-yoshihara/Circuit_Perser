#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "define.h"
#include "struct.h"
#include "stdnet.h"
#include "hash.h"

// モジュールの外部変数宣言
extern module *mdl;


// insert() 関数: ハッシュテーブルへの挿入
/*netlst *insert(char *name) {
    int i;
    netlst *n;

    // ハッシュ挿入処理
    for (i = 0; i < mdl->nnl; i++) {
        if (mdl->ntl[i].nml != NULL && strcmp(mdl->ntl[i].nml, name) == 0) {
            return &(mdl->ntl[i]);
        }
    }

    // 新規挿入
    for (i = 0; i < mdl->nnl; i++) {
        if (mdl->ntl[i].nml == NULL) {
            mdl->ntl[i].nml = (char *) malloc(strlen(name) + 1);
            strcpy(mdl->ntl[i].nml, name);
            return &(mdl->ntl[i]);
        }
    }
    return NULL;
}

*/
