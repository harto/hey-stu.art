BUILD = _site
SRC = src

.PHONY: all clean

all: _site

_site: src src/work/index.md
	bundle exec jekyll build
	touch $@

src/work/index.md: ../cv/cv.md
	cp $< $@

../cv/cv.md:
	git clone git@github.com:harto/cv.git ../cv

clean:
	rm -rf _site
