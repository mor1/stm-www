# Copyright (C) 2012 Richard Mortier <mort@cantab.net>.  All Rights
# Reserved.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307,
# USA.

.DEFAULT: site
.PHONY: site test clean deploy

LESSC = lessc
JEKYLL = jekyll

MIRROR = rsync -avz --rsh="ssh -p 722" --delete \
	--exclude "_site" --exclude "_bootstrap" --exclude ".rebuilt" \
	--exclude ".git" --exclude ".gitignore" --exclude ".gitmodules"

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

deploy: css
## don't push the built "_site" as we want to let the cronjob build it on the
## server. this permits upload and automatic publishing of commentaries etc.
	$(MIRROR) \
		. \
	    stthnorg@stthomasmorewollaton.org.uk:/home/stthnorg/stm-www

rebuild:
## invoke the rebuild script on the server; assumes have deployed.
	ssh -p 722 stthnorg@stthomasmorewollaton.org.uk \
		"./stm-www/_deploy/rebuild.sh"

retrieve: 
## recover site source from server, allowing retrieval of results of
## commentary, etc import..
	$(MIRROR) \
	    stthnorg@stthomasmorewollaton.org.uk:/home/stthnorg/stm-www/ \
		./
