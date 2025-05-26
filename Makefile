# Makefile for Verilog Netlist Parser (myNetListParser)

# コンパイラ
CC = gcc
LEX = flex
YACC = bison

# フラグ
CFLAGS = -g -Iinclude

# 出力ファイル
TARGET = saa

# ディレクトリ
SRCDIR = src
OBJDIR = obj
INCDIR = include

# ソースファイル一覧
SRCS = $(SRCDIR)/options.c $(SRCDIR)/print.c $(SRCDIR)/y.tab.c $(SRCDIR)/lex.yy.c \
       $(SRCDIR)/read.c $(SRCDIR)/hash.c $(SRCDIR)/net.c $(SRCDIR)/sort.c $(SRCDIR)/main.c

# オブジェクトファイル一覧
OBJS = $(OBJDIR)/options.o $(OBJDIR)/print.o $(OBJDIR)/y.tab.o $(OBJDIR)/lex.yy.o \
       $(OBJDIR)/read.o $(OBJDIR)/hash.o $(OBJDIR)/net.o $(OBJDIR)/sort.o $(OBJDIR)/main.o

# ヘッダーファイル
HDRS = $(INCDIR)/define.h $(INCDIR)/struct.h $(INCDIR)/stdnet.h $(INCDIR)/primitives.h $(INCDIR)/fname.h $(INCDIR)/hash.h

# ルール：全体のビルド
all: $(TARGET)

# y.tab.c と y.tab.h の生成
$(SRCDIR)/y.tab.c $(SRCDIR)/y.tab.h: $(SRCDIR)/readnet.y
	$(YACC) -d -o $(SRCDIR)/y.tab.c $(SRCDIR)/readnet.y

# lex.yy.c の生成
$(SRCDIR)/lex.yy.c: $(SRCDIR)/readnet.l
	$(LEX) $(SRCDIR)/readnet.l
	mv lex.yy.c $(SRCDIR)/lex.yy.c

# y.tab.o と lex.yy.o の生成ルール
$(OBJDIR)/y.tab.o: $(SRCDIR)/y.tab.c $(HDRS)
	@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c $(SRCDIR)/y.tab.c -o $(OBJDIR)/y.tab.o

$(OBJDIR)/lex.yy.o: $(SRCDIR)/lex.yy.c $(HDRS)
	@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c $(SRCDIR)/lex.yy.c -o $(OBJDIR)/lex.yy.o

# 各 .o ファイルのビルド
$(OBJDIR)/%.o: $(SRCDIR)/%.c $(HDRS)
	@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c $< -o $@

# hash.o の特別ルール
$(OBJDIR)/hash.o: $(SRCDIR)/hash.c $(HDRS)
	@mkdir -p $(OBJDIR)
	$(CC) $(CFLAGS) -c $(SRCDIR)/hash.c -o $(OBJDIR)/hash.o

# ターゲットのリンク
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET)

# クリーンアップ
clean:
	rm -f $(OBJDIR)/*.o $(SRCDIR)/y.tab.c $(SRCDIR)/lex.yy.c $(SRCDIR)/y.tab.h $(TARGET)

# 依存関係の生成
depend:
	makedepend -I$(INCDIR) $(SRCS)

