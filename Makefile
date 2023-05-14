V=20220607

PREFIX = /usr

install:
	install -dm755 $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
	install -m0644 bredos{.gpg,-trusted,-revoked} $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/share/pacman/keyrings/bredos{.gpg,-trusted,-revoked}
	rmdir -p --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
