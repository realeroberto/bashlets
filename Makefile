.PHONY: all install tests

all: install

install:
	bashlets install -L

tests:
	bats tests/*
