SOURCES = basename cat cp dirname echo mv rm rmdir sort touch

all: $(addprefix bin/, $(SOURCES))

bin/% : %.d | bin
	dmd $< -of$@

bin:
	mkdir -p $@
