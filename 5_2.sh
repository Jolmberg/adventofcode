#!/bin/bash

cat input5.txt | egrep "(..).*\\1" | egrep "(.).\\1" | wc -l
