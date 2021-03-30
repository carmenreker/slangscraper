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

## Collecting data

### Tweets

Through ubuntu, you can remote into Karora with the command
```
ssh <your credentials>@karora.let.rug.nl
```
Through here you can access tweet2tab. You can retrieve the data in any format you want, but because of file size, we collected it by day.
For the same results, use
```
zless /net/corpora/twitter2/Tweets/2020/02/20200201*.out.gz | /net/corpora/twitter2/tools/tweet2tab -i user.location text > output_test.txt
```
Explanation:  
2020 - year  
02 - month  
20200201 - year, month, day  

To move the retrieved data to your own machine, log out of Karora, go to the folder where you want to download the data and use
```
scp <your-credentials>@karora.let.rug.nl:/path/to/tweets /local/path
```
use 'pwd' to find the path for /local/path  
/path/to/tweets is where you saved the txt file.  

### Slang

Slang collected from https://www.straattaalwoordenboek.nl/

Data was manually collected by copying and pasted. Make sure to save it in a file called straattaal.txt

The following terms were removed from the slang dataset because of a double meaning with standard Dutch or English:  
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

### Places

City dataset collected from https://www.metatopos.eu/Wpnr.php  
Data was manually copied and pasted into two txt files.  
Selecting all table entries is fine, this will be cleaned up later.  

Put all cities from Noord-Holland, Zuid-Holland and Utrecht into a file called randstad.txt
Put all cities from the other provinces (Groningen, Friesland, Drenthe, Overijssel, Gelderland, Zeeland, Noord-Brabant and Limburg) into a file called nederland.txt

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
