.DEFAULT: site
.PHONY: site test clean deploy

LESSC = lessc
JEKYLL = jekyll

MIRROR = rsync -avz --rsh="ssh -p 722" --delete

css: css/stmwww.css
css/stmwww.css: $(wildcard _less/*.less) $(wildcard _bootstrap/less/*.less)
	mkdir -p css
	$(LESSC) --compress _less/stmwww.less >| css/stmwww.css

site: css _config.yml
	$(JEKYLL)

test: css
	$(JEKYLL) --auto --serve --safe

clean:
	$(RM) -r _site css

deploy: site
	$(MIRROR) \
		_site/ \
		stthnorg@stthomasmorewollaton.org.uk:/home/stthnorg/public_html/
	scp -P 722 .ht* stthnorg@stthomasmorewollaton.org.uk:~/public_html
