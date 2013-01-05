stm-www
=======

to pad out standard `external.png`:

    convert external.png -background transparent -gravity west -extent $(identify -format '%[fx:W+10]x%H' external.png) external.png
