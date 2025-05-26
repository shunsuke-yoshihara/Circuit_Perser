/* sort.c - ネットリストのトポロジカルソート */

#include <stdio.h>
#include <stdlib.h>
#include "define.h"
#include "struct.h"
#include "stdnet.h"

// トポロジカルソート用変数
int *indegree;
netlist **sorted;

// トポロジカルソートを実行
/*int topsort(mode_t *mdl) {
    int i, j, k = 0;
    netlst *np;

    indegree = (int *) calloc(mdl->nnl, sizeof(int));
    sorted = (netlst **) malloc(mdl->nnl * sizeof(netlist *));
    if (indegree == NULL || sorted == NULL) {
        fprintf(stderr, "メモリの割り当てに失敗しました\n");
        exit(1);
    }

    // 各ネットの入力次数を計算
    for (i = 0; i < mdl->nnl; ++i) {
        np = &mdl->ntl[i];
        for (j = 0; j < np->nfi; ++j) {
            if (np->fil[j] != NULL) {
                indegree[np->fil[j]->num]++;
            }
        }
    }

    // 入力次数が0のノードをスタックに積む
    for (i = 0; i < mdl->nnl; ++i) {
        if (indegree[i] == 0) {
            sorted[k++] = &mdl->ntl[i];
        }
    }

    // トポロジカルソートを実行
    for (i = 0; i < k; ++i) {
        np = sorted[i];
        for (j = 0; j < np->nfo; ++j) {
            if (np->fol[j] != NULL) {
                indegree[np->fol[j]->num]--;
                if (indegree[np->fol[j]->num] == 0) {
                    sorted[k++] = np->fol[j];
                }
            }
        }
    }

    if (k != mdl->nnl) {
        fprintf(stderr, "ループ検出！ トポロジカルソート失敗\n");
        return 1;
    }

    printf("トポロジカルソート完了: \n");
    for (i = 0; i < mdl->nnl; ++i) {
        printf("%s\n", sorted[i]->nml);
    }

    free(indegree);
    free(sorted);
    return 0;
}
*/
