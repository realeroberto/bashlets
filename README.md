# bashlets-library

A modular extensible toolbox for Bash.

## Examples

### Data types: generate and validate UUIDs

	$ source bashlet datatype/uuid

	$ uuid create
	2fc83419-df73-4cfd-bf9d-85634c8370fd

	$ uuid validate 2fc83419-df73-4cfd-bf9d-85634c8370fd || echo INVALID
	$ uuid validate 2fc83419-df73-4cfd-_f9d-85634c8370fd || echo INVALID
	INVALID

### Data types: intervals of timestamps

	$ export TZ=UTC
	$ date
	Sat Nov 28 14:05:21 UTC 2015

	$ source datatype/tsinterval

	$ delta=$(tsinterval create yesterday)

	$ date -d @$(tsinterval get_t0 $delta)
	Fri Nov 27 00:00:00 UTC 2015
	$ date -d @$(tsinterval get_t1 $delta)
	Sat Nov 28 00:00:00 UTC 2015

### Cache: passing data around

	$ source bashlet cache/fs

	$ cache=$(fs create)

	$ # set key/value in a subshell...
	$ ( fs set $cache question 'To be, or not to be...' )

	$ # read value in the parent shell
	$ fs get $cache question
	To be, or not to be...

	$ fs destroy $cache


### Math: manipulate complex numbers

	$ source bashlet math/icomplex

	$ i=$(icomplex create 0 1)
	$ icomplex to_real $(icomplex square $i)
	-1

### Math: calculate basic constants to (almost) arbitrary precision

	$ source bashlet math/constants

	$ constants calculate phi 60
	1.618033988749894848204586834365638117720309179805762862135448

### User eXperience: a basic REPL cycle

	$ source bashlet ux/repl

	$ repl start
	> quit
	$

