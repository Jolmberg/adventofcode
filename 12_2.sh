#!/bin/bash

n=0
sed -e '{ :a; s/{[^{}]*:"red"[^{}]*}/0/; t a; s/{\([^{}]*\)}/_\1/; t a; }' input12.txt |egrep -o "[-]?[0-9]*" | { while read a; do n=$(($n+$a)); done; echo $n; }
