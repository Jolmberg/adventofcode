#!/bin/bash

cat input2.txt | tr  x \  | while read x y z; do m=$(( $x>$y ? ($x>$z ? ($z+$y) : ($y>$z ? ($x+$z) : ($x+$y))) : ($y>$z ? ($x+$z) : ($x+$y)) )); echo -n -$(( 2*$m + $x*$y*$z )); done | sed s/$/\\n/g | bc | tr -d -
