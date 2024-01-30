PREFIX := /usr
DESTDIR := 
install: 
    install -d "$(DESTDIR)$(PREFIX)/bin/"
	install -d "$(DESTDIR)$(PREFIX)/share/pixmaps/"
	install -d "$(DESTDIR)$(PREFIX)/share/applications/"
	install -D -m 755 "launcher" "$(DESTDIR)$(PREFIX)/bin/pkhex"
	install -D -m 644 "icon.png" "$(DESTDIR)$(PREFIX)/share/pixmaps/pkhex.png"
	install -D -m 644 "pkhex.desktop" "$(DESTDIR)$(PREFIX)/share/applications/pkhex.desktop"
