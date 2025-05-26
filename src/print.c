/* print.c - ポートとネットの接続情報を表示 */

#include <stdio.h>
#include "define.h"
#include "struct.h"
#include "stdnet.h"
#include "primitives.h"



// 関数プロトタイプ
const char* get_gate_name(int typ);
const char* get_port_name(int idx);
const char* get_output_port_name(int idx);


// ポート接続情報の出力
/*int print_port_connections(module *mdl) {
    for (int i = 0; i < mdl->nnl; ++i) {
        netlist *gate = &mdl->ntl[i];
        printf("\nゲートタイプ: %s\n", get_gate_name(gate->type));
        printf("インスタンス名: %s\n", gate->instName);
        printf("ポートとネットの対応:\n");

        // Fanin 情報を表示
        for (int j = 0; j < gate->nfi; ++j) {
            if (&(gate->fin[j]) != NULL) {
                printf("  %s → %s\n", get_port_name(j), gate->fin[j].netName);
            }
        }

        // Fanout 情報を表示
        for (int j = 0; j < gate->nfo; ++j) {
            if (&(gate->fout[j]) != NULL) {
                printf("  %s → %s\n", get_output_port_name(j), gate->fout[j].netName);
            }
        }
    }
    return 0;
}*/




/*int print_port_connections(module *mdl) {
    // 連結リストを走査
    netlist *gate = mdl->;
    while (gate) {
        printf("\nゲートタイプ: %s\n", get_gate_name(gate->type));
        printf("インスタンス名: %s\n", gate->instName);
        printf("ポートとネットの対応:\n");

        // ファンイン(finite)をリンクリストでたどる
        port *f = gate->fin; // 先頭
        while (f) {
            printf("  (fanin) %s → %s\n", f->portName, f->netName);
            f = f->next;
        }

        // ファンアウト(fout)をリンクリストでたどる
        f = gate->fout; // 先頭
        while (f) {
            printf("  (fanout) %s → %s\n", f->portName, f->netName);
            f = f->next;
        }

        gate = gate->next; // 次のノードへ
    }
    return 0;
}









// ゲートタイプの名前を返す
const char* get_gate_name(int typ) {
    switch (typ) {
        case NAND2_X1:  return "NAND2_X1";
        case NOR3_X1:   return "NOR3_X1";
        case MUX2_X1:   return "MUX2_X1";
        case INV_X1:    return "INV_X1";
        case DFF_X1:    return "DFF_X1";
        case SDFFR_X2:  return "SDFFR_X2";
        case SDFFR_X1:  return "SDFFR_X1";  // SDFFR_X1 追加
        case XNOR2_X1:  return "XNOR2_X1";
        case XOR2_X1:   return "XOR2_X1";
        case AOI21_X1:  return "AOI21_X1";
        case OAI211_X1: return "OAI211_X1";
        case OAI21_X1:  return "OAI21_X1";
        case NAND3_X1:  return "NAND3_X1";
        case NOR2_X1:   return "NOR2_X1";
        default:        return "UNKNOWN";
    }
}

// 入力ポートの名前を返す
const char* get_port_name(int idx) {
    switch (idx) {
        case 0: return "A1";
        case 1: return "A2";
        case 2: return "A3";
        case 3: return "S";
        case 4: return "D";    // DFF, SDFFR の D ポート
        case 5: return "CK";   // DFF, SDFFR の CK ポート
        case 6: return "SI";   // SDFFR_X1, SDFFR_X2 のスキャン入力
        case 7: return "SE";   // SDFFR_X1, SDFFR_X2 のスキャン有効
        case 8: return "RN";   // SDFFR_X1, SDFFR_X2 の非同期リセット
        default: return "UNKNOWN";
    }
}

// 出力ポートの名前を返す
const char* get_output_port_name(int idx) {
    switch (idx) {
        case 0: return "ZN";
        case 1: return "Q";    // DFF, SDFFR の Q ポート
        case 2: return "QN";   // DFF, SDFFR の QN ポート
        default: return "UNKNOWN";
    }
}
*/
