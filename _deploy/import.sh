#! /usr/bin/env sh
#
# Import uploaded files.
#
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

set -eux

ROOT=$(dirname $0)/../..
IND=$ROOT/incoming
OUTD=$ROOT/site

cd $IND
for d in * ; do
    pushd $d
    for f in *.pdf ; do
        OUTF=$OUTD/$d/_posts/${f%.pdf}.html
        LINK=/$d/$f
        cat > $OUTF <<EOF
---
layout: link
link: $LINK
permalink: /$d/:year-:month-:day-:title.html
---
EOF
        mv $f $OUTD/$d/_posts
    done
    popd
done
