#!/bin/bash

x=0; y=0; while read -n 1 a; do case $a in '^') y=$(($y+1));; '>') x=$(($x+1));; '<') x=$(($x-1));; 'v') y=$(($y-1));;  esac; echo $x $y; done < input3.txt | sort | uniq | wc -l
