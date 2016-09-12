
GEM_NAME = mpcat

include Makefile.common

.PHONY: test
test:
	RUBYOPT=-w $(BUNDLER) exec ./bin/mpcat ./test/test1.mp
