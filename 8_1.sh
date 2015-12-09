#!/bin/bash

n=$((`wc -m < input8.txt`-`wc -l < input8.txt`))
cat input8.txt | { while read -r a; do
    n=$(($n - `printf ${a} | wc -c` + 2))
  done
  echo $n
}
