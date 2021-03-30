#!/bin/bash

# takes a randstad/non-randstad file
# finds all the tweets that contain a word from the slang dataset
# counts the occurences
# also counts the total amount of tweets in the file

cat randstadtweets.txt | wc -l
cat randstadtweets.txt | grep -f straattaal.txt | wc -l
cat nltweets.txt | wc -l
cat nltweets.txt | grep -f straattaal.txt | wc -l