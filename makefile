SOURCES = basename cat cp dirname echo mv pwd rm rmdir seq sort touch uniq wc

all: $(addprefix bin/, $(SOURCES))

bin/% : %.d | bin
	dmd $< -of$@

bin:
	mkdir -p $@
