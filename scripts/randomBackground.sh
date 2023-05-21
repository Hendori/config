files=(~/Wallpaper/*)
random_file="${files[RANDOM % ${#files[@]}]}" 
printf "%s\n" ${random_file}

