#!/bin/bash

sed 's/ [a-z/,. ]*/ /g' input14.txt | while read n s t r; do
    for x in $(seq 1 $((2502/(t+r) + 1))); do
        for y in $(seq 1 $t); do
            d=$((d+s))
            echo $d $n
        done
        for y in $(seq 1 $r); do
            echo $d $n
        done
    done | head -n 2503 | nl
done | sort -k 1,1n -k 2,2nr | while read i s n; do
    if [ "$i" != "$oi" ]; then
        echo $n
        os=$s
    elif [ $s == $os ]; then
        echo $n
    else
        os=-1
    fi
    oi=$i
done | sort | uniq -c | sort -rn | grep -m 1 -o "[0-9]*"
