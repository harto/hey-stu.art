BUILD = _site
SRC = src

.PHONY: all clean

all: docs/work/index.md

docs/work/index.md: ../cv/cv.md
	cp $< $@

# TODO: perhaps this should be a submodule?
../cv/cv.md:
	git clone git@github.com:harto/cv.git ../cv

clean:
	rm docs/work/index.md
