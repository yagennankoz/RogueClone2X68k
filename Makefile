CC = gcc
AS = has
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
#			$(CC) $(CFLAGS) -I $(SRCDIR) -I $(include) -O 1 -o $@ $^ -d ___libgnu_patchlevel=3

$(OUTDIR)/%.o:$(SRCDIR)/%.c
			$(CC) $(CFLAGS) -I $(SRCDIR) -O 2 -o $@ -c $<

clean:
			del $(OUTDIR)\*.*

