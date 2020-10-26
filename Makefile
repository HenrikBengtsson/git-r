SHELL:=/bin/bash

all: README.md check spelling

README.md: README.md.tmpl bin/git-r
	@bfr=`cat $<`; \
	help=`bin/git-r`; \
	bfr=`echo "$${bfr/\{\{ HELP \}\}/$$help}"`; \
	printf "$$bfr" > $@
	@echo "README.md"


.PHONY: test

check:
	echo "ShellCheck $$(shellcheck --version | grep version:)"
	shellcheck bin/git-r

spelling:
	Rscript -e 'spelling::spell_check_files(dir(pattern="[.]md$$"), ignore=readLines("WORDLIST"))'

