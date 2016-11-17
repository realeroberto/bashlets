README.md: README.md.tmpl
	bin/build README.md.tmpl README.md

clean:
	rm -f README.md

.phony: clean
