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

upd(){
  upd=$(checkupdates | wc -l)
  if [[ $upd -eq 0 ]]
    then
      echo ""
    else
      echo " $upd |"
  fi
}

while true; do
	xsetroot -name " $(upd) $(wth) | $(dte) "
	sleep 30s
done &
