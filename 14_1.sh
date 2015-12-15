#!/bin/bash

sed 's/[^0-9]\+/ /g' input14.txt | while read s t r; do echo $(( (2503/(t+r))*s*t + (((2503%(t+r))<t) ? (2503%(t+r)) : t) * s )); done | sort | tail -n 1
