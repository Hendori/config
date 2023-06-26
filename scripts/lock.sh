scrot /tmp/screen.png
files=(~/Wallpaper/*)
random_file="${files[RANDOM % ${#files[@]}]}"
printf "%s\n" ${random_file}
#magick ${random_file} -charcoal 9 -filter Hanning /tmp/screen.png
magick /tmp/screen.png  -spread 1 -paint 1  /tmp/screen.png
#magick /tmp/screen.png -blend ${random_file} /tmp/screen.png

#lock screen
i3lock -e -f -c 000000 -i /tmp/screen.png

#remove file
rm /tmp/screen.png
