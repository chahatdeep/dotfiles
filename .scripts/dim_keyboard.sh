#!/bin/bash

let "div = 1000"
let "limit = $1"
dimmed=false
cmd=/sys/class/leds/asus::kbd_backlight/brightness

while true
do
  sleep 2
  let "idle = $(xprintidle)"
  if [ $(($idle / $div)) -gt $limit ] && [ $dimmed == false ]; then
    echo 0 | tee $cmd 
    dimmed=true
  elif [ $(($idle / $div)) -le $limit ] && [ $dimmed == true ]; then
    echo 3 | tee $cmd 
    dimmed=false
  fi
done
