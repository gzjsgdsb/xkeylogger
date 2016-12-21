.PHONY: dynamic static clean

CFLAGS=-Wall -pedantic -O3 -Os

dynamic: LDLIBS += -lX11 -lXi
dynamic: xkeylogger

static: LDLIBS += -Wl,-Bstatic -lX11 -lxcb  -lXi -lXau -lXdmcp -lXext -Wl,-Bdynamic
static: xkeylogger

clean:
	$(RM) xkeylogger
