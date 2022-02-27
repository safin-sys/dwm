#!/bin/bash

nitrogen --restore &

dte(){
  dte=$(date +"%_I:%M%P | %a %d-%b-%y")
  echo "$dte"
}

wth(){
  wth=$(curl -s "wttr.in/Dhaka?format=1" | sed "s/[^0-9A-Z°]//g")
  echo "$wth"
}

while true; do
	xsetroot -name " $(wth) | $(dte) "
	sleep 1m
done &
