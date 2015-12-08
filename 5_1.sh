#!/bin/bash

cat input5.txt | egrep -v "ab|cd|pq|xy" | grep "[aeiou].*[aeiou].*[aeiou]" | egrep "(.)\\1" | wc -l
