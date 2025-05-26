/*
 * Data structure
 */

#ifndef STRUCT_H
#define STRUCT_H



typedef char string[maxstr];

typedef struct _namelst {
 char *name;
} namelst;


typedef struct _fault {
    char pnum[maxstr/2];
    char port[maxstr];
    char net[maxstr];
    char fkind[maxstr/8];
    char original[maxstr];
    int delay;
} Fault;

typedef struct _lineHash {
    int zeroFlag;
    struct _line *chain;
} lineHash;

typedef struct _line {
    struct _fault *pat;
    struct _line *next;
} Line;

typedef struct _pairHash {
    int zeroFlag;
    struct _pair *chain;
} pairHash;

typedef struct _pair {
    struct _fault *pat1;
    struct _fault *pat2;
    struct _pairHash *next;
} Pair;

#endif
