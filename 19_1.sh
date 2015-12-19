#!/bin/bash

m=`tail -n 1 input19.txt`
grep = input19.txt | while read f x t; do
    for n in $(seq 1 $(grep -o $f <<< $m | wc -l)); do
	sed s/$f/$t/$n <<< $m
    done
done | sort | uniq | wc -l
