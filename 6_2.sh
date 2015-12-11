#!/bin/bash

n=0
for y in `seq 0 999`; do
    for x in `seq 0 999`; do
	p=0
	n=$(($n + $(sed '{ s/,/ /g; s/turn on/+1/g; s/turn off/-1/g; s/toggle/+2/g }' input6.txt | {
	    while read o x1 y1 t x2 y2
	    do
		if (($x >= $x1)) && (($x <= $x2)) && (($y >= $y1)) && (($y <= $y2)); then
		    p=$(($p$o))
		    (($p >= 0)) || p=0
		fi
	    done
	    echo -n $p
	})))
    done
done
echo $n
