#!/bin/bash

FN="$1"

case "$FN" in
    (*.gif) echo "a gif file"           # leading left parenthesis - OPTIONAL, so most people leave it off
            ;;
    *.[Pp][Nn][Gg]) echo "a png file"
            ;;
    *.jpg | *.JPEG) echo "a jpg file"
            ;;
    *.tif | *.TIFF) echo "a TIFF file"
            ;;&                         # fall through AND CONTINUE PATTERN MATCHING (bash 4+)
    *.mp3 | *.wav) echo "a music file"
            ;&                          # fall through AND TAKE THE NEXT CASE
    *) printf "File '%s' not supported.\n" "$FN"
        exit 1;
            ;;
esac
