#!/bin/bash

echo $((`wc -c < input1.txt` - `grep -o \) input1.txt | wc -c`))
