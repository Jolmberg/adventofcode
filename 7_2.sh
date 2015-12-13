#!/bin/bash

qqq=$(sed '{ s/1674/46065/; s/\(.*\) -> \(.*\)/\2=$(echo "print \1" | python);/; s/AND/\&/; s/RSHIFT/>>/; s/LSHIFT/<</; s/OR/|/; s/NOT/65535 ^/; s/ \([a-z][a-z]\?\)\([^a-z]\)/ $\1\2/g; }' input7.txt)
while [ -z $a ]; do eval $qqq &> /dev/null; done
echo $a
