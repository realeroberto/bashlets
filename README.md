# bashlets-library

A modular extensible toolbox for Bash.

### Examples

#### Generating a UUID

	$ source bashlet datatype/uuid
	$ uuid create
	2fc83419-df73-4cfd-bf9d-85634c8370fd

#### Validating a UUID

	$ source bashlet datatype/uuid
	$ uuid validate 2fc83419-df73-4cfd-bf9d-85634c8370fd || echo INVALID
	$ uuid validate 2fc83419-df73-4cfd-_f9d-85634c8370fd || echo INVALID
	INVALID

