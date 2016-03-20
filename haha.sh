#!/usr/bin/env bash
set -e

COUGH=0
while getopts "c:" OPTION; do
  case $OPTION in
  c)
    COUGH="$OPTARG"
    ;;
  esac
done

function randy() {
  echo $((RANDOM % 2))
}
function rand_cough() {
  echo $(($RANDOM % $COUGH))
}

echo -n 'ha'

just_an_a='true'

while :
do

  sleep 0.01

  if [[ "$COUGH" -gt 0 ]] && [[ $(rand_cough) == 0 ]]; then
    echo -n " **cough** "
  fi
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
