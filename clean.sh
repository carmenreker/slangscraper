#!/bin/bash

# The original datasets were copied from table format
# These linux commands remove everything after the first word/entry,
# Leaving only the relevant information from the first column
# The lists are then sorted alphabetically without case-sensitivity,
# And directed to a new txt file

cat randstadraw.txt | sed 's/\t.*$//' | sed '/^-/d' | sort -f  > randstad.txt
cat nederlandraw.txt | sed 's/\t.*$//' | sed '/^-/d' | sort -f > nederland.txt