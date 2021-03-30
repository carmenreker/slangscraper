#!/bin/bash

# loops through all tweet txt files
# takes all tweets that contain a randstad city
# takes all tweets that contain a non-randstad city
# ports both to a respective txt file

cat *.txt | grep -P '.*\t' | grep -f randstad.txt > randstadtweets.txt
cat *.txt | grep -P '.*\t' | grep -f nederland.txt > nltweets.txt