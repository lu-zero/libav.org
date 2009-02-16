# ffmpeg.org HTML generation from source files

SRCS=about bugreports documentation download \
     index legal mailinglists projects shame

TARGETS=$(addsuffix .html,$(addprefix htdocs/,$(SRCS)))


all: $(TARGETS)

clean:
	rm -f $(TARGETS)

htdocs/%.html: src/% Makefile sed_commands
	sed -f sed_commands $< > $@

.PHONY: all clean
