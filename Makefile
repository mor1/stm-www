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
	$(JEKYLL) --auto --serve --safe --lsi

clean:
	$(RM) -r _site css

deploy: 
## don't push the built "_site" as we want to let the cronjob build it on the
## server. this permits upload and automatic publishing of commentaries etc.
	$(MIRROR) --exclude "_site" \
                --exclude ".git" --exclude ".gitignore" --exclude ".gitmodules" \
	    . \
	    stthnorg@stthomasmorewollaton.org.uk:/home/stthnorg/stm-www
