
GEM_NAME = mpcat

include Makefile.common

.PHONY: test
test:
	RUBYOPT=-w ./bin/mpcat tests/test1.mp
