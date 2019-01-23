#!/bin/bash
readonly system="$1"
readonly full_path_rom="$3"
rom_file="${full_path_rom##*/}"
rom="${rom_file%.*}"

killall omxplayer.bin
killall omxplayer
curl -i --max-time 2 -X GET "http://pimarquee2.local:8090/playing/$rom" 

