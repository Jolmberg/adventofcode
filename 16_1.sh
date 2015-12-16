#!/bin/bash

cat input16.txt | sed '{ s/$/,/; s/10,/k,/g; s/0,/a,/g; s/1,/b,/g; s/2,/c,/g; s/3,/d,/g; s/4,/e,/g; s/5,/f,/g; s/6,/g,/g; s/7,/h,/g; s/8,/i,/g; s/9,/j,/g; }' | egrep -v "n: [^d],|ts: [^h],|ds: [^c],|ns: [^d],|tas: [^a],|las: [^a],|h: [^f],|ees: [^d],|rs: [^c],|mes: [^b]," | grep -o "[0-9]*"
