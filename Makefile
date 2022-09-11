BUILDDIR=.
FILENAME=main

html:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
		--to=revealjs \
		--output=$(BUILDDIR)/$(FILENAME).html \
		--mathjax \
		--slide-level 2 \
		--standalone \
		--variable theme=white \
		--variable transition=convex 
