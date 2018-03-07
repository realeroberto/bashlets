# Build prerequisites
#
#   1. a sane GNU system
#   2. Node.js
#   3. the markdown-toc package (https://github.com/jonschlinkert/markdown-toc)

.PHONY: all install clean tests check

# The first rule in a Makefile is the one executed by default ("make"). It
# should always be the "all" rule, so that "make" and "make all" are identical.
all:

tests:
	bats $$(find tests -type f -name '*.bats')

lint:
	shellcheck $$(grep -rl '^#![[:blank:]]*/bin/bash')

install:
	bin/bashlets-install -L

clean:
	rm -f README.md
