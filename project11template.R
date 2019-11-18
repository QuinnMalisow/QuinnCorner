# Project 11 Solutions

# Student Name: Quinn Malisow

# Peer Collaborators (if any) and nature of the collaboration None
# TA help sought (if any) None
# Online resources used (if any) and weblink for location of resources none

# 1a. (2 pts)
# Comment about method of solution: Read in the data, then use grep to find cities that end in burg, boro, shire, etc.
R:
myDF <- read.delim("/class/datamine/data/election/itcont2020.txt", sep="|"

length(grep("BURG$", myDF$CITY, value=T))
length(grep("BORO$", myDF$CITY, value=T))
length(grep("SHIRE$", myDF$CITY, value=T))
length(grep("TON$", myDF$CITY, value=T))
length(grep("TOWN$", myDF$CITY, value=T))
length(grep("VILLE$", myDF$CITY, 
# Output from solution:
#Burg: 23621
#Boro: 10618
#Shire: 474
#Ton: 235188
#Town: 23323
#Ville: 107955

# 2a. (1 pt)
# Comment about method of solution: Using grep to find patterns where two vowels are next to eachother
length(grep("(AA){1}", myDF$NAME, value=T))
length(grep("(EE){1}", myDF$NAME, value= T))
length(grep("(II){1}", myDF$NAME, value=T))
length(grep("(OO){1}", myDF$NAME, value=T))
length(grep("(UU){1}", myDF$NAME, value=T))
#Output:
#AA: 972
#EE: 51858
#II: 46
#OO: 87946
#UU: 42

# 2b. (1 pt)
# Using as.character and nchar to find the donor with the largest name
as.character(nchar(length(head(myDF$NAME)))
#Wolfeschelgelsteinhausenbergerdorff

# 2c. (1 pt)
# Comment about method of solution: Using Grep to find donors with the same last name as mine
length(grep("^(MALISOW)", myDF$NAME, value=T))
# Output: 0

# 3a. (2 pts)
# Comment about method of solution: Cut using bash and then read into R
myDF <- read.delim("myelectiontowns.txt", quote="")
# Data successfully imported into into R

# 3b. (2 pts)
# Comment about method of solution: Using grep function to find how many city names end in ton
length(grep("TON$", myDF$CITY, value=T))
# 3763008

# 3c. (1 pt)
# Comment about method of solution: Using specific pattern matching to find unique cities
length(grep("(TON){1}$", myDF$CITY, value=T))
# 200678

