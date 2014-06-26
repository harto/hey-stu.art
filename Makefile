BUILD = _site
SRC = src

.PHONY: default clean

default: $(BUILD)

$(BUILD): $(SRC)
	jekyll build

clean:
	rm -rf $(BUILD)
