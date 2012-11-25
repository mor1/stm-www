.DEFAULT: test
.PHONY: site test clean deploy

LESSC = lessc
JEKYLL = jekyll

css: css/stmwww.css
css/stmwww.css: $(wildcard _less/*.less) $(wildcard _bootstrap/less/*.less)
	mkdir -p css
	$(LESSC) --compress _less/stmwww.less >| css/stmwww.css

site: css
	$(JEKYLL)

test: css
	$(JEKYLL) --auto --serve --safe

clean:
	$(RM) -r _site css
