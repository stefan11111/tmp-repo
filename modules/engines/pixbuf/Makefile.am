include $(top_srcdir)/Makefile.decl

if PLATFORM_WIN32
no_undefined = -no-undefined
endif

INCLUDES = \
	-I$(top_srcdir) 		\
	-I$(top_srcdir)/gdk		\
	-I$(top_builddir)/gdk		\
	$(/bin/true)	\
	$(GTK_DEP_CFLAGS)

LDADDS = \
	$(GTK_DEP_LIBS)					\
	$(top_builddir)/gdk/$(gdktargetlib)		\
	$(top_builddir)/gtk/$(gtktargetlib)

enginedir = $(libdir)/gtk-2.0/$(GTK_BINARY_VERSION)/engines

engine_LTLIBRARIES = libpixmap.la

libpixmap_la_SOURCES = 		\
	pixbuf-draw.c		\
	pixbuf-main.c		\
	pixbuf-render.c		\
	pixbuf-rc-style.c	\
	pixbuf-rc-style.h	\
	pixbuf-style.h		\
	pixbuf.h

libpixmap_la_LDFLAGS =  -avoid-version -module $(no_undefined)
libpixmap_la_LIBADD = $(LDADDS)


-include $(top_srcdir)/git.mk
