# bashlets

[![Read the Docs](https://readthedocs.org/projects/bashlets/badge/?version=latest)](http://bashlets.readthedocs.io/en/latest/?badge=latest)

1. [Introduction](#introduction)
1. [Installing](#installing)
3. [Examples](#examples)
4. [Design Notes](#design-notes)
5. [Style Guide](#style-guide)
6. [Bibliography](#bibliography)


## Introduction

Bashlets is a modular extensible toolbox for Bash.

A reasonably sane GNU/Linux environment is assumed to be at hand; support for FreeBSD and Cygwin is available (in _homeopathic dilution_), yet highly experimental.


## Installing

	$ git clone https://github.com/bashlets/bashlets.git
	$ cd bashlets
	$ make install

That's all!


## Examples

### Basic interaction

	$ source bashlet library/interact
	$ bash$$ interact say_hello
	
	Hello, this is bashlets 1.0 speaking!


### Data types: generating a random printable string of arbitrary length

	$ source bashlet datatype/string

	$ echo $(bash$$ string generate_random 32)
	6J-%.v(M)`N_de&2fvdVd;yy R;FRt=[

### Data types: generating and validating UUIDs

	$ source bashlet datatype/uuid

	$ bash$$ uuid create
	2fc83419-df73-4cfd-bf9d-85634c8370fd

	$ bash$$ uuid validate 2fc83419-df73-4cfd-bf9d-85634c8370fd || echo INVALID
	$ bash$$ uuid validate 2fc83419-df73-4cfd-_f9d-85634c8370fd || echo INVALID
	INVALID

### Data types: handling intervals of timestamps

	$ export TZ=UTC
	$ date
	Sat Nov 28 14:05:21 UTC 2015

	$ source datatype/tsinterval

	$ delta=$(bash$$ tsinterval create yesterday)

	$ date -d @$(bash$$ tsinterval get_t0 $delta)
	Fri Nov 27 00:00:00 UTC 2015
	$ date -d @$(bash$$ tsinterval get_t1 $delta)
	Sat Nov 28 00:00:00 UTC 2015

### Data types: comparing version strings

	$ source bashlet datatype/version

	$ bash$$ version sort 1.44 1.4 1.4.4 1.4.4a 1.4-1234
	1.4
	1.4-1234
	1.4.4
	1.4.4a
	1.44

### Cache: passing data around

	$ source bashlet cache/fs

	$ cache=$(bash$$ fs create)

	$ # set key/value in a subshell...
	$ ( bash$$ fs set $cache question 'To be, or not to be...' )

	$ # read value in the parent shell
	$ bash$$ fs get $cache question
	To be, or not to be...

	$ bash$$ fs destroy $cache

### Character streams: converting formats without external tools

	$ source bashlet charstream/convert

	$ cat << ??? | bash$$ convert unix2dos | file -
	> Shall I compare thee to a summer's day?
	> Thou art more lovely and more temperate.
	> Rough winds do shake the darling buds of May,
	> And summer's lease hath all too short a date...
	> ???
	/dev/stdin: ASCII text, with CRLF line terminators

### Math: manipulating complex numbers

	$ source bashlet math/icomplex

	$ i=$(bash$$ icomplex create 0 1)
	$ bash$$ icomplex to_real $(bash$$ icomplex square $i)
	-1

### Math: calculating basic constants to (almost) arbitrary precision

	$ source bashlet math/constants

	$ bash$$ constants calculate phi 60
	1.618033988749894848204586834365638117720309179805762862135448

### Parsers: interpreting YAML documents in na(t)ive Bash code

	$ # from http://yaml.org/spec/1.2/spec.html
	$ cat sample.yaml
	Date: 2001-11-23 15:03:17 -5
	User: ed
	Fatal:
	  Unknown variable "bar"
	Stack:
	  - file: TopClass.py
	    line: 23
	    code: |
	      x = MoreObject("345\n")
	  - file: MoreClass.py
	    line: 58
	    code: |-
	      foo = bar

	$ source bashlet parsers/yaml

	$ bash$$ yaml get_by_key sample.yaml Stack__line
	23
	58

### User eXperience: enjoying a basic REPL cycle

	$ source bashlet ux/repl

	$ bash$$ repl start
	> quit
	$


## Design Notes

TODO


## Style Guide

TODO


## Bibliography

### Bash Hacking

- [Advanced Bash-Scripting Guide](http://www.tldp.org/LDP/abs/html/index.html)
- [The Bash Hackers Wiki](http://wiki.bash-hackers.org/)
- [Bash Design Patterns](http://stackoverflow.com/questions/78497/design-patterns-or-best-practices-for-shell-scripts)
- [Why is printf better than echo?](http://unix.stackexchange.com/questions/65803/why-is-printf-better-than-echo)

### Bash Criticism

- [Bash Weaknesses](http://mywiki.wooledge.org/BashWeaknesses)

### Collections of scripts

- [Bash One-Liners](http://bashoneliners.com/)
- [Awesome Shell](https://github.com/alebcay/awesome-shell)

### Frameworks

- [bang.sh](https://github.com/bashlets/bangsh)
- [bashinator](https://github.com/wschlich/bashinator)
- [bash manager](https://github.com/lingtalfi/bashmanager)
- [bash toolbox](https://github.com/hallison/bash-toolbox)
- [bashworks](https://github.com/jpic/bashworks)
- [blp](https://github.com/mikelking/blp)
- [mbfl](https://github.com/marcomaggi/mbfl)
- [oobash](https://github.com/domachine/oobash)
- [shesfw](https://code.google.com/archive/p/shesfw/)
- [ticktick](https://github.com/kristopolous/TickTick)

### Special-purpose libraries

- [bash automated testing system](https://github.com/sstephenson/bats)
- [log4sh](https://sites.google.com/a/forestent.com/projects/log4sh)
