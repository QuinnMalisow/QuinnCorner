# Optional Project 1 Solutions

# Student Name: Quinn Malisow

# Peer Collaborators (if any) and nature of the collaboration none
# TA help sought (if any) none
# Online resources used (if any) and weblink for location of resources none

# 1a. (1 pt)
# Comment about method of solution: Using Unix code to extract which five states have the most flight departures
cat /class/datamine/data/flights/*.csv | cut -d, -f17 | sort | uniq -c | sort -n

# Output from the solution 
#California: 22,222,245 departures 
#Texas: 21,029,844 
#Florida: 12,761,134
#Illinois: 12,160,250
#Georgia: 10,640,553

# 1b. (1 pt)
# Comment about method of solution: Using Unix code to find which five airport codesa have the most flight departures
cat /class/datamine/data/flights/*.csv | cut -d, -f15 | sort | uniq -c | sort -n

# Output from the solution
#ATL: 10,167,712
#ORD: 9,734,663
#DFW: 8,377,830
#LAX: 6,313,059
#DEN: 5,718,019

# 2a. (2 pts)
# Comment about method of solution: Read in the airport data into R and find which 5 states have the longest AVERAGE delays.
airports = read.csv('/class/datamine/data/flights/*.csv')
airport_state_delays = sort(table(airports$ORGIN_STATE_ABR, airports$DEP_DELAY), decreasing=TRUE)
head(mean(airport_state_delays, n=5))
# Output from the solution 
#California: 19 mins
#Georgia: 16 mins
#New York: 14 mins
#Illinois: 14 mins
#Texas: 13 mins

# 2b. (2 pts)
# Comment about method of solution: Finding which airplane departed from which airport the most number of times throughout the years.
airport_departures = sort(table(airports$TAIL_NUM, airports$ORIGIN), decreasing=TRUE)
head(airport_departures, n=3)
# Output from the solution Flight N295PQ Departed from ATL 3,043 times 

# 3. (4 pts)
# Comment about method of solution: Using R to create a map with airport locations in the Great Plains. Use google maps and API key to create the map and register data points from the latitude and longitude
library(ggmap)
airports = read.csv('http://stat-computing.org/dataexpo/2009/airports.csv')
plainResults = airports[airports$state == "CO", "KS", "MT", "NE", "NM", "ND", "OK", "SD", "TX", "WY", ]
airport_points = data.frame(plainResults(lon=airports$long,lat=airports$lat)
register_google(key='AIzaSyDYnLiu1jyxvo4hYqZJqqyZM7kx2fCpUls', write = TRUE)
usa_center = as.numeric(geocode('Lebanon, Kansas'))
usa_map = ggmap(get_googlemap(center=usa_center, zoom=4)
usa_map
map_with_points = usa_map + geom_point(data=airport_points, size=0.07)
map_with_points
# Output from the solution Map of the usa with airport points in the "Plain states"


