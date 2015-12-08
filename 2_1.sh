#!/bin/bash

cat input2.txt | tr  x \  | while read a b c; do x=$(($a * $b)); y=$(($a * $c)); z=$(($b * $c)); m=$(( $x<$y ? ($x<$z ? $x : ($y<$z ? $y : $z)) : ($y<$z ? $y : $z) )); echo -n -$(( 2*$x + 2*$y + 2*$z + $m )); done | sed s/$/\\n/g | bc | tr -d -
