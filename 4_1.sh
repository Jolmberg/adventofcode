#!/bin/bash

for i in `seq 1 9999999`
do
  echo -n iwrupvqb$i | md5sum
done | grep -m 1 -n ^00000 | sed "s/:.*//"
