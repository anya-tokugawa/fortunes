#!/bin/bash -u
sleep=5
k=""
tput smcup

while true; do
  fortune
  echo
  read -t "$sleep" -N1 -s -r k < /dev/tty
  if [[ "$k" != "" ]];then
    break
  fi
done
tput rmcup
