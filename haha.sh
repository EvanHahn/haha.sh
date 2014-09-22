#!/bin/bash
set -e

echo -n 'ha'

just_an_a='true'

while :
do

  if [[ "$(($RANDOM % 2))" == "1" ]]; then
    echo -n 'a'
    if [[ $just_an_a == 'false' ]]; then
      if [[ "$(($RANDOM % 2))" == "1" ]]; then
        echo -n ' '
        just_an_a='true'
      fi
    fi
  else
    echo -n 'h'
    just_an_a='false'
  fi
  sleep 0.01

done
