.PHONY: all install tests

all: install

install:
	bashlets install -L

tests:
	bats tests/*

lint:
	shellcheck $$(grep -rl '^#![[:blank:]]*/bin/bash')
