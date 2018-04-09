.PHONY: all install tests lint

# The first rule in a Makefile is the one executed by default ("make"). It
# should always be the "all" rule, so that "make" and "make all" are identical.
all: ;

install:
	bin/bashlets-install -DL

tests:
	bats $$(find tests -type f -name '*.bats')

lint:
	shellcheck $$(grep -rl '^#![[:blank:]]*/bin/bash')
