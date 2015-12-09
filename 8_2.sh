#!/bin/bash

echo $(($(egrep -o '\"|\\' input8.txt | wc -l) + 2*$(wc -l < input8.txt)))
