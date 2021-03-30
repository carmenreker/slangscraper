# slangscraper

# Important 
This data can only be used on a machine that has access to the Karora corpus from the University of Groningen. Distribution is not allowed so data must be accessed directly.


# Data

This set of tools processes Dutch tweets from February 2020 and August 2020 and counts the occurences of slang terms from a determined dataset.

# Installation

## Cloning

1. Go to the directory where you want the files to be downloaded.
2. Use git clone
```
 git clone https://github.com/carmenreker/slangscraper
```
3. press enter to clone the repository to your machine.

## Executing program

An internet connection is required to run the program, as wget needs to connect to the URL to access the data.
Use chmod as follows to be able to run the programs :
```
chmod +x filename.sh
```
Do this for every .sh program

Run the programs in this order:
```
./clean.sh
```
```
./location.sh
```
```
./slanggrepper.sh
```
# Results

The program will return 5,945,619 tweets in the Randstad, 180 containing slang and 13,442,260 tweets for the rest of the Netherlands, 231 containing slang.

# Sources

City dataset collected from https://www.metatopos.eu/Wpnr.php
Slang dataset collected from https://www.straattaalwoordenboek.nl/

# Editing
The following terms were removed from the slang dataset because of a double meaning with standard Dutch:
Anti
Bumpers
Chick
Chillen
Das
Ede
For Real
Greedy
Goofy
Ice
JWZ
Kaasje
Kip
Longen
Love ya
Lauw
Lyrics
Lotto
Nek
Nachtwandelaar
OV
Pit
Ruurd
Tamara
