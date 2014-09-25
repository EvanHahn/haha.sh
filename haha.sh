#!/usr/bin/env bash
set -e

function randy() {
  echo $(($RANDOM % 2))
}

echo -n 'ha'

just_an_a='true'

while :
do

  sleep 0.01

  if [[ $(randy) == 1 ]]; then
    echo -n 'h'
    just_an_a='false'
  else
    echo -n 'a'
    if [[ $just_an_a == 'false' ]] && [[ $(randy) == 1 ]]; then
      echo -n ' '
      just_an_a='true'
    fi
  fi

done
