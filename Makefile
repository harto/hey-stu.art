BUILD = _site
SRC = src

.PHONY: default clean

all: $(BUILD)

$(BUILD): $(SRC)
	bundle exec jekyll build

clean:
	rm -rf $(BUILD)
