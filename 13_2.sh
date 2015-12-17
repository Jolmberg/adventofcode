#!/bin/bash

cat input13.txt | grep -o "^[A-Z][A-Za-z]*" | uniq | {
    for x in {a..h}; do
	read y
	eval "$x=$y"
    done
    for x in {a..h}{a..h}; do
	eval "$x=\$((\$(cat input13.txt | sed \"s/se / -/g\" | grep \"\$${x:0:1}\" | grep \"\$${x:1:1}\" | grep -o '\-\?[0-9]*' | head -c -1 | tr '\n' '+')))"
    done
    for x in {b..i}{b..i}{b..i}{b..i}{b..i}{b..i}{b..i}{b..i}; do
	echo $x
    done | grep "b.*c" | grep d | grep e | grep f | grep g | grep h | grep i | while read x; do
	eval echo "\$((a${x:0:1} + ${x:0:2} + ${x:1:2} + ${x:2:2} + ${x:3:2} + ${x:4:2} + ${x:5:2} + ${x:6:2} + ${x:7:1}a))"
    done
} | sort -rn | head -n 1
