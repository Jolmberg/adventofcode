#!/bin/bash

a=0
z=`head -c 1000000 /dev/zero | tr '\0' 0`
sed '{ s/turn on/|/g; s/toggle/^/g; s/,/ /g; s/turn off\(.*\)/|\1\n^\1/g }' input6.txt | { while read o x1 y1 t x2 y2
  do
    w=${z:0:$(($x2-$x1+1))}
    h=${z:0:$(($y2-$y1+1))}
    l=${z:0:$x1}${w//0/1}${z:0:$((999-$x2))}
    p=${z:0:$((1000*$y1))}${h//0/$l}${z:0:$((1000*(999-$y2)))}
    a=`echo "print '{0:b}'.format(0b$a $o 0b$p)" | python`
  done
  echo -n $a | sed "s/0*//g" | wc -c
}
