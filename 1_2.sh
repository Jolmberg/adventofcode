#!/bin/bash

sed -e '{ :apa; s/(\(x*\))/x\1x/; t apa;}' input1.txt | grep -o ^x* | wc -c
