SRCS = about bugreports consulting contact documentation download \
       index legal news projects shame

SRCS_2 = about legal projects shame

TARGETS = $(addsuffix .html,$(addprefix htdocs/,$(SRCS)))
TARGETS_2 = $(addsuffix .html,$(addprefix htdocs/,$(SRCS_2)))

ALL_TARGETS = $(TARGETS) $(TARGETS_2)

PAGE_DEPS = src/template_head1 src/template_head2 src/template_footer


all: $(TARGETS)

clean:
	rm -f $(TARGETS)

htdocs/index.html: src/index src/news src/index_title $(PAGE_DEPS)
	cat src/template_head1 $<_title \
	    src/template_head2 \
	    src/template_head3 $< src/news \
	    src/template_footer > $@

htdocs/%.html: src/% src/%_title $(PAGE_DEPS)
	cat src/template_head1 $<_title \
	    src/template_head2 $(BREADCRUMB) \
	    src/template_head3 $< \
	    src/template_footer > $@

$(TARGETS_2): htdocs/%.html: src/%_breadcrumb

$(TARGETS_2): BREADCRUMB=$<_breadcrumb


.PHONY: all clean
