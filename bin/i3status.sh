#!/bin/sh

brightness="/sys/class/backlight/amdgpu_bl0/brightness"
while IFS= read -r value
do
  value_div=`echo "scale=2 ; $value / 255" | bc`
  value_percent=`echo "$value_div * 100" | bc`
  i3status -c $HOME/.config/i3status/config | while :
  do
    read line
    echo " $value_percent% | $line" || exit 1
  done
done < "$brightness"



#i3status -c $HOME/.config/i3status/config | while :
#do
  #read line
  #echo "mystuff | $line" || exit 1
#done

