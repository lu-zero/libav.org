# ffmpeg.org HTML generation from source files

SRCS=bugreports compat documentation download \
     index legal links mailinglists projects

TARGETS=$(addsuffix .html,$(addprefix htdocs/,$(SRCS)))


all: $(TARGETS)

clean:
	rm -f $(TARGETS)

htdocs/%.html: src/%
	sed $< -e "/<?php require ('navbar.html'); ?>/a\
<center>\n\
[<a href="index.html">Main Page and News</a>]\n\
[<a href="changelog.html">Changelog</a>]\n\
[<a href="download.html">Download and CVS</a>]\n\
[<a href="documentation.html">Documentation</a>]\n\
[<a href="compat.html">Compatibility</a>]\n\
[<a href="mailinglists.html">Mailing Lists</a>]\n\
[<a href="bugreports.html">Reporting Bugs</a>]\n\
[<a href="http://sourceforge.net/projects/ffmpeg/">Sourceforge Project Page</a>]\n\
[<a href="legal.html">License and Legal Issues</a>]\n\
[<a href="projects.html">Projects Using FFmpeg</a>]\n\
[<a href="links.html">Links and Other Information</a>]\n\
</center>\n\
<br>\n" \
	-e "/<?php require ('navbar.html'); ?>/d" > $@
