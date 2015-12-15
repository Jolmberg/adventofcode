#!/bin/bash

cat input9.txt | grep -o "[A-Z][A-Za-z]*" | sort | uniq | {
    for x in {a..h}; do
	read y
	eval "$x=$y"
    done
    for x in {a..h}{a..h}; do
	eval "$x=\$(cat input9.txt | grep \$${x:0:1} | grep \$${x:1:1} | grep -o '[0-9]*')"
    done
    for x in {a..h}{a..h}{a..h}{a..h}{a..h}{a..h}{a..h}{a..h}; do
	echo $x
    done | grep "a.*b" | grep c | grep d | grep e | grep f | grep g | grep h | while read x; do
	eval echo "\$((${x:0:2} + ${x:1:2} + ${x:2:2} + ${x:3:2} + ${x:4:2} + ${x:5:2} + ${x:6:2}))"
    done
} | sort -rn | head -n 1
