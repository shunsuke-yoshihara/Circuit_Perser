#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "stdnet.h"
#include "define.h"

/* グローバル module */
static module g_mod;

/*----------------------------------*
 * initModule
 *----------------------------------*/
module* initModule(void)
{
    memset(&g_mod, 0, sizeof(module));
    return &g_mod;
}

/*----------------------------------*
 * getGateType
 *----------------------------------*/
int getGateType(const char *cellName)
{
    /*if(!cellName) return UNKNOWN;
    if(strcmp(cellName,"NAND2_X1")==0) return NAND2_X1;
    if(strcmp(cellName,"SDFFR_X2")==0) return SDFFR_X2;
    if(strcmp(cellName,"SDFFR_X1")==0) return SDFFR_X1;
    if(strcmp(cellName,"MUX2_X1")==0)   return MUX2_X1;
    if(strcmp(cellName,"INV_X1")==0)    return INV_X1;
    if(strcmp(cellName,"DFF_X1")==0)    return DFF_X1;
    if(strcmp(cellName,"NOR2_X1")==0)   return NOR2_X1;
    if(strcmp(cellName,"XOR2_X1")==0)   return XOR2_X1;
    if(strcmp(cellName,"XNOR2_X1")==0)  return XNOR2_X1;
    if(strcmp(cellName,"AOI21_X1")==0)  return AOI21_X1;
    if(strcmp(cellName,"OAI21_X1")==0)  return OAI21_X1;
    if(strcmp(cellName,"OAI211_X1")==0) return OAI211_X1;
    if(strcmp(cellName,"NAND3_X1")==0)  return NAND3_X1;
    if(strcmp(cellName,"NOR3_X1")==0)  return NOR3_X1;*/

    /* -------- Inverter / Logic -------- */
    if (strcmp(cellName,"INV_X1")==0)       return INV_X1;
    if (strcmp(cellName,"INV_X2")==0)       return INV_X2;
    if (strcmp(cellName,"INV_X4")==0)       return INV_X4;
    if (strcmp(cellName,"INV_X8")==0)       return INV_X8;
    if (strcmp(cellName,"INV_X16")==0)      return INV_X16;
    if (strcmp(cellName,"INV_X32")==0)      return INV_X32;
    if (strcmp(cellName,"LOGIC0_X1")==0)    return LOGIC0_X1;
    if (strcmp(cellName,"LOGIC1_X1")==0)    return LOGIC1_X1;

/* -------- OR gates -------- */
    if (strcmp(cellName,"OR2_X1")==0)       return OR2_X1;
    if (strcmp(cellName,"OR2_X2")==0)       return OR2_X2;
    if (strcmp(cellName,"OR2_X4")==0)       return OR2_X4;
    if (strcmp(cellName,"OR3_X1")==0)       return OR3_X1;
    if (strcmp(cellName,"OR3_X2")==0)       return OR3_X2;
    if (strcmp(cellName,"OR3_X4")==0)       return OR3_X4;
    if (strcmp(cellName,"OR4_X1")==0)       return OR4_X1;
    if (strcmp(cellName,"OR4_X2")==0)       return OR4_X2;
    if (strcmp(cellName,"OR4_X4")==0)       return OR4_X4;

/* -------- NOR gates -------- */
    if (strcmp(cellName,"NOR2_X1")==0)      return NOR2_X1;
    if (strcmp(cellName,"NOR2_X2")==0)      return NOR2_X2;
    if (strcmp(cellName,"NOR2_X4")==0)      return NOR2_X4;
    if (strcmp(cellName,"NOR3_X1")==0)      return NOR3_X1;
    if (strcmp(cellName,"NOR3_X2")==0)      return NOR3_X2;
    if (strcmp(cellName,"NOR3_X4")==0)      return NOR3_X4;
    if (strcmp(cellName,"NOR4_X1")==0)      return NOR4_X1;
    if (strcmp(cellName,"NOR4_X2")==0)      return NOR4_X2;
    if (strcmp(cellName,"NOR4_X4")==0)      return NOR4_X4;

/* -------- OAI gates -------- */
    if (strcmp(cellName,"OAI21_X1")==0)     return OAI21_X1;
    if (strcmp(cellName,"OAI21_X2")==0)     return OAI21_X2;
    if (strcmp(cellName,"OAI21_X4")==0)     return OAI21_X4;
    if (strcmp(cellName,"OAI211_X1")==0)    return OAI211_X1;
    if (strcmp(cellName,"OAI211_X2")==0)    return OAI211_X2;
    if (strcmp(cellName,"OAI211_X4")==0)    return OAI211_X4;
    if (strcmp(cellName,"OAI22_X1")==0)     return OAI22_X1;
    if (strcmp(cellName,"OAI22_X2")==0)     return OAI22_X2;
    if (strcmp(cellName,"OAI22_X4")==0)     return OAI22_X4;
    if (strcmp(cellName,"OAI221_X1")==0)    return OAI221_X1;
    if (strcmp(cellName,"OAI221_X2")==0)    return OAI221_X2;
    if (strcmp(cellName,"OAI221_X4")==0)    return OAI221_X4;
    if (strcmp(cellName,"OAI222_X1")==0)    return OAI222_X1;
    if (strcmp(cellName,"OAI222_X2")==0)    return OAI222_X2;
    if (strcmp(cellName,"OAI222_X4")==0)    return OAI222_X4;
    if (strcmp(cellName,"OAI33_X1")==0)     return OAI33_X1;

/* -------- AND gates -------- */
    if (strcmp(cellName,"AND2_X1")==0)      return AND2_X1;
    if (strcmp(cellName,"AND2_X2")==0)      return AND2_X2;
    if (strcmp(cellName,"AND2_X4")==0)      return AND2_X4;
    if (strcmp(cellName,"AND3_X1")==0)      return AND3_X1;
    if (strcmp(cellName,"AND3_X2")==0)      return AND3_X2;
    if (strcmp(cellName,"AND3_X4")==0)      return AND3_X4;
    if (strcmp(cellName,"AND4_X1")==0)      return AND4_X1;
    if (strcmp(cellName,"AND4_X2")==0)      return AND4_X2;
    if (strcmp(cellName,"AND4_X4")==0)      return AND4_X4;

/* -------- NAND gates -------- */
    if (strcmp(cellName,"NAND2_X1")==0)     return NAND2_X1;
    if (strcmp(cellName,"NAND2_X2")==0)     return NAND2_X2;
    if (strcmp(cellName,"NAND2_X4")==0)     return NAND2_X4;
    if (strcmp(cellName,"NAND3_X1")==0)     return NAND3_X1;
    if (strcmp(cellName,"NAND3_X2")==0)     return NAND3_X2;
    if (strcmp(cellName,"NAND3_X4")==0)     return NAND3_X4;
    if (strcmp(cellName,"NAND4_X1")==0)     return NAND4_X1;
    if (strcmp(cellName,"NAND4_X2")==0)     return NAND4_X2;
    if (strcmp(cellName,"NAND4_X4")==0)     return NAND4_X4;

/* -------- AOI gates -------- */
    if (strcmp(cellName,"AOI21_X1")==0)     return AOI21_X1;
    if (strcmp(cellName,"AOI21_X2")==0)     return AOI21_X2;
    if (strcmp(cellName,"AOI21_X4")==0)     return AOI21_X4;
    if (strcmp(cellName,"AOI211_X1")==0)    return AOI211_X1;
    if (strcmp(cellName,"AOI211_X2")==0)    return AOI211_X2;
    if (strcmp(cellName,"AOI211_X4")==0)    return AOI211_X4;
    if (strcmp(cellName,"AOI22_X1")==0)     return AOI22_X1;
    if (strcmp(cellName,"AOI22_X2")==0)     return AOI22_X2;
    if (strcmp(cellName,"AOI22_X4")==0)     return AOI22_X4;
    if (strcmp(cellName,"AOI221_X1")==0)    return AOI221_X1;
    if (strcmp(cellName,"AOI221_X2")==0)    return AOI221_X2;
    if (strcmp(cellName,"AOI221_X4")==0)    return AOI221_X4;
    if (strcmp(cellName,"AOI222_X1")==0)    return AOI222_X1;
    if (strcmp(cellName,"AOI222_X2")==0)    return AOI222_X2;
    if (strcmp(cellName,"AOI222_X4")==0)    return AOI222_X4;

/* -------- XOR / XNOR -------- */
    if (strcmp(cellName,"XOR2_X1")==0)      return XOR2_X1;
    if (strcmp(cellName,"XOR2_X2")==0)      return XOR2_X2;
    if (strcmp(cellName,"XNOR2_X1")==0)     return XNOR2_X1;
    if (strcmp(cellName,"XNOR2_X2")==0)     return XNOR2_X2;

/* -------- Flops / Latches --------------------------------- */
    if (strcmp(cellName,"DFF_X1")==0)       return DFF_X1;
    if (strcmp(cellName,"DFF_X2")==0)       return DFF_X2;
    if (strcmp(cellName,"DFFR_X1")==0)      return DFFR_X1;
    if (strcmp(cellName,"DFFR_X2")==0)      return DFFR_X2;
    if (strcmp(cellName,"DFFS_X1")==0)      return DFFS_X1;
    if (strcmp(cellName,"DFFS_X2")==0)      return DFFS_X2;
    if (strcmp(cellName,"DFFRS_X1")==0)     return DFFRS_X1;
    if (strcmp(cellName,"DFFRS_X2")==0)     return DFFRS_X2;
    if (strcmp(cellName,"SDFF_X1")==0)      return SDFF_X1;
    if (strcmp(cellName,"SDFF_X2")==0)      return SDFF_X2;
    if (strcmp(cellName,"SDFFR_X1")==0)     return SDFFR_X1;
    if (strcmp(cellName,"SDFFR_X2")==0)     return SDFFR_X2;
    if (strcmp(cellName,"SDFFS_X1")==0)     return SDFFS_X1;
    if (strcmp(cellName,"SDFFS_X2")==0)     return SDFFS_X2;
    if (strcmp(cellName,"SDFFRS_X1")==0)    return SDFFRS_X1;
    if (strcmp(cellName,"SDFFRS_X2")==0)    return SDFFRS_X2;
    if (strcmp(cellName,"DLH_X1")==0)       return DLH_X1;
    if (strcmp(cellName,"DLH_X2")==0)       return DLH_X2;
    if (strcmp(cellName,"DLL_X1")==0)       return DLL_X1;
    if (strcmp(cellName,"DLL_X2")==0)       return DLL_X2;
    if (strcmp(cellName,"TLAT_X1")==0)      return TLAT_X1;

/* -------- Multiplexer / Math cells ------------------------ */
    if (strcmp(cellName,"MUX2_X1")==0)      return MUX2_X1;
    if (strcmp(cellName,"MUX2_X2")==0)      return MUX2_X2;
    if (strcmp(cellName,"FA_X1")==0)        return FA_X1;
    if (strcmp(cellName,"HA_X1")==0)        return HA_X1;

/* -------- Buffers / Clock buffers ------------------------- */
    if (strcmp(cellName,"BUF_X1")==0)       return BUF_X1;
    if (strcmp(cellName,"BUF_X2")==0)       return BUF_X2;
    if (strcmp(cellName,"BUF_X4")==0)       return BUF_X4;
    if (strcmp(cellName,"BUF_X8")==0)       return BUF_X8;
    if (strcmp(cellName,"BUF_X16")==0)      return BUF_X16;
    if (strcmp(cellName,"BUF_X32")==0)      return BUF_X32;
    if (strcmp(cellName,"CLKBUF_X1")==0)    return CLKBUF_X1;
    if (strcmp(cellName,"CLKBUF_X2")==0)    return CLKBUF_X2;
    if (strcmp(cellName,"CLKBUF_X3")==0)    return CLKBUF_X3;

/* -------- Clock gating / Tri-state ------------------------ */
    if (strcmp(cellName,"CLKGATE_X1")==0)   return CLKGATE_X1;
    if (strcmp(cellName,"CLKGATE_X2")==0)   return CLKGATE_X2;
    if (strcmp(cellName,"CLKGATE_X4")==0)   return CLKGATE_X4;
    if (strcmp(cellName,"CLKGATE_X8")==0)   return CLKGATE_X8;
    if (strcmp(cellName,"CLKGATETST_X1")==0) return CLKGATETST_X1;
    if (strcmp(cellName,"CLKGATETST_X2")==0) return CLKGATETST_X2;
    if (strcmp(cellName,"CLKGATETST_X4")==0) return CLKGATETST_X4;
    if (strcmp(cellName,"CLKGATETST_X8")==0) return CLKGATETST_X8;
    if (strcmp(cellName,"TBUF_X1")==0)      return TBUF_X1;
    if (strcmp(cellName,"TBUF_X2")==0)      return TBUF_X2;
    if (strcmp(cellName,"TBUF_X4")==0)      return TBUF_X4;
    if (strcmp(cellName,"TBUF_X8")==0)      return TBUF_X8;
    if (strcmp(cellName,"TBUF_X16")==0)     return TBUF_X16;
    if (strcmp(cellName,"TINV_X1")==0)      return TINV_X1;

/* -------- Special / Fill / Antenna ------------------------ */
    if (strcmp(cellName,"ANTENNA_X1")==0)   return ANTENNA_X1;
    if (strcmp(cellName,"FILLCELL_X1")==0)  return FILLCELL_X1;
    if (strcmp(cellName,"FILLCELL_X2")==0)  return FILLCELL_X2;
    if (strcmp(cellName,"FILLCELL_X4")==0)  return FILLCELL_X4;
    if (strcmp(cellName,"FILLCELL_X8")==0)  return FILLCELL_X8;
    if (strcmp(cellName,"FILLCELL_X16")==0) return FILLCELL_X16;
    if (strcmp(cellName,"FILLCELL_X32")==0) return FILLCELL_X32;


    return UNKNOWN;
}

/*----------------------------------*
 * createNetlist
 *  - type: TYPE_INPUT, TYPE_OUTPUT, TYPE_WIRE, or getGateType(...)
 *  - instName: optional
 *----------------------------------*/
netlist* createNetlist(module *m, int type, const char *instName)
{
    if(m->nnl >= MAX_NETLIST){
        fprintf(stderr,"ERROR: netlistArr is full\n");
        return NULL;
    }
    netlist *nl = (netlist*)malloc(sizeof(netlist));
    if (nl == NULL) {
        fprintf(stderr, "malloc failed at connect allocation at nl\n");
        exit(1);
    }
    memset(nl,0,sizeof(netlist));

    nl->num  = m->nnl;
    nl->type = type;
    if(instName){
        nl->instName = strdup(instName);
    }

    m->netlistArr[m->nnl] = nl;
    m->nnl++;

    /* カウント: input, output, ff */
    if(type == TYPE_INPUT){
        m->npi++;
    } else if(type == TYPE_OUTPUT){
        m->npo++;
    } else {
        /* ゲートの場合に FF かどうか判定 */
        if(type==SDFFR_X1 || type==SDFFR_X2 || type==DFF_X1){
            m->nff++;
        }
    }
    return nl;
}

/*----------------------------------*
 * allocPortsForNetlist
 *----------------------------------*/
void allocPortsForNetlist(netlist *nl, int maxFi, int maxFo)
{
    nl->fin  = (port**)calloc(maxFi, sizeof(port*));
    if (nl->fin == NULL) {
        fprintf(stderr, "malloc failed at connect allocation at nl->fout\n");
        exit(1);
    }
    nl->fout = (port**)calloc(maxFo, sizeof(port*));
    if (nl->fout == NULL) {
        fprintf(stderr, "malloc failed at connect allocation at nl->fout\n");
        exit(1);
    }
}

/*----------------------------------*
 * addFaninPort
 *----------------------------------*/
int addFaninPort(netlist *nl, const char *portName, const char *netName)
{
    if(!nl) return -1;
    if(!nl->fin){
        allocPortsForNetlist(nl, MAX_PORT, MAX_PORT);
    }
    int idx = nl->nfi;
    if(idx >= MAX_PORT){
        fprintf(stderr,"ERROR: max fanin exceeded\n");
        return -1;
    }
    port *p = (port*)malloc(sizeof(port));
    if (p == NULL) {
        fprintf(stderr, "malloc failed at connect allocation at *p\n");
        exit(1);
    }
    memset(p,0,sizeof(port));
    p->nl       = nl;
    p->portName = strdup(portName);
    p->netName  = strdup(netName);

    nl->fin[idx] = p;
    nl->nfi++;
    return 0;
}

/*----------------------------------*
 * addFanoutPort
 *----------------------------------*/
int addFanoutPort(netlist *nl, const char *portName, const char *netName)
{
    if(!nl) return -1;
    if(!nl->fout){
        allocPortsForNetlist(nl, MAX_PORT, MAX_PORT);
    }
    int idx = nl->nfo;
    if(idx >= MAX_PORT){
        fprintf(stderr,"ERROR: max fanout exceeded\n");
        return -1;
    }
    port *p = (port*)malloc(sizeof(port));
    if (p == NULL) {
        fprintf(stderr, "malloc failed at connect allocation at *p\n");
        exit(1);
    }
    memset(p,0,sizeof(port));
    p->nl       = nl;
    p->portName = strdup(portName);
    p->netName  = strdup(netName);

    nl->fout[idx] = p;
    nl->nfo++;
    return 0;
}

/*----------------------------------*
 * printModule
 *----------------------------------*/
void printModule(module *m, FILE *fp)
{
    fprintf(fp, "=== Module info ===\n");
    fprintf(fp, " netlist count = %d\n", m->nnl);
    fprintf(fp, " npi=%d, npo=%d, nff=%d\n", m->npi, m->npo, m->nff);

    for(int i=0; i<m->nnl; i++){
        netlist *nl = m->netlistArr[i];
        if(!nl) continue;
        fprintf(fp, "---------------------------------------------------------------------------\n");
        if(nl->type == 99999 || nl->type == 999999 || nl->type == 9999999){
            fprintf(fp, " [signal  #%d] type=%d, nfi=%d, nfo=%d, signal=%s\n",
                   nl->num, nl->type, nl->nfi, nl->nfo,
                   nl->instName ? nl->instName : "(null)");
        }

        else{
            fprintf(fp, " [netlist #%d] type=%d, nfi=%d, nfo=%d, inst=%s\n",
                   nl->num, nl->type, nl->nfi, nl->nfo,
                   nl->instName ? nl->instName : "(null)");
        }

        /* fin */
        for(int fi=0; fi<nl->nfi; fi++){
            port *p = nl->fin[fi];
            if(p){
                const char *Sig2Inst = "(null)";

                if (p->connCount > 0 && p->connect[0] && p->connect[0]->nl) {
                    Sig2Inst = p->connect[0]->nl->instName;  // 接続先のインスタンス名を取得
                }

                if(nl->type == 99999 || nl->type == 999999 || nl->type == 9999999){
                    /*fprintf(fp, "   ###fanin[%d] of [signal  #%d]: port=%s, signal=%s, inst=%s\n",
                            fi, nl->num, p->portName, p->netName, Sig2Inst);*/
                }
                else{
                    fprintf(fp, "   ###fanin[%d] of [netlist #%d]: port=%s, signal=%s, inst=%s\n",
                            fi, nl->num, p->portName, p->netName, p->nl->instName);
                }


                for (int j = 0; j < p->connCount; j++) {
                    if (j == 0) {
                        //fprintf(fp, "   |\n");
                        fprintf(fp, "   ↓\n");
                    }

                    port *conn = p->connect[j];
                    if (conn && conn->nl && conn->nl->instName) {
                        //fprintf(fp,"%dポート目です\n",j);
                        fprintf(fp, "   --------> Prev Port[%d]:  instance = %s, port = %s, net = %s\n",
                            j, conn->nl->instName, conn->portName, conn->netName);
                    } else {
                        fprintf(fp, "   --------> Prev Port[%d]:  (接続先ポート不明 or NULL)\n", j);
                    }

                    if (j == (p->connCount - 1)) {
                        fprintf(fp, "\n");
                    }
                }



            }
        }
        /* fout */
        for(int fo=0; fo<nl->nfo; fo++){
            port *p = nl->fout[fo];
            if(p){
                const char *Sig2Inst = "(null)";

                if (p->connCount > 0 && p->connect[0] && p->connect[0]->nl) {
                    Sig2Inst = p->connect[0]->nl->instName;  // 接続先のインスタンス名を取得
                }

                if(nl->type == 99999 || nl->type == 999999 || nl->type == 9999999){
                    //fprintf(fp, "   ###fanout[%d] of [signal  #%d]: port=%s, signal=%s, inst=%s\n",
                            //fo, nl->num, p->portName, p->netName,  Sig2Inst);
                }
                else{
                    fprintf(fp, "   ###fanout[%d] of [netlist #%d]: port=%s, signal=%s, inst=%s\n",
                            fo, nl->num, p->portName, p->netName,  p->nl->instName);
                }
                /*for(int j = 0; j < p->connCount; j++){
                    if(j == 0){
                        fprintf(fp, "   |\n");
                        fprintf(fp, "   ↓\n");
                    }
                    fprintf(fp, "   --------> Next Port[%d]:  instance = %s, port = %s, net = %s\n",
                       j, p->connect[j]->nl->instName, p->connect[j]->portName,
                       p->connect[j]->netName);
                    if(j == ((p->connCount) - 1)){
                        fprintf(fp, "\n");
                    }
                }*/

                for (int j = 0; j < p->connCount; j++) {
                    //fprintf(fp, "%d\n", j);
                    if (j == 0) {
                        //fprintf(fp, "   |\n");
                        fprintf(fp, "   ↓\n");
                    }

                    port *conn = p->connect[j];
                    if (conn && conn->nl && conn->nl->instName) {
                        fprintf(fp, "   --------> Next Port[%d]:  instance = %s, port = %s, net = %s\n",
                            j, conn->nl->instName, conn->portName, conn->netName);
                    } else {
                        fprintf(fp, "   --------> Next Port[%d]:  (接続先ポート不明 or NULL)\n", j);
                    }



                    if (j == (p->connCount - 1)) {
                        fprintf(fp, "\n");
                    }
                }
                //fprintf(fp, "NEXTPORTEND\n");


            }
        }
    }
    fprintf(fp, "=== End of module info ===\n");
}

/*----------------------------------*
 * freeModule
 *----------------------------------*/
void freeModule(module *m)
{
    for(int i=0; i<m->nnl; i++){
        netlist *nl = m->netlistArr[i];
        if(!nl) continue;

        /* free fanin */
        for(int fi=0; fi<nl->nfi; fi++){
            port *pp = nl->fin[fi];
            if(pp){
                if (pp->portName) free(pp->portName);
                if (pp->netName)  free(pp->netName);
                if (pp->connect)  free(pp->connect);
                free(pp);
            }
        }
        free(nl->fin);

        /* free fanout */
        for(int fo=0; fo<nl->nfo; fo++){
            port *pp = nl->fout[fo];
            if(pp){
                if (pp->portName) free(pp->portName);
                if (pp->netName)  free(pp->netName);
                if (pp->connect)  free(pp->connect);
                //free(pp->portName);
                //free(pp->netName);
                //free(pp->connect);
                free(pp);
            }
        }
        free(nl->fout);

        free(nl->instName);
        free(nl);
        m->netlistArr[i] = NULL;
    }
    m->nnl=0;
    memset(m, 0, sizeof(module));
}



/*void buildConnPrev(module *m) {
    for (int i = 0; i < m->nnl; i++) {
        netlist *nl = m->netlistArr[i];
        for (int j = 0; j < nl->nfo; j++) {
            port *outPort = nl->fout[j];

            for (int k = 0; k < outPort->connCount; k++) {
                port *destPort = outPort->connNext[k];

                // connPrev[] に出力元ポート outPort を追加
                int n = destPort->connPrevCount;

                // メモリ再確保（1個ずつ拡張）
                destPort->connPrev = (port**)realloc(destPort->connPrev, sizeof(port*) * (n + 1));
                destPort->connPrev[n] = outPort;
                destPort->connPrevCount++;
            }
        }
    }
}*/





/*void buildPortConnections(module *m) {
    // net名ごとに出力ポートと入力ポート群をマップ（簡易版）
    typedef struct {
        char *netName;
        port *src;       // 出力ポート
        port **dsts;     // 入力ポート配列
        int dstCount;
    } NetMap;

    NetMap map[2048];
    int mapCount = 0;

    for (int i = 0; i < m->nnl; i++) {
        netlist *nl = m->netlistArr[i];
        for (int j = 0; j < nl->nfo; j++) {
            port *p = nl->fout[j];
            if (!p || !p->netName) continue;

            int found = -1;
            for (int k = 0; k < mapCount; k++) {
                if (strcmp(map[k].netName, p->netName) == 0) {
                    found = k;
                    break;
                }
            }
            if (found == -1) {
                found = mapCount++;
                map[found].netName = p->netName;
                map[found].src = p;
                map[found].dsts = NULL;
                map[found].dstCount = 0;
            } else {
                map[found].src = p;  // 出力ポート上書き
            }
        }

        for (int j = 0; j < nl->nfi; j++) {
            port *p = nl->fin[j];
            if (!p || !p->netName) continue;

            int found = -1;
            for (int k = 0; k < mapCount; k++) {
                if (strcmp(map[k].netName, p->netName) == 0) {
                    found = k;
                    break;
                }
            }
            if (found == -1) {
                found = mapCount++;
                map[found].netName = p->netName;
                map[found].src = NULL;
                map[found].dsts = NULL;
                map[found].dstCount = 0;
            }

            map[found].dsts = realloc(map[found].dsts, sizeof(port*) * (map[found].dstCount + 1));
            map[found].dsts[map[found].dstCount++] = p;
        }
    }

    // 接続情報を connect[] に設定（双方向）
    for (int i = 0; i < mapCount; i++) {
        if (map[i].src) {
            port *src = map[i].src;
            src->connect = malloc(sizeof(port*) * map[i].dstCount);
            for (int j = 0; j < map[i].dstCount; j++) {
                src->connect[j] = map[i].dsts[j];
            }
            src->connCount = map[i].dstCount;
        }

        for (int j = 0; j < map[i].dstCount; j++) {
            port *dst = map[i].dsts[j];
            dst->connect = malloc(sizeof(port*)); // 常に1つだけ
            dst->connect[0] = map[i].src;
            dst->connCount = 1;
        }

        free(map[i].dsts);
    }
}
*/






/*void connectExternalPorts(module *m) {
    if (!m) return;

    for (int i = 0; i < m->nnl; i++) {
        netlist *nl = m->netlistArr[i];
        if (!nl) continue;

        // --- 外部入力 ---
        if (nl->type == TYPE_INPUT) {
            for (int j = 0; j < m->nnl; j++) {
                netlist *other = m->netlistArr[j];
                if (!other || other == nl) continue;

                for (int k = 0; k < other->nfi; k++) {
                    port *target = other->fin[k];
                    if (target && strcmp(target->netName, nl->instName) == 0) {
                        if (!nl->fout) allocPortsForNetlist(nl, MAX_PORT, MAX_PORT);
                        int idx = nl->nfo++;

                        // 新しく port を作成
                        port *outp = (port *)malloc(sizeof(port));
                        memset(outp, 0, sizeof(port));
                        outp->nl = nl; // 自分自身（外部入力）
                        outp->portName = strdup(target->portName);
                        outp->netName = strdup(target->netName);
                        nl->fout[idx] = outp;

                        // connect[] に相手を追加
                        outp->connect = (port **)malloc(sizeof(port *));
                        outp->connect[0] = target;
                        outp->connCount = 1;
                    }
                }
            }
        }

        // --- 外部出力 ---
        else if (nl->type == TYPE_OUTPUT) {
            for (int j = 0; j < m->nnl; j++) {
                netlist *other = m->netlistArr[j];
                if (!other || other == nl) continue;

                for (int k = 0; k < other->nfo; k++) {
                    port *source = other->fout[k];
                    if (source && strcmp(source->netName, nl->instName) == 0) {
                        if (!nl->fin) allocPortsForNetlist(nl, MAX_PORT, MAX_PORT);
                        int idx = nl->nfi++;

                        // 新しく port を作成
                        port *inp = (port *)malloc(sizeof(port));
                        memset(inp, 0, sizeof(port));
                        inp->nl = nl; // 自分自身（外部出力）
                        inp->portName = strdup(source->portName);
                        inp->netName = strdup(source->netName);
                        nl->fin[idx] = inp;

                        // source → inp に connect
                        if (!source->connect) {
                            source->connect = (port **)malloc(sizeof(port *));
                        } else {
                            source->connect = (port **)realloc(source->connect, sizeof(port *) * (source->connCount + 1));
                        }
                        source->connect[source->connCount++] = inp;
                    }
                }
            }
        }
    }
}*/




/*
/*
 * connectExternalPorts:
 *   - module内に存在する
 *       TYPE_INPUT (外部入力),
 *       TYPE_OUTPUT(外部出力),
 *       TYPE_WIRE  (ワイヤ)
 *     の netlist(以下「シグナル」と呼ぶ)と、
 *     ゲート(netlist->type != 20,21,22)のポートを
 *     netName 一致で結ぶ。
 *
 *   - TYPE_INPUT, TYPE_WIRE → ドライバ (fout) を作り、ゲートのファンインへ接続
 *   - TYPE_OUTPUT            → シンク   (fin)  を作り、ゲートのファンアウトを受ける
 *
 *   (必要に応じて別の方針や拡張も考えられます)
 */
/*void connectExternalPorts(module *m)
{
    if (!m) return;

    for (int i = 0; i < m->nnl; i++) {
        netlist *sig = m->netlistArr[i];
        if (!sig) continue;

        /*---------------------------
         * 外部入力 or ワイヤの場合
         *   → シグナルを「ドライバ」扱い (fout)
         *--------------------------*/
  //      if (sig->type == TYPE_INPUT || sig->type == TYPE_WIRE) {
            /*
             * このシグナルが持つ netName は sig->instName に格納されている想定
             *  (例: instName="A","B","reset" 等)
             *  → ゲート側のファンインポート port->netName と一致すれば接続。
             */

            // ゲートを全走査
    /*        for (int j = 0; j < m->nnl; j++) {
                netlist *gate = m->netlistArr[j];
                if (!gate) continue;
                // ゲートとは「type != 20,21,22」とする
                if (gate->type == TYPE_INPUT ||
                    gate->type == TYPE_OUTPUT ||
                    gate->type == TYPE_WIRE) {
                    continue; 
                }

                // ゲートのファンインポートを調べる
                for (int fi = 0; fi < gate->nfi; fi++) {
                    port *gIn = gate->fin[fi];
                    if (!gIn || !gIn->netName || !sig->instName) continue;

                    // netName がシグナル名と一致するならリンク
                    if (strcmp(gIn->netName, sig->instName) == 0) {
                        // シグナル側(netlist *sig)にファンアウトポートを作る
                        if (!sig->fout) {
                            allocPortsForNetlist(sig, 0, MAX_PORT);
                        }
                        int idx = sig->nfo++;
                        port *pOut = (port *)calloc(1, sizeof(port));
                        pOut->nl       = sig;   // 所属はシグナルの netlist
                        pOut->portName = strdup(gIn->portName);
                        pOut->netName  = strdup(gIn->netName);
                        sig->fout[idx] = pOut;

                        // 双方向のconnect[] に登録
                        // シグナルのポート → ゲートの入力ポート
                        pOut->connect = (port **)malloc(sizeof(port *));
                        pOut->connect[0] = gIn;
                        pOut->connCount  = 1;

                        // ゲート入力ポートにもシグナルを追加入力 (reallocで拡張)
                        //   必要なら gIn->connect[] に pOut を入れます。
                        if (!gIn->connect) {
                            gIn->connect = (port**)malloc(sizeof(port*));
                            gIn->connect[0] = pOut;
                            gIn->connCount  = 1;
                        } else {
                            gIn->connect = (port**)realloc(gIn->connect, sizeof(port*)*(gIn->connCount+1));
                            gIn->connect[gIn->connCount++] = pOut;
                        }
                    }
                }
            }
        }
*/
        /*---------------------------
         * 外部出力の場合
         *   → シグナルを「シンク」扱い (fin)
         *--------------------------*/
  /*      else if (sig->type == TYPE_OUTPUT) {
            // ゲートを全走査
            for (int j = 0; j < m->nnl; j++) {
                netlist *gate = m->netlistArr[j];
                if (!gate) continue;
                if (gate->type == TYPE_INPUT ||
                    gate->type == TYPE_OUTPUT ||
                    gate->type == TYPE_WIRE) {
                    continue;
                }

                // ゲートのファンアウトポートを調べる
                for (int fo = 0; fo < gate->nfo; fo++) {
                    port *gOut = gate->fout[fo];
                    if (!gOut || !gOut->netName || !sig->instName) continue;

                    // netName がシグナル名と一致 → 接続
                    if (strcmp(gOut->netName, sig->instName) == 0) {
                        // シグナル側(netlist *sig)にファンインポートを作る
                        if (!sig->fin) {
                            allocPortsForNetlist(sig, MAX_PORT, 0);
                        }
                        int idx = sig->nfi++;
                        port *pIn = (port *)calloc(1, sizeof(port));
                        pIn->nl       = sig;
                        pIn->portName = strdup(gOut->portName);
                        pIn->netName  = strdup(gOut->netName);
                        sig->fin[idx] = pIn;

                        // 双方向のconnect[] に登録
                        // ゲートの出力ポート gOut → シグナルの入力ポート pIn
                        if (!gOut->connect) {
                            gOut->connect = (port **)malloc(sizeof(port*));
                            gOut->connect[0] = pIn;
                            gOut->connCount  = 1;
                        } else {
                            gOut->connect = (port**)realloc(gOut->connect, sizeof(port*)*(gOut->connCount+1));
                            gOut->connect[gOut->connCount++] = pIn;
                        }

                        pIn->connect = (port **)malloc(sizeof(port*));
                        pIn->connect[0] = gOut;
                        pIn->connCount  = 1;
                    }
                }
            }
        }
    }
}*/





/*
 * connectExternalPorts:
 *   - module 内の各 netlist で、
 *       TYPE_INPUT  (外部入力)
 *       TYPE_OUTPUT (外部出力)
 *       TYPE_WIRE   (ワイヤ)
 *     を “シグナル” とみなし、
 *     それぞれがゲートの入力/出力ポートと同じ netName を持つ場合に相互接続する。
 *
 *   - TYPE_INPUT, TYPE_WIRE はドライバ側 (fout) を1個作り、
 *     そこに複数ゲートのファンインポートをぶら下げる。
 *
 *   - TYPE_OUTPUT はシンク側 (fin) を1個作り、
 *     そこに複数ゲートのファンアウトポートをぶら下げる。
 *
 * 【特徴】
 *   1) シグナル(netlist)につき、ポートは1つのみ (fout[0] or fin[0])
 *   2) ファンアウト先やファンイン元が複数ある場合は、
 *      その “1つのポート” の connect[] を拡張して繋ぐ
 *   3) ゲート側のポートにも双方向に connect[] を更新
 */

/*void connectExternalPorts(module *m)
{
    if (!m) return;

    // モジュール内の全 netlist を走査
    for (int i = 0; i < m->nnl; i++) {
        netlist *sig = m->netlistArr[i];
        if (!sig) continue;

        int t = sig->type;
        //======================================
        // (A) TYPE_INPUT or TYPE_WIRE → ドライバ側
        //======================================
        if (t == TYPE_INPUT || t == TYPE_WIRE) {
            // まだ “出力ポート” (fout[0]) がなければ作る
            if (sig->nfo == 0) {
                // ports確保 (ファンアウトは1個作る)
                allocPortsForNetlist(sig, 0, 1);
                sig->nfo = 1;

                // 実際のポート構造体作成
                port *drv = (port*)calloc(1, sizeof(port));
                drv->nl = sig;  // 所属netlistは “シグナル”
                // portName は仮文字、 netName はシグナル名にしておく
                drv->portName  = strdup("--");
                drv->netName   = strdup(sig->instName ? sig->instName : "(null)");
                drv->connect   = NULL;  // connect[] は必要に応じてrealloc
                drv->connCount = 0;
                // sig->fout[0] に設定
                sig->fout[0] = drv;
            }

            // “シグナルの出力ポート”(=1つだけ) へのポインタ
            port *sigOut = sig->fout[0];

            // ゲートを全走査し、ファンインを検索
            for (int j = 0; j < m->nnl; j++) {
                netlist *gate = m->netlistArr[j];
                if (!gate) continue;

                // ゲート判定 (type != 20,21,22)
                if (gate->type == TYPE_INPUT ||
                    gate->type == TYPE_OUTPUT ||
                    gate->type == TYPE_WIRE) {
                    continue;
                }

                // ゲートのファンインポートを調べる
                for (int fi = 0; fi < gate->nfi; fi++) {
                    port *gIn = gate->fin[fi];
                    if (!gIn || !gIn->netName || !sig->instName) continue;

                    // netName がシグナル名と一致 → 接続
                    if (strcmp(gIn->netName, sig->instName) == 0) {
                        // シグナル側: sigOut->connect に gIn を追加
                        sigOut->connect = (port**)realloc(
                            sigOut->connect,
                            sizeof(port*) * (sigOut->connCount + 1)
                        );
                        sigOut->connect[sigOut->connCount++] = gIn;

                        // ゲート側: gIn->connect に sigOut を追加 (双方向)
                        if (!gIn->connect) {
                            gIn->connect = (port**)malloc(sizeof(port*));
                            gIn->connect[0] = sigOut;
                            gIn->connCount  = 1;
                        } else {
                            gIn->connect = (port**)realloc(
                                gIn->connect,
                                sizeof(port*) * (gIn->connCount + 1)
                            );
                            gIn->connect[gIn->connCount++] = sigOut;
                        }
                    }
                }
            }
        }
        //======================================
        // (B) TYPE_OUTPUT → シンク側
        //======================================
        else if (t == TYPE_OUTPUT) {
            // まだ “入力ポート” (fin[0]) がなければ作る
            if (sig->nfi == 0) {
                allocPortsForNetlist(sig, 1, 0);
                sig->nfi = 1;

                port *snk = (port*)calloc(1,sizeof(port));
                snk->nl = sig;
                snk->portName  = strdup("--");
                snk->netName   = strdup(sig->instName ? sig->instName : "(null)");
                snk->connect   = NULL;
                snk->connCount = 0;
                sig->fin[0] = snk;
            }

            port *sigIn = sig->fin[0];

            // ゲートを全走査し、ファンアウトを検索
            for (int j = 0; j < m->nnl; j++) {
                netlist *gate = m->netlistArr[j];
                if (!gate) continue;
                if (gate->type == TYPE_INPUT ||
                    gate->type == TYPE_OUTPUT ||
                    gate->type == TYPE_WIRE) {
                    continue;
                }

                for (int fo = 0; fo < gate->nfo; fo++) {
                    port *gOut = gate->fout[fo];
                    if(!gOut || !gOut->netName || !sig->instName) continue;

                    if (strcmp(gOut->netName, sig->instName) == 0) {
                        // シグナルの入力ポート sigIn->connect に gOut を追加
                        sigIn->connect = (port**)realloc(
                            sigIn->connect,
                            sizeof(port*)*(sigIn->connCount+1)
                        );
                        sigIn->connect[sigIn->connCount++] = gOut;

                        // ゲートの出力ポートにもリンク
                        if(!gOut->connect){
                            gOut->connect = (port**)malloc(sizeof(port*));
                            gOut->connect[0] = sigIn;
                            gOut->connCount  = 1;
                        } else {
                            gOut->connect = (port**)realloc(
                                gOut->connect,
                                sizeof(port*)*(gOut->connCount+1)
                            );
                            gOut->connect[gOut->connCount++] = sigIn;
                        }
                    }
                }
            }
        }
    } // end-for(m->nnl)
}
*/





/*
 * connectExternalPorts:
 *   - "ゲート同士" は既につながっている前提
 *   - ここでは "入出力(type=20,21)" ↔ "ゲート" をつなぐ
 *   - wire(type=22) は無視して何もしない
 *
 *   処理方針:
 *     (A) type=20 (外部入力) → ドライバ
 *         - netlist->fout[0] に1ポートだけ作り (まだ無ければ)
 *         - 同じ netName のゲート入力を connect[] でリンク
 *     (B) type=21 (外部出力) → シンク
 *         - netlist->fin[0] に1ポートだけ作り (まだ無ければ)
 *         - 同じ netName のゲート出力を connect[] でリンク
 */
/*void connectExternalPorts(module *m)
{
    if(!m) return;

    for(int i=0; i < m->nnl; i++){
        netlist *ext = m->netlistArr[i];
        if(!ext) continue;
*/
        // ==========================
        // スキップ: wire(type=22)
        // ==========================
  /*      if(ext->type == TYPE_WIRE) {
            // 無視
            continue;
        }
*/
        // ==========================
        // (A) 外部入力(type=20)
        // ==========================
  //      if(ext->type == TYPE_INPUT) {
            // 1) もしまだ "fout[0]" が無ければ確保
    //        if(ext->nfo == 0) {
                // ファンアウトを1個だけ確保
        //        allocPortsForNetlist(ext, 0, 1);
      //          ext->nfo = 1;

                // ポート生成
          /*      port *drv = (port*)calloc(1, sizeof(port));
                drv->nl       = ext;
                drv->portName = strdup("--"); // 仮の名前
                drv->netName  = strdup(ext->instName ? ext->instName : "(null)");
                drv->connect  = NULL;
                drv->connCount= 0;
                ext->fout[0]  = drv;
            }
            // シグナル側のドライバポート
            port *drvPort = ext->fout[0];

            // 2) ゲートを走査し、同じ netName を持つ "入力ポート" を探す
            for(int j=0; j < m->nnl; j++){
                netlist *gate = m->netlistArr[j];
                if(!gate) continue;
                // ゲートかどうか確認 (type != 20,21,22)
                if(gate->type==TYPE_INPUT ||
                   gate->type==TYPE_OUTPUT ||
                   gate->type==TYPE_WIRE)
                {
                    // ゲートでなければ無視
                    continue;
                }

                // ゲートのファンインを走査
                for(int fi=0; fi < gate->nfi; fi++){
                    port *gIn = gate->fin[fi];
                    if(!gIn || !gIn->netName) continue;

                    // netName 一致なら接続
                    if(ext->instName && strcmp(gIn->netName, ext->instName)==0) {
                        // シグナルのドライバポート → gIn
                        drvPort->connect = (port**)realloc(
                            drvPort->connect,
                            sizeof(port*)*(drvPort->connCount+1)
                        );
                        drvPort->connect[drvPort->connCount++] = gIn;

                        // 逆方向
                        if(!gIn->connect){
                            gIn->connect = (port**)malloc(sizeof(port*));
                            gIn->connect[0] = drvPort;
                            gIn->connCount = 1;
                        } else {
                            gIn->connect = (port**)realloc(
                                gIn->connect,
                                sizeof(port*)*(gIn->connCount+1)
                            );
                            gIn->connect[gIn->connCount++] = drvPort;
                        }
                    }
                }
            }
        }

        // ==========================
        // (B) 外部出力(type=21)
        // ==========================
        else if(ext->type == TYPE_OUTPUT) {
            // 1) もしまだ "fin[0]" が無ければ確保
            if(ext->nfi == 0) {
                allocPortsForNetlist(ext, 1, 0);
                ext->nfi = 1;

                // ポート生成
                port *snk = (port*)calloc(1, sizeof(port));
                snk->nl       = ext;
                snk->portName = strdup("--");
                snk->netName  = strdup(ext->instName ? ext->instName : "(null)");
                snk->connect  = NULL;
                snk->connCount= 0;
                ext->fin[0]   = snk;
            }
            // シグナル側の入力ポート
            port *snkPort = ext->fin[0];

            // 2) ゲートを走査し、同じ netName を持つ "出力ポート" を探す
            for(int j=0; j < m->nnl; j++){
                netlist *gate = m->netlistArr[j];
                if(!gate) continue;
                // ゲートかどうか
                if(gate->type==TYPE_INPUT ||
                   gate->type==TYPE_OUTPUT ||
                   gate->type==TYPE_WIRE)
                {
                    continue;
                }

                // ファンアウトを走査
                for(int fo=0; fo < gate->nfo; fo++){
                    port *gOut = gate->fout[fo];
                    if(!gOut || !gOut->netName) continue;

                    // netName 一致なら接続
                    if(ext->instName && strcmp(gOut->netName, ext->instName)==0) {
                        // ゲートの出力 → シグナルの入力ポート
                        snkPort->connect = (port**)realloc(
                            snkPort->connect,
                            sizeof(port*)*(snkPort->connCount+1)
                        );
                        snkPort->connect[ snkPort->connCount++ ] = gOut;

                        // 逆方向
                        if(!gOut->connect){
                            gOut->connect = (port**)malloc(sizeof(port*));
                            gOut->connect[0] = snkPort;
                            gOut->connCount = 1;
                        } else {
                            gOut->connect = (port**)realloc(
                                gOut->connect,
                                sizeof(port*)*(gOut->connCount+1)
                            );
                            gOut->connect[gOut->connCount++] = snkPort;
                        }
                    }
                }
            }
        }

        // 他に何もせずループ続行
    }
}
*/




/*
 * buildPortConnections:
 *   - ゲート(type != 20,21,22) 同士を netName で接続
 *   - wire(type=22) や外部入出力(type=20,21) はドライバとして無視
 *   - ファンイン側もゲート入力のみ対象
 *   - もし “実ドライバ” がいなければ接続を作らない
 */
/*void buildPortConnections(module *m) {
    // net名ごとに 出力ポート(driver) と 入力ポート群(sinks) をマップ
    typedef struct {
        char  *netName;
        port  *src;       // ドライバ(ゲートのfoutポート)
        port **dsts;      // シンク(ゲートのfinポート) の配列
        int    dstCount;
    } NetMap;

    NetMap map[2048];
    int mapCount = 0;

    // 1) 全 netlist(ゲート) でファンアウトポートをマップ
    for (int i = 0; i < m->nnl; i++) {
        netlist *nl = m->netlistArr[i];
        if (!nl) continue;

        // ゲートかどうか( wire, input, outputはスキップ )
        if (nl->type == TYPE_WIRE ||
            nl->type == TYPE_INPUT ||
            nl->type == TYPE_OUTPUT) {
            continue; // ドライバにしない
        }

        // ゲートのファンアウトをスキャン
        for (int j = 0; j < nl->nfo; j++) {
            port *p = nl->fout[j];
            if (!p || !p->netName) continue;

            // netNameを探す
            int found = -1;
            for (int k = 0; k < mapCount; k++) {
                if (strcmp(map[k].netName, p->netName) == 0) {
                    found = k;
                    break;
                }
            }
            if (found == -1) {
                found = mapCount++;
                map[found].netName = p->netName;
                map[found].src     = p;     // このゲートoutポートをドライバに
                map[found].dsts    = NULL;
                map[found].dstCount= 0;
            } else {
                // もし複数ドライバがあり得るなら、
                // ここで配列追加するか、単純に上書きするか要検討
                map[found].src = p; // とりあえず上書き
            }
        }
    }

    // 2) 全 netlist(ゲート) でファンインポートをマップ
    for (int i = 0; i < m->nnl; i++) {
        netlist *nl = m->netlistArr[i];
        if (!nl) continue;

        // ゲートでなければスキップ
        if (nl->type == TYPE_WIRE ||
            nl->type == TYPE_INPUT ||
            nl->type == TYPE_OUTPUT) {
            continue; 
        }

        // ゲートのファンイン
        for (int j = 0; j < nl->nfi; j++) {
            port *p = nl->fin[j];
            if (!p || !p->netName) continue;

            // netNameを探す
            int found = -1;
            for (int k = 0; k < mapCount; k++) {
                if (strcmp(map[k].netName, p->netName) == 0) {
                    found = k;
                    break;
                }
            }
            if (found == -1) {
                found = mapCount++;
                map[found].netName = p->netName;
                map[found].src     = NULL;
                map[found].dsts    = NULL;
                map[found].dstCount= 0;
            }

            // append
            map[found].dsts = (port**)realloc(map[found].dsts,
                                   sizeof(port*)*(map[found].dstCount+1));
            map[found].dsts[ map[found].dstCount++ ] = p;
        }
    }

    // 3) connect[] に設定 (ゲート同士のみ)
    for (int i = 0; i < mapCount; i++) {
        port *driver = map[i].src;
        port **sinks = map[i].dsts;
        int scount   = map[i].dstCount;

        // 3a) ドライバがNULL → 何もしない
        //     (wireだけ, or input/outputだけ という状況)
        if (!driver) {
            free(sinks);
            continue;
        }

        // 3b) ドライバ->connect にまとめて sinks を入れる

        driver->connect = (port**)m
alloc(sizeof(port*) * scount);
        for (int s=0; s<scount; s++){
            driver->connect[s] = sinks[s];
        }
        driver->connCount = scount;

        // 3c) 各シンク->connect[0] = driver (常に1つだけ、という簡易方針)
        for (int s=0; s<scount; s++){
            port *dst = sinks[s];
            // 既に何か繋がっているかもしれないが、上書きするか要検討
            if (dst->connect) {
                free(dst->connect);
            }
            dst->connect = (port**)malloc(sizeof(port*));
            dst->connect[0] = driver;
            dst->connCount  = 1;
        }
        free(sinks);
    }
}
*/





/*--------------------------------------------------------------
 *  小ヘルパ: from → to のリンクを重複なしで追加
 *-------------------------------------------------------------*/
/*static void add_unique_connection(port *from, port *to)
{
    if (!from || !to) return;

    /* すでに to が入っているか確認 */
   /* for (int i = 0; i < from->connCount; ++i)
        if (from->connect[i] == to) return;            /* 既にある */

    /* まだ無ければ追加 */
    /*from->connect = realloc(from->connect,
                            sizeof(port*) * (from->connCount + 1));
    from->connect[from->connCount++] = to;
}

/*======================================================================
 *  connectExternalPorts  ―― 外部 I/O (type20/21) とゲートを接続
 *    ・INPUT はドライバ          ・OUTPUT はシンク
 *    ・既存 connect[] を壊さず append
 *====================================================================*/
/*void connectExternalPorts(module *m)
{
    if (!m) return;

    for (int i = 0; i < m->nnl; ++i) {
        netlist *ext = m->netlistArr[i];
        if (!ext) continue;

        /* wire(type22) は対象外 */
  /*      if (ext->type == TYPE_WIRE) continue;

        /*--------------------------------------------------*/
        /* (A) 外部入力 (type20) → ドライバ側                */
        /*--------------------------------------------------*/
    /*    if (ext->type == TYPE_INPUT) {
            /* ドライバポートを 1 つだけ確保（再利用可） */
      /*      if (ext->nfo == 0) {
                allocPortsForNetlist(ext, 0, 1);
                ext->nfo = 1;

                port *drv = calloc(1, sizeof(port));
                drv->nl       = ext;
                drv->portName = strdup("--");
                drv->netName  = strdup(ext->instName);
                drv->connect  = NULL;
                drv->connCount= 0;
                ext->fout[0]  = drv;
            }
            port *drvPort = ext->fout[0];

            /* 同じ netName を持つゲート入力ポートへリンク */
        /*    for (int j = 0; j < m->nnl; ++j) {
                netlist *gate = m->netlistArr[j];
                if (!gate) continue;
                if (gate->type == TYPE_INPUT ||
                    gate->type == TYPE_OUTPUT ||
                    gate->type == TYPE_WIRE) continue;        /* ゲート以外 */

          /*      for (int fi = 0; fi < gate->nfi; ++fi) {
                    port *gIn = gate->fin[fi];
                    if (!gIn || !gIn->netName) continue;
                    if (strcmp(gIn->netName, ext->instName) != 0) continue;

                    /* 双方向に追加 (重複チェック付き) */
           /*         add_unique_connection(drvPort, gIn);
                    add_unique_connection(gIn, drvPort);
                }
            }
        }*/

        /*--------------------------------------------------*/
        /* (B) 外部出力 (type21) → シンク側                  */
        /*--------------------------------------------------*/
        //else if (ext->type == TYPE_OUTPUT) {
            /* シンクポートを 1 つだけ確保（再利用可） */
          /*  if (ext->nfi == 0) {
                allocPortsForNetlist(ext, 1, 0);
                ext->nfi = 1;

                port *snk = calloc(1, sizeof(port));
                snk->nl       = ext;
                snk->portName = strdup("--");
                snk->netName  = strdup(ext->instName);
                snk->connect  = NULL;
                snk->connCount= 0;
                ext->fin[0]   = snk;
            }
            port *snkPort = ext->fin[0];

            /* 同じ netName を持つゲート出力ポートへリンク */
            /*for (int j = 0; j < m->nnl; ++j) {
                netlist *gate = m->netlistArr[j];
                if (!gate) continue;
                if (gate->type == TYPE_INPUT ||
                    gate->type == TYPE_OUTPUT ||
                    gate->type == TYPE_WIRE) continue;

                for (int fo = 0; fo < gate->nfo; ++fo) {
                    port *gOut = gate->fout[fo];
                    if (!gOut || !gOut->netName) continue;
                    if (strcmp(gOut->netName, ext->instName) != 0) continue;

                    add_unique_connection(snkPort, gOut);
                    add_unique_connection(gOut, snkPort);
                }
            }
        }
    }
}

/*======================================================================
 *  buildPortConnections  ―― ゲート ⇆ ゲート (type ≠ 20/21/22)
 *====================================================================*/
/*void buildPortConnections(module *m)
{
    typedef struct {
        char  *netName;
        port  *src;       /* ドライバ (1 本だけ想定)             */
  /*      port **dsts;      /* シンク配列                          */
    /*    int    dstCount;
    } NetMap;

    NetMap map[2048];
    int mapCount = 0;

    /*--------------------------------------------------*/
    /* 1) ゲートの fan-out をドライバとして収集          */
    /*--------------------------------------------------*/
    /*for (int i = 0; i < m->nnl; ++i) {
        netlist *nl = m->netlistArr[i];
        if (!nl) continue;
        if (nl->type == TYPE_INPUT ||
            nl->type == TYPE_OUTPUT ||
            nl->type == TYPE_WIRE) continue;

        for (int j = 0; j < nl->nfo; ++j) {
            port *p = nl->fout[j];
            if (!p || !p->netName) continue;

            int k;
            for (k = 0; k < mapCount; ++k)
                if (strcmp(map[k].netName, p->netName) == 0) break;

            if (k == mapCount) {                  /* 新規ネット */
           /*     map[k].netName  = p->netName;
                map[k].src      = p;
                map[k].dsts     = NULL;
                map[k].dstCount = 0;
                ++mapCount;
            } else {                              /* 2ドライバ目? 上書き */
             /*   map[k].src = p;
            }
        }
    }

    /*--------------------------------------------------*/
    /* 2) ゲートの fan-in をシンクとして収集            */
    /*--------------------------------------------------*/
    /*for (int i = 0; i < m->nnl; ++i) {
        netlist *nl = m->netlistArr[i];
        if (!nl) continue;
        if (nl->type == TYPE_INPUT ||
            nl->type == TYPE_OUTPUT ||
            nl->type == TYPE_WIRE) continue;

        for (int j = 0; j < nl->nfi; ++j) {
            port *p = nl->fin[j];
            if (!p || !p->netName) continue;

            int k;
            for (k = 0; k < mapCount; ++k)
                if (strcmp(map[k].netName, p->netName) == 0) break;

            if (k == mapCount) {                  /* ドライバ未登録 */
      /*          map[k].netName  = p->netName;
                map[k].src      = NULL;
                map[k].dsts     = NULL;
                map[k].dstCount = 0;
                ++mapCount;
            }
            map[k].dsts = realloc(map[k].dsts,
                                  sizeof(port*) * (map[k].dstCount + 1));
            map[k].dsts[ map[k].dstCount++ ] = p;
        }
    }

    /*--------------------------------------------------*/
    /* 3) 双方向 connect[] を張る                       */
    /*--------------------------------------------------*/
    /*for (int i = 0; i < mapCount; ++i) {
        port *drv   = map[i].src;
        port **sinks= map[i].dsts;
        int scount  = map[i].dstCount;

        if (!drv) {                       /* ドライバ無し → skip */
      //      free(sinks);
        //    continue;
        //}

        /* a) ドライバ → sinks 追加 */
        /*for (int s = 0; s < scount; ++s)
            add_unique_connection(drv, sinks[s]);

        /* b) sinks → ドライバ (常に 1 つ保持) */
        /*for (int s = 0; s < scount; ++s) {
            port *dst = sinks[s];
            if (dst->connCount == 0) {
                dst->connect = malloc(sizeof(port*));
                dst->connect[0] = drv;
                dst->connCount  = 1;
            } else if (dst->connect[0] != drv) {
                /* 既に別ドライバが入っていたら上書きポリシー */
          /*      dst->connect[0] = drv;
            }
        }
        free(sinks);
    }
}
*/



/*==============================================================*/
/*  1. 既存ネットを探すヘルパ                                   */
/*==============================================================*/
static netlist *findNet(module *m, const char *name)
{
    if (!m || !name) return NULL;
    for (int i = 0; i < m->nnl; ++i) {
        netlist *nl = m->netlistArr[i];
        if (nl && nl->instName && strcmp(nl->instName, name) == 0)
            return nl;
    }
    return NULL;                 /* 無ければ NULL */
}

/*==============================================================*/
/*  2. connect[] に重複なく相手ポートを追加                     */
/*==============================================================*/
static void add_unique_connection(port *from, port *to)
{
    if (!from || !to) return;

    for (int i = 0; i < from->connCount; ++i)
        if (from->connect[i] == to) return;          /* 既にある */

    from->connect = realloc(from->connect,
                            sizeof(port*) * (from->connCount + 1));
    if (from->connect == NULL) {
        fprintf(stderr, "malloc failed at connect allocation at from->connect\n");
        exit(1);
    }
    from->connect[from->connCount++] = to;
}


/*==============================================================*/
/* 4. connectExternalPorts : 外部 I/O ↔ ゲート  （append 版）    */
/*==============================================================*/
void connectExternalPorts(module *m)
{
    if (!m) return;

    for (int i = 0; i < m->nnl; ++i) {
        netlist *ext = m->netlistArr[i];
        if (!ext) continue;
        if (ext->type == TYPE_WIRE) continue;

        /* ---------- 外部入力 (type 20) ---------- */
        if (ext->type == TYPE_INPUT) {
            if (ext->nfo == 0) {                       /* ドライバ1口確保 */
                allocPortsForNetlist(ext, 0, 1);
                ext->nfo = 1;
                port *drv = calloc(1, sizeof(port));
                if (drv == NULL) {
                    fprintf(stderr, "malloc failed at connect allocation at *drv\n");
                    exit(1);
                }
                drv->nl       = ext;
                drv->portName = strdup("--");
                drv->netName  = strdup(ext->instName);
                ext->fout[0]  = drv;
            }
            port *drv = ext->fout[0];

            for (int j = 0; j < m->nnl; ++j) {
                netlist *g = m->netlistArr[j];
                if (!g) continue;
                if (g->type==TYPE_INPUT||g->type==TYPE_OUTPUT||g->type==TYPE_WIRE)
                    continue;

                for (int fi = 0; fi < g->nfi; ++fi) {
                    port *pi = g->fin[fi];
                    if (!pi || !pi->netName) continue;
                    if (strcmp(pi->netName, ext->instName) != 0) continue;

                    add_unique_connection(drv, pi);
                    add_unique_connection(pi, drv);
                }
            }
        }
        /* ---------- 外部出力 (type 21) ---------- */
        else if (ext->type == TYPE_OUTPUT) {
            if (ext->nfi == 0) {                       /* シンク1口確保 */
                allocPortsForNetlist(ext, 1, 0);
                ext->nfi = 1;
                port *snk = calloc(1, sizeof(port));
                if (snk == NULL) {
                    fprintf(stderr, "malloc failed at connect allocation at *snk\n");
                    exit(1);
                }
                snk->nl       = ext;
                snk->portName = strdup("--");
                snk->netName  = strdup(ext->instName);
                ext->fin[0]   = snk;
            }
            port *snk = ext->fin[0];

            for (int j = 0; j < m->nnl; ++j) {
                netlist *g = m->netlistArr[j];
                if (!g) continue;
                if (g->type==TYPE_INPUT||g->type==TYPE_OUTPUT||g->type==TYPE_WIRE)
                    continue;

                for (int fo = 0; fo < g->nfo; ++fo) {
                    port *po = g->fout[fo];
                    if (!po || !po->netName) continue;
                    if (strcmp(po->netName, ext->instName) != 0) continue;

                    add_unique_connection(snk, po);
                    add_unique_connection(po, snk);
                }
            }
        }
    }
}

/*==============================================================*/
/* 5. buildPortConnections_fixed : ゲート ⇆ ゲート の接続        */
/*    - ドライバ複数可（2本目以降はシンク扱い）                 */
/*==============================================================*/
void buildPortConnections(module *m)
{
    typedef struct {
        char  *netName;
        port  *src;        /* 最初に見つかったドライバ            */
        port **dsts;       /* シンク配列                          */
        int    dstCount;
    } NetMap;

    //NetMap map[2048];
    NetMap map[50000];
    int mapCount = 0;

    /* ① fan-out 収集 ------------------------------------------------*/
    for (int i = 0; i < m->nnl; ++i) {
        netlist *nl = m->netlistArr[i];
        if (!nl) continue;
        if (nl->type==TYPE_INPUT||nl->type==TYPE_OUTPUT||nl->type==TYPE_WIRE)
            continue;

        for (int j = 0; j < nl->nfo; ++j) {
            port *po = nl->fout[j];
            if (!po || !po->netName) continue;

            int k;
            for (k = 0; k < mapCount; ++k)
                if (strcmp(map[k].netName, po->netName) == 0) break;

            if (k == mapCount) {                   /* 新規ネット */
                map[k].netName  = po->netName;
                map[k].src      = po;              /* 正ドライバ */
                map[k].dsts     = NULL;
                map[k].dstCount = 0;
                ++mapCount;
            } else {                               /* 2本目以降→シンク */
                map[k].dsts = realloc(map[k].dsts,
                                      sizeof(port*) * (map[k].dstCount + 1));
                if (map[k].dsts == NULL) {
                    fprintf(stderr, "malloc failed at connect allocation at map[k].dsts\n");
                    exit(1);
                }
                map[k].dsts[ map[k].dstCount++ ] = po;
            }
        }
    }

    /* ② fan-in 収集 -------------------------------------------------*/
    for (int i = 0; i < m->nnl; ++i) {
        netlist *nl = m->netlistArr[i];
        if (!nl) continue;
        if (nl->type==TYPE_INPUT||nl->type==TYPE_OUTPUT||nl->type==TYPE_WIRE)
            continue;

        for (int j = 0; j < nl->nfi; ++j) {
            port *pi = nl->fin[j];
            if (!pi || !pi->netName) continue;

            int k;
            for (k = 0; k < mapCount; ++k)
                if (strcmp(map[k].netName, pi->netName) == 0) break;

            if (k == mapCount) {                   /* ドライバ無しネット */
                map[k].netName  = pi->netName;
                map[k].src      = NULL;
                map[k].dsts     = NULL;
                map[k].dstCount = 0;
                ++mapCount;
            }
            map[k].dsts = realloc(map[k].dsts,
                                  sizeof(port*) * (map[k].dstCount + 1));
            if (map[k].dsts == NULL) {
                fprintf(stderr, "malloc failed at connect allocation at map[k].dsts2\n");
                exit(1);
            }
            map[k].dsts[ map[k].dstCount++ ] = pi;
        }
    }

    /* ③ connect 設定 -----------------------------------------------*/
    for (int i = 0; i < mapCount; ++i) {
        port *drv    = map[i].src;
        port **sinks = map[i].dsts;
        int sc       = map[i].dstCount;

        if (!drv) { free(sinks); continue; }       /* ドライバ無し */

        for (int s = 0; s < sc; ++s) {
            add_unique_connection(drv, sinks[s]);  /* drv → sink */

            if (sinks[s]->connCount == 0) {        /* sink → drv */
                sinks[s]->connect   = malloc(sizeof(port*));
                if (sinks[s]->connect == NULL) {
                    fprintf(stderr, "malloc failed at connect allocation at sinks[s]->connect\n");
                    exit(1);
                }
                sinks[s]->connect[0]= drv;
                sinks[s]->connCount = 1;
            }
        }
        free(sinks);
    }
}








/*--------------------------------------------------------------
 *  Assign :  rhs → lhs を『追記』でリンク
 *-------------------------------------------------------------*/
void Assign(module *m, const char *lhs, const char *rhs)
{
    if (!m || !lhs || !rhs) return;

    /* 1) ノード取得 or WIRE 生成 */
    netlist *drvNl = findNet(m, rhs);
    if (!drvNl) drvNl = createNetlist(m, TYPE_WIRE, strdup(rhs));

    netlist *snkNl = findNet(m, lhs);
    if (!snkNl) snkNl = createNetlist(m, TYPE_WIRE, strdup(lhs));

    /* 2) ドライバ側 fan-out ポート (netName = lhs) */
    port *pOut = NULL;
    for (int i = 0; i < drvNl->nfo; ++i)
        if (drvNl->fout[i] &&
            strcmp(drvNl->fout[i]->netName, lhs) == 0) { pOut = drvNl->fout[i]; break; }

    if (!pOut) {
        allocPortsForNetlist(drvNl, 0, drvNl->nfo + 1);
        pOut             = calloc(1, sizeof(port));
        pOut->nl         = drvNl;
        pOut->portName   = strdup("--");
        pOut->netName    = strdup(lhs);          /* ★ 修正ポイント ★ */
        drvNl->fout[drvNl->nfo++] = pOut;
    }

    /* 3) シンク側 fan-in ポート (netName = lhs) */
    port *pIn = NULL;
    for (int i = 0; i < snkNl->nfi; ++i)
        if (snkNl->fin[i] &&
            strcmp(snkNl->fin[i]->netName, lhs) == 0) { pIn = snkNl->fin[i]; break; }

    if (!pIn) {
        allocPortsForNetlist(snkNl, snkNl->nfi + 1, 0);
        pIn              = calloc(1, sizeof(port));
        pIn->nl          = snkNl;
        pIn->portName    = strdup("--");
        pIn->netName     = strdup(lhs);
        snkNl->fin[snkNl->nfi++] = pIn;
    }

    /* 4) 双方向リンクを“追加”するだけ ― 重複は自動スキップ */
    add_unique_connection(pOut, pIn);   /* rhs → lhs */
    add_unique_connection(pIn,  pOut);  /* lhs → rhs */
}





/*--------------------------------------------------------------
 *  basename_noext :  "path/to/b02.v" → "b02"
 *-------------------------------------------------------------*/
static const char *basename_noext(const char *path)
{
    const char *b = strrchr(path, '/');
    b = b ? b + 1 : path;
    static char buf[256];
    const char *dot = strrchr(b, '.');
    if (dot && (dot - b) < (int)sizeof(buf)) {
        memcpy(buf, b, dot - b);
        buf[dot - b] = '\0';
        return buf;
    }
    return b;
}

/*--------------------------------------------------------------
 *  Assign_port :  回路名ごとに専用の assign を一括追加
 *-------------------------------------------------------------*/
void Assign_port(module *m, const char *arg2)
{
    const char *key = basename_noext(arg2);   /* 例 "b01" */

    /* ---- 各回路専用の assign をここに並べる ---- */
    if (strcmp(key, "b01") == 0) {
        Assign(m, "out1", "sigA");
        Assign(m, "flag", "wireB");
    }
    else if (strcmp(key, "b07") == 0) {
        Assign(m, "test_so", "u");
    }
    /* … 必要に応じて追加 … */
    else {
        fprintf(stderr, "[Assign_port] no assign rule for \"%s\"\n", key);
    }
}






