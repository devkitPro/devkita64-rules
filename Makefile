_MAJOR	:= 1
_MINOR	:= 1
_PATCH	:= 1

FILES	:=  base_rules  base_tools

all:
	@echo "use dist or install targets"

install:
	@mkdir -p $(DESTDIR)/opt/devkitpro/devkitA64
	@cp -v $(FILES) $(DESTDIR)/opt/devkitpro/devkitA64

dist:
	@tar -cJf devkita64-rules-$(_MAJOR).$(_MINOR).$(_PATCH).tar.xz $(FILES) Makefile
