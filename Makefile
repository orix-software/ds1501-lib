SOURCES8=$(wildcard src/*.s)
OBJECTS8=$(SOURCES8:.s=.o)

all: $(SOURCES8) $(OBJECTS8) tools

$(OBJECTS8): $(SOURCES8)
	ca65 -ttelestrat $(@:.o=.s) -o $@
	ar65 r ds1501.lib  $@
	mkdir -p build/lib8 && cp build/lib8/ds1501.lib

tools:
	cl65 -ttelestrat -I src/include tools/ds1501.c -o ds1501 ds1501.lib tools/_kbhit_ds1501.s

clean:
	rm src/*.o
	rm tools/*.o
	rm ds1501.lib

