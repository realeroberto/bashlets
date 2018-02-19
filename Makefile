# Build prerequisites
#
#   1. a sane GNU system
#   2. Node.js
#   3. the markdown-toc package (https://github.com/jonschlinkert/markdown-toc)

.PHONY: README.md all install clean

# The first rule in a Makefile is the one executed by default ("make"). It
# should always be the "all" rule, so that "make" and "make all" are identical.
all: README.md

README.md: install README.md.tmpl
	script/build README.md.tmpl README.md
	markdown-toc -i README.md

test:
	bats tests/test.sh

check:
	script/shellcheck

install:
	bin/bashlets-install

clean:
	rm -f README.md
