BUILD = _site
SRC = src

.PHONY: default serve build-subprojects clean

default: $(BUILD)

$(BUILD): Gemfile.lock $(SRC) build-subprojects
	jekyll build

Gemfile.lock: Gemfile
	bundle install

serve:
	jekyll serve --watch

# TODO: consider moving submodules out of src
build-subprojects:
	$(MAKE) $(MFLAGS) --directory=src/junk/pacman

clean:
	rm -rf $(BUILD)
	$(MAKE) --directory=src/junk/pacman clean
