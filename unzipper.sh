#!/bin/bash
x=$(file rabbithole)
result=${x}

if [[ $result == *"gzip"* ]]; then
  mv rabbithole rabbithole.gz
  gunzip rabbithole.gz
  echo 1
fi
*
if [[ $result == *"bzip2"* ]]; then
  mv rabbithole rabbithole.bz2
  bzip2 -d rabbithole.bz2
  echo 0
fi
