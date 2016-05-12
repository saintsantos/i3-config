#! /bin/env bash

clock() {
  date +%H:%M
}

battery() {
  cat sys/class/power_supply/BAT0/capcaity
}

while true:; do
  BAR_INPUT="%{c}LIFE : $(battery)%% TIME : $(clock)"
  echo $BAR_INPUT
  sleep 1
done
