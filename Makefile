INSTALLPATH="/usr/share/pirum-shell"
INSTALLTEXT="pirum-shell v0.1A is now installed"
UNINSTALLTEXT="pirum-shell v0.1A has been removed"

install-req:
	@mkdir -p $(INSTALLPATH)
	@cp pirum-shell/* $(INSTALLPATH) -f
	@cp README $(INSTALLPATH) -f
	@cp AUTHORS $(INSTALLPATH) -f
	@cp LICENSE $(INSTALLPATH) -f
	@cp bin/pirum-shell /usr/bin/ -f
	@cp bin/pirum-shell3 /usr/bin/ -f
	@cp share/pirum-shell.png /usr/share/pixmaps -f
	@cp share/pirum-shell.desktop /usr/share/applications/ -f
	@cp share/pirum-shell3.desktop /usr/share/applications/ -f
	@chmod 644 $(INSTALLPATH)/*
	@chmod +x $(INSTALLPATH)/pirum_shell.py
	@chmod 644 /usr/share/pixmaps/pirum-shell.png
	@chmod 644 /usr/share/applications/pirum-shell.desktop
	@chmod 644 /usr/share/applications/pirum-shell3.desktop
	@chmod 644 /usr/bin/pirum-shell
	@chmod 644 /usr/bin/pirum-shell
	@chmod +x /usr/bin/pirum-shell
	@chmod 644 /usr/bin/pirum-shell3
	@chmod 644 /usr/bin/pirum-shell3
	@chmod +x /usr/bin/pirum-shell3

install: install-req
	@echo $(INSTALLTEXT)

uninstall-req:
	@rm -rf $(INSTALLPATH)
	@rm /usr/share/pixmaps/pirum-shell.png
	@rm /usr/share/applications/pirum-shell.desktop
	@rm /usr/share/applications/pirum-shell3.desktop
	@rm /usr/bin/pirum-shell
	@rm /usr/bin/pirum-shell3

uninstall: uninstall-req
	@echo $(UNINSTALLTEXT)
