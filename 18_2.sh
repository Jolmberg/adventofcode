#!/bin/bash

e=$(head -c 102 /dev/zero | tr '\0' .)
f=$(cat input18.txt)
for g in `seq 0 99`; do
    a=
    f=$(sed '{ s/^./#/; s/.$/#/; s/. /# /; s/ ./ #/99; }' <<< $f)
    f=$(for x in $e $f $e; do
            a=$b
	    b=$c
	    c=.$x.
	    if [ -z $a ]; then continue; fi
	    for n in `seq 0 99`; do
		echo -n $(echo -n ${a:$n:3}${b:$n:3}${c:$n:3} | sed s/\\.//g | wc -m)${b:$n:2}
	    done | sed '{ s/[0-25-9].#/\./g; s/3.\./#/g; s/[^#.].//g; }'
	    echo ""
        done)
done
f=$(sed '{ s/^./#/; s/.$/#/; s/. /# /; s/ ./ #/99; }' <<< $f)
grep -o "#" <<< $f | wc -l
