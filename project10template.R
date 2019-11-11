# Project 10 Solutions

# Student Name: Quinn Malisow

# Peer Collaborators (if any) and nature of the collaboration none
# TA help sought (if any) none
# Online resources used (if any) and weblink for location of resources none

# 1a. (2 pt)
# Comment about method of solution: Using cut to extract the amounts and dates found in all of the election data
cat /class/datamine/data/election/*.txt | cut -f\| -f1,15 >/class/datamine/data.election/myfile.txt
# Amounts and dates have been cut and placed into the new file called myfile.txt

# 1b. (1 pt)
# Comment about method of solution: Removing the 21 lines of header and saving it into a new file using the grep command
grep -v TRANSACTION myfile.txt >mynewfile.txt
# Output from the solution: 21 lines of headers successfully removed and moved into a new file called mynewfile.txt

# 2a. (1 pts)
# Comment about method of solution: Importing the data into R using read.delim
myDF = read.delim('/class/datamine/data/election/mynewfile.txt', sep="|")
# Data sucessfully imported into R

# 2b. (2 pts)
# Comment about method of solution: Creating a new column within the data that is stored in the date format. 
Dates = data.frame(as.date(myDF$CMTE_ID))
# Output from the solution: New dates created for the data (month, day, year)

# 3a. (2 pt)
# Comment about method of solution: Creating a table of the number of donations given per day. Using the head function to help cut the erroneous dates.
V2 = table(head(myDF$Transaction_AMT, myDF$Dates))
# Table created that house amount of transactions each day

# 3b. (2 pt)
# Comment about method of solution: Using tapply to add values from myDF$V2 and plot the resulting values
sums = tapply(head(myDF$V2, sum))
plot(myDF$sums)
# A plot is created using the sums found in myDF$2

