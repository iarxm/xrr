PREFIX=/usr/local
BINDIR=$(PREFIX)/bin

all:
	@echo "Run 'make install' to install the scripts."

install:
	install -d $(BINDIR)
	install -m 755 xrr xres xstart $(BINDIR)

install-user:
	$(MAKE) install PREFIX="${HOME}/.local/usr/bin"

uninstall:
	rm $(addprefix $(BINDIR), xrr xres)

