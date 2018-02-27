# Build prerequisites
#
#   1. a sane GNU system
#   2. Node.js
#   3. the markdown-toc package (https://github.com/jonschlinkert/markdown-toc)

.PHONY: all install clean tests check

# The first rule in a Makefile is the one executed by default ("make"). It
# should always be the "all" rule, so that "make" and "make all" are identical.
all: README.md

README.md: install README.md.tmpl
	scripts/build README.md.tmpl README.md
	markdown-toc -i README.md

tests:
	bats tests/tests.sh

check:
	scripts/shellcheck

install:
	bin/bashlets-install -L

clean:
	rm -f README.md
