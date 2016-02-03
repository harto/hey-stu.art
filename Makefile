BUILD = _site
SRC = src

.PHONY: default clean

all: $(BUILD)

$(BUILD): $(SRC)
	bundle exec jekyll build

clean:
	rm -rf $(BUILD)

# Miscellany

.PHONY: cv

cv: stuart-campbell-software-engineer.pdf

# Needs:
# - Pandoc (http://pandoc.org/)
# - MacTex (http://www.tug.org/mactex/morepackages.html)
# - xelatex on PATH
stuart-campbell-software-engineer.pdf: $(SRC)/work/index.md
	pandoc $< --latex-engine=xelatex \
              --variable mainfont=Helvetica \
              --variable urlcolor=NavyBlue \
              -o $@
