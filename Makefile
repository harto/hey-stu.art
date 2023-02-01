BUILD = _site
SRC = src

.PHONY: all clean

all: docs/work/index.md

docs/work/index.md: cv/cv.md
	cp $< $@

clean:
	rm docs/work/index.md
