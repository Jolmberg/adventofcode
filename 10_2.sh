#!/bin/bash

r=1113122113
for x in $(seq 1 50); do
  r=$(echo $r | egrep -o "1*|2*|3*" | while read a; do echo -n ${#a}; echo -n ${a:0:1}; done)
done
echo ${#r}
