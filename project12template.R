# Project 12 Solutions

# Student Name: Quinn

# Peer Collaborators (if any) and nature of the collaboration None
# TA help sought (if any) None
# Online resources used (if any) and weblink for location of resources None

# 1a. (1 pt)
# Comment about method of solution: Using pattern matching to find airbnb listings with the certain first words
myDF <- read.csv("/class/datamine/data/airbnb/united-states/ca/los-angeles/2019-07-08/visualisations/listings.csv")
length(grep("^Beautiful",myDF$name,value=T))
length(grep("^Charming",myDF$name,value=T))
length(grep("^Cozy",myDF$name,value=T))
length(grep("^Modern",myDF$name,value=T))
length(grep("^Private",myDF$name,value=T))
# Beautiful: 1182 Charming: 928 Cozy: 1725 Modern: 899 Private: 2396

# 1b. (1 pt)
# Comment about method of solution: Using pattern matching to find airbnb listings with the certain last words
length(grep("Apartment$",myDF$name,value=T))
length(grep("Beach$",myDF$name,value=T))
length(grep("Hollywood$",myDF$name,value=T))
length(grep("Home$",myDF$name,value=T))
length(grep("House$",myDF$name,value=T))
# Apartment: 689 Beach: 858 Hollywood: 940 Home: 815 House: 830



# 3. (3 pts)
# Using grep and regular expressions to find how many reviews are about Keith Urban
myDF <- read.delim("/class/datamine/data/amazon/music.txt", quote="", header=F)
length(grep("Keith Urban", myDF$V1,value=T))
# 1688 reviews are about Keith Ubran

