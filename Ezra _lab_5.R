library(RCurl)
library(jsonlite)
station_link <- 'https://gbfs.citibikenyc.com/gbfs/en/station_status.json' 
apiOutput <- getURL(station_link)  
apiData <- fromJSON(apiOutput)  
stationStatus <- apiData$data$stations 
cols <- c('num_bikes_disabled','num_docks_disabled', 'station_id', 'num_ebikes_available', 'num_bikes_available', 'num_docks_available') 
stationStatus = stationStatus[,cols] 
