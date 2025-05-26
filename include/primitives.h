/* primitives.h - プリミティブゲートの定義 */

#ifndef PRIMITIVES_H
#define PRIMITIVES_H

// ゲートタイプの文字列名
static const char *gatenames[] = {
    "in",      // 0
    "out",     // 1
    "br",      // 2
    "buff",    // 3
    "not",     // 4
    "and",     // 5
    "nand",    // 6
    "or",      // 7
    "nor",     // 8
    "xor",     // 9
    "xnor",    // 10
    "mux",     // 11
    "dff",     // 12
    "sdffr",   // 13
    "aoi21",   // 14
    "oai211",  // 15
    "oai21",   // 16
    "nand3"    // 17
};

#endif // PRIMITIVES_H

