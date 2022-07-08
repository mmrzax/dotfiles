#!/bin/sh

# i3status Brightness Script
# https://github.com/mmrzax

######## Read brightness from "brightnessctl" ########
i3status | while :
do
  read line
  brightness_percent=`echo "scale=2 ; $(brightnessctl get) / 255 * 100" | bc`
  echo " $brightness_percent% | $line" || exit 1
done

####### Read brightness directly from sysfs ########
#i3status | while :
#do
  #read line
  #brightness="/sys/class/backlight/amdgpu_bl0/brightness"
  #while IFS= read -r value
  #do
    #brightness_percent=`echo "scale=2 ; $value/255*100" | bc`
  #done < "$brightness"
  #echo " $brightness_percent% | $line" || exit 1
#done
