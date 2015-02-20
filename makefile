install: uninstall
	cp -fv ./nympass /usr/local/bin

uninstall:
	rm -fv /usr/local/bin/nympass

.PHONY: install uninstall
