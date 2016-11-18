README.md: README.md.tmpl
	bin/build README.md.tmpl README.md

install:
	bin/install

clean:
	rm -f README.md

.phony: install clean
