# This is _NOT_ the library release version, it's an API version.
# Please read Chapter 6 "Library interface versions" of the libtool documentation before making any modification
LIBVERSION=0:0:0

INCLUDES = $(all_includes) -I$(top_srcdir)/include
AM_CFLAGS = -fPIC -Wall $(LIBOSMOCORE_CFLAGS) $(LIBOSMOGSM_CFLAGS) $(PCSC_CFLAGS)
AM_LDFLAGS = $(COVERAGE_LDFLAGS)

if ENABLE_PCSC
# FIXME: only build the PC/SC dependent part conditional, but always build other parts

noinst_HEADERS = sim_int.h gsm_int.h

lib_LTLIBRARIES = libosmosim.la

libosmosim_la_SOURCES = core.c reader.c reader_pcsc.c \
			card_fs_sim.c card_fs_usim.c card_fs_uicc.c card_fs_isim.c card_fs_tetra.c
libosmosim_la_LDFLAGS = -version-info $(LIBVERSION)
libosmosim_la_LIBADD = $(LIBOSMOCORE_LIBS) $(LIBOSMOGSM_LIBS) $(PCSC_LIBS)

endif
