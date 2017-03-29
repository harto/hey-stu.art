BUILD = _site
SRC = src

.PHONY: default clean

all: $(BUILD)

$(BUILD): $(SRC)
	bundle exec jekyll build

clean:
	rm -rf $(BUILD) $(CV)

# Miscellany

CV = stuart-campbell-software-engineer.pdf
.PHONY: cv

cv: $(CV)

# Needs:
# - Pandoc (http://pandoc.org/)
# - MacTex (http://www.tug.org/mactex/morepackages.html)
# - xelatex on PATH
$(CV): $(SRC)/work/index.md bin/gencv
	bin/gencv $< $@
