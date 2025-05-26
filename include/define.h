/* define.h - マクロ定義と定数 */

#ifndef DEFINE_H
#define DEFINE_H
#define maxstr  12800

// ゲートタイプの定義
/*#define NAND2_X1   1    // 2入力 NAND ゲート
#define NOR3_X1    2    // 3入力 NOR ゲート
#define MUX2_X1    3    // 2:1 マルチプレクサ
#define INV_X1     4    // インバータ
#define DFF_X1     5    // DFF (D フリップフロップ)
#define XNOR2_X1   6    // 2入力 XNOR ゲート
#define XOR2_X1    7    // 2入力 XOR ゲート
#define AOI21_X1   8    // AOI21 (AND-OR-INVERT)
#define OAI211_X1  9    // OAI211 (OR-AND-INVERT)
#define OAI21_X1   10   // OAI21 (OR-AND-INVERT)
#define NAND3_X1   11   // 3入力 NAND ゲート
#define NOR2_X1    12   // 2入力 NOR ゲート
#define SDFFR_X2   13   // SDFFR_X2 (スキャン DFF)
#define SDFFR_X1   14   // SDFFR_X1 (スキャン DFF)
#define AND2_X1    15   // 2入力 AND ゲート
#define OR2_X1     16   // 2入力 OR ゲート
#define UNKNOWN    99
*/


#define INV_X1 1
#define INV_X2 2
#define INV_X4 3
#define INV_X8 4
#define INV_X16 5
#define INV_X32 6
#define LOGIC0_X1 7
#define LOGIC1_X1 8
#define OR2_X1 9
#define OR2_X2 10
#define OR2_X4 11
#define OR3_X1 12
#define OR3_X2 13
#define OR3_X4 14
#define OR4_X1 15
#define OR4_X2 16
#define OR4_X4 17
#define NOR2_X1 18
#define NOR2_X2 19
#define NOR2_X4 20
#define NOR3_X1 21
#define NOR3_X2 22
#define NOR3_X4 23
#define NOR4_X1 24
#define NOR4_X2 25
#define NOR4_X4 26
#define OAI21_X1 27
#define OAI21_X2 28
#define OAI21_X4 29
#define OAI211_X1 30
#define OAI211_X2 31
#define OAI211_X4 32
#define OAI22_X1 33
#define OAI22_X2 34
#define OAI22_X4 35
#define OAI221_X1 36
#define OAI221_X2 37
#define OAI221_X4 38
#define OAI222_X1 39
#define OAI222_X2 40
#define OAI222_X4 41
#define OAI33_X1 42
#define AND2_X1 43
#define AND2_X2 44
#define AND2_X4 45
#define AND3_X1 46
#define AND3_X2 47
#define AND3_X4 48
#define AND4_X1 49
#define AND4_X2 50
#define AND4_X4 51
#define NAND2_X1 52
#define NAND2_X2 53
#define NAND2_X4 54
#define NAND3_X1 55
#define NAND3_X2 56
#define NAND3_X4 57
#define NAND4_X1 58
#define NAND4_X2 59
#define NAND4_X4 60
#define AOI21_X1 61
#define AOI21_X2 62
#define AOI21_X4 63
#define AOI211_X1 64
#define AOI211_X2 65
#define AOI211_X4 66
#define AOI22_X1 67
#define AOI22_X2 68
#define AOI22_X4 69
#define AOI221_X1 70
#define AOI221_X2 71
#define AOI221_X4 72
#define AOI222_X1 73
#define AOI222_X2 74
#define AOI222_X4 75
#define XOR2_X1 76
#define XOR2_X2 77
#define XNOR2_X1 78
#define XNOR2_X2 79
#define DFF_X1 80
#define DFF_X2 81
#define DFFR_X1 82
#define DFFR_X2 83
#define DFFS_X1 84
#define DFFS_X2 85
#define DFFRS_X1 86
#define DFFRS_X2 87
#define SDFF_X1 88
#define SDFF_X2 89
#define SDFFR_X1 90
#define SDFFR_X2 91
#define SDFFS_X1 92
#define SDFFS_X2 93
#define SDFFRS_X1 94
#define SDFFRS_X2 95
#define DLH_X1 96
#define DLH_X2 97
#define DLL_X1 98
#define DLL_X2 99
#define TLAT_X1 100
#define MUX2_X1 101
#define MUX2_X2 102
#define FA_X1 103
#define HA_X1 104
#define BUF_X1 105
#define BUF_X2 106
#define BUF_X4 107
#define BUF_X8 108
#define BUF_X16 109
#define BUF_X32 110
#define CLKBUF_X1 111
#define CLKBUF_X2 112
#define CLKBUF_X3 113
#define CLKGATE_X1 114
#define CLKGATE_X2 115
#define CLKGATE_X4 116
#define CLKGATE_X8 117
#define CLKGATETST_X1 118
#define CLKGATETST_X2 119
#define CLKGATETST_X4 120
#define CLKGATETST_X8 121
#define TBUF_X1 122
#define TBUF_X2 123
#define TBUF_X4 124
#define TBUF_X8 125
#define TBUF_X16 126
#define TINV_X1 127
#define ANTENNA_X1 128
#define FILLCELL_X1 129
#define FILLCELL_X2 130
#define FILLCELL_X4 131
#define FILLCELL_X8 132
#define FILLCELL_X16 133
#define FILLCELL_X32 134
#define UNKNOWN    135

// ゲートタイプの範囲
#define MAX_GATE_TYPES  200  // ゲートタイプの最大数

// 最大ネット数
#define MAX_NETS  50000  // 最大ネット数

// 最大入力ポート数
#define MAX_PORTS  20   // 各ゲートの最大入力ポート数

// エラーメッセージ
#define ERR_MEMORY_ALLOCATION "メモリの割り当てに失敗しました"
#define ERR_FILE_OPEN "ファイルのオープンに失敗しました"

#endif // DEFINE_H

