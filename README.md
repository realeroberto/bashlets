# bashlets

![Uptime Robot](https://img.shields.io/uptimerobot/status/m788032555-3c8b57a632434e90a5085acf)
[![Build Status](https://travis-ci.com/reale/bashlets.svg?branch=master)](https://travis-ci.com/reale/bashlets)
[![Read the Docs](https://readthedocs.org/projects/bashlets/badge/?version=latest)](http://bashlets.readthedocs.io/en/latest/?badge=latest)

> /'baʃlɪt/
> 
> *noun: A tiny piece of shell code.*

## Introduction

Bashlets is a new modular extensible toolbox for Bash, written in Bash.

The project is still in its early days, yet it is quite usable and the core features are already there: smart loading of modules, integration with git, partial OO support, and more.

The project has a threefold aim:

* bringing together the largest possible corpus of useful pieces of reusable Bash code, with everything organized in as neat a fashion as we can think of
* shielding the user from some of the Bash technicalities and idiosyncrasies
* writing a consistent and portable API (well, kind of) towards the operating system

I want to stress the fact that this is not a generically-compliant POSIX shell project; on the contrary, the aim of the project is to write code that will run on (and require) Bash. As to the rest of the environment, however, the long-term goal is to get rid of dependencies on external tools as far as it is possible (or reasonable) to do so, even though at present the code does assume a reasonably standard GNU/Linux system.


## Rationale

TODO


## Contributing

Of course there is so much work to do, and I'd be delighted if somebody is willing to step in with code, enhancements, suggestions, and of course test cases and bug reports!


## Requirements

A reasonably sane GNU environment is assumed to be at hand. More specifically, you need:

* Bash
* Git
* GNU Coreutils
* GNU grep, sed, awk
* curl
* the [jq](https://stedolan.github.io/jq/) command-line JSON processor
* the [gitty](https://github.com/reale/gitty) Bash client for the GitHub API
* Make

To run the test suite, you need Sam Stephenson's [Bash Automated Testing System](https://github.com/sstephenson/bats).

To check for proper programming, you need [ShellCheck](https://www.shellcheck.net/).

Extension packages may have additional requirements.


## Installing

	$ git clone https://github.com/reale/bashlets.git
	$ cd bashlets
	$ make install

That's all!

To run the test suite:

    $ make test

If you want to check for proper programming:

    $ make lint


## Extensions

There is a growing corpus of additional packages available. To install package `package` just do

    $ bashlets install -D package


## Examples

### Basic interaction

	$ source bashlets core::library::interact
	$ bash$$ interact say_hello

	Hello, this is bashlets 1.0 speaking!


### Data types: generating a random printable string of arbitrary length

	$ source bashlets core::datatype::string

	$ bash$$ string random 32
	6J-%.v(M)`N_de&2fvdVd;yy R;FRt=[

### Data types: generating and validating UUIDs

	$ source bashlets core::datatype::uuid

	$ bash$$ uuid random
	2fc83419-df73-4cfd-bf9d-85634c8370fd

	$ bash$$ uuid validate 2fc83419-df73-4cfd-bf9d-85634c8370fd || echo INVALID
	$ bash$$ uuid validate 2fc83419-df73-4cfd-_f9d-85634c8370fd || echo INVALID
	INVALID

### Data types: comparing version strings

	$ source bashlets core::datatype::semver

	$ bash$$ semver sort 1.44 1.4 1.4.4 1.4.4a 1.4-1234
	1.4
	1.4-1234
	1.4.4
	1.4.4a
	1.44

### Cache: passing data around

	$ source bashlets core::cache::fs

	$ cache=$(bash$$ fs create)

	$ # set key/value in a subshell...
	$ ( bash$$ fs set $cache question 'To be, or not to be...' )

	$ # read value in the parent shell
	$ bash$$ fs get $cache question
	To be, or not to be...

	$ bash$$ fs destroy $cache

### Character streams: converting formats without external tools

	$ source bashlets core::stream::convert

	$ cat << ??? | bash$$ convert unix2dos | file -
	> Shall I compare thee to a summer's day?
	> Thou art more lovely and more temperate.
	> Rough winds do shake the darling buds of May,
	> And summer's lease hath all too short a date...
	> ???
	/dev/stdin: ASCII text, with CRLF line terminators

### Math: manipulating complex numbers

	$ source bashlets core::math::icomplex

	$ i=$(bash$$ icomplex create 0 1)
	$ bash$$ icomplex to_real $(bash$$ icomplex square $i)
	-1

### User eXperience: enjoying a basic REPL cycle

	$ source bashlets core::ux::repl

	$ bash$$ repl start
	> quit
	$


## Design Notes

TODO


## Style Guide

TODO


## Bibliography

### Reference Works

- [Bash Reference Manual](https://www.gnu.org/software/bash/manual/bash.html)
- [The Open Group Base Specifications Issue 7, _Shell & Utilities_](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/contents.html)

### Bash Hacking

- [Advanced Bash-Scripting Guide](http://www.tldp.org/LDP/abs/html/index.html)
- [BashGuide](http://mywiki.wooledge.org/BashGuide)
- [The Bash Hackers Wiki](http://wiki.bash-hackers.org/)
- [Bash Design Patterns](http://stackoverflow.com/questions/78497/design-patterns-or-best-practices-for-shell-scripts)
- [BASH Frequently Asked Questions](http://mywiki.wooledge.org/BashFAQ)
- [Bash Pitfalls](http://mywiki.wooledge.org/BashPitfalls)

### Bash Criticism

- [Bash Weaknesses](http://mywiki.wooledge.org/BashWeaknesses)
- [Bash utility script library](http://stackoverflow.com/questions/11369522/bash-utility-script-library)

### Special Topics

- [Why is printf better than echo?](http://unix.stackexchange.com/questions/65803/why-is-printf-better-than-echo)
- [How to check if a variable is set in Bash?](http://stackoverflow.com/questions/3601515/how-to-check-if-a-variable-is-set-in-bash)
- [Setting `IFS` for a single statement](http://unix.stackexchange.com/questions/92187/setting-ifs-for-a-single-statement)
- [`readarray` (aka `mapfile`) issue](http://unix.stackexchange.com/questions/136206/readarray-or-pipe-issue)

### Tools

- [Match command-line arguments to their help text](http://explainshell.com/)
- [Bash/Tcsh Comparison Table](http://joelinoff.com/blog/?page_id=235)

### Collections of scripts

- [Bash One-Liners](http://bashoneliners.com/)
- [Awesome Shell](https://github.com/alebcay/awesome-shell)

### Frameworks

- [bang.sh](https://github.com/bashlets/bangsh)
- [bashinator](https://github.com/wschlich/bashinator)
- [bash manager](https://github.com/lingtalfi/bashmanager)
- [bash toolbox](https://github.com/hallison/bash-toolbox)
- [bash-it](https://github.com/Bash-it/bash-it)
- [bashworks](https://github.com/jpic/bashworks)
- [blp](https://github.com/mikelking/blp)
- [mbfl](https://github.com/marcomaggi/mbfl)
- [oobash](https://github.com/domachine/oobash)
- [shesfw](https://code.google.com/archive/p/shesfw/)
- [ticktick](https://github.com/kristopolous/TickTick)

### Special-purpose libraries

- [bash automated testing system](https://github.com/sstephenson/bats)
- [lib_MTA](https://github.com/reale/lib_MTA)
- [log4sh](https://sites.google.com/a/forestent.com/projects/log4sh)
