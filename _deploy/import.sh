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

ROOT=/home/stthnorg
IND=$ROOT/public_ftp
OUTD=$ROOT/stm-www

cd $IND
for d in * ; do
    pushd $d
    for f in *.pdf ; do
        [ ! -r $f ] && continue
        OUTD_D=${OUTD}/$(echo ${f%.pdf} | sed 's,-,/,1' | sed 's,-,/,1' | sed 's,-,/,1')
        mkdir -p $(dirname $OUTD_D)
        OUTF=$OUTD/$d/_posts/${f%.pdf}.html
        LINK=/$d/pdfs/$f
        cat > $OUTF <<EOF
---
layout: link
link: $LINK
---
EOF
        cp $f $OUTD/$d/pdfs
    done
    popd
done

touch ${OUTD}/.imported
