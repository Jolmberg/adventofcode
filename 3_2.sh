#!/bin/bash

x=0; y=0;
{ sed 's/.\(.\)/\1/g' input3.txt; echo -n 0; sed 's/\(.\)./\1/g' input3.txt; } | while read -n 1 a; do case $a in '^') y=$(($y+1));; '>') x=$(($x+1));; '<') x=$(($x-1));; 'v') y=$(($y-1));; '0') x=0; y=0;; esac; echo $x $y; done | sort | uniq | wc -l
