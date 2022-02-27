#!/bin/bash

nitrogen --restore &

DATE=$(date +"%a %d-%b-%y %_I:%M%P")
while true; do
	xsetroot -name "$DATE"
	sleep 1m
done &
