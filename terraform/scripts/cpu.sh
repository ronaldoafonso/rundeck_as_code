#!/bin/sh -x

LOCK="/var/lock/cpu.lock"
DOCKER="/tmp/docker.tmp"
SORT="/tmp/sort.tmp"
TAIL="/tmp/tail.tmp"

if [ -e "$LOCK" ]; then
  exit 0
else
  touch "$LOCK"
fi

trap "rm -rf $DOCKER $SORT $TAIL $LOCK" EXIT

docker stats --no-stream --format "{{.Container}} {{.CPUPerc}}" > $DOCKER
sort -k2n $DOCKER > $SORT
tail -1 $SORT > $TAIL

[ -s "$TAIL" ] && docker restart $(cut -d ' ' -f 1 $TAIL)
