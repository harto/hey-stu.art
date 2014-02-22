BUILD = _site
SRC = src

.PHONY: default serve clean

default: $(BUILD)

$(BUILD): Gemfile.lock $(SRC)
	jekyll build

Gemfile.lock: Gemfile
	bundle install

serve:
	jekyll serve --watch

deploy:
	rsync -rt --delete $(BUILD)/ harto.org:/srv/www/harto.org

clean:
	rm -rf $(BUILD)
