#!/bin/sh
while getopts 'lrv' opt; do
  case $opt in
    l)
      HOST='deploy-rachel';
      ;;
    r)
      HOST='deploy-remote-rachel';
      ;;
    #v)
    #  status=`vagrant status | grep test | grep running`;
    #  if [[ -z $status ]]; then
    #    vagrant up test
    #  fi
    #  HOST='vlocal';
    #  ;;
  esac
done

if [[ -z $HOST ]]; then
  echo -e 'ERROR:\tmust specify either local (-l), remote (-r) or virtual (-v)';
else
  scp -r * $HOST:/var/www/bierklub
fi
