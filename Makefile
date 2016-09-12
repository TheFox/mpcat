
GEM_NAME = mpcat

include Makefile.common

.PHONY: test
test:
	RUBYOPT=-w $(BUNDLER) exec ./bin/mpcat ./test/test1.mp > ./test/test1.mp.yml
	diff ./test/test1.mp.yml ./test/test1.yml
	rm -f ./test/test1.mp.yml
