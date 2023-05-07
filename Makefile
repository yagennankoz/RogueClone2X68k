CC = gcc
LK = hlk

SRCDIR = src
OUTDIR = build
TARGET = $(OUTDIR)/rogue.x
SRCS   = $(wildcard $(SRCDIR)/*.c)
OBJS   = $(addprefix $(OUTDIR)/,$(patsubst %.c,%.o,$(subst $(SRCDIR)/,,$(SRCS))))
LIBS   = DOSLIB.l CLIB.l FLOATLIB.l GNULIB.l 
CFLAGS = -DMSDOS -DHUMAN -DCURSES -DCOLOR -DJAPAN

all:	$(TARGET)

$(TARGET):	$(OBJS)
			$(LK) -o $@ $^ -l $(LIBS) -d ___libgnu_patchlevel=3
# ___libgnu_patchlevel の取得元不明のため、適当にセット

$(OUTDIR)/%.o:$(SRCDIR)/%.c
			$(CC) $(CFLAGS) -I $(SRCDIR) -O 2 -o $@ -c $<



