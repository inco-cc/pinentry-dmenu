include config.mk

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f pinentry-dmenu ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/pinentry-dmenu

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/pinentry-dmenu
