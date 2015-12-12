#!/bin/bash

n=0
egrep -o "[-]?[0-9]*" input12.txt | { while read a; do n=$(($n+$a)); done; echo $n; }
