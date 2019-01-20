origData <- read.csv('.\\data\\511208482_T_ONTIME_REPORTING.csv', sep = ",", header = TRUE, stringsAsFactors = FALSE)

airports <- c('ATL','LAX','ORD','DFW','JFK','SFO','CLT','LAS','PHX')
origData <- subset(origData, DEST %in% airports & ORIGIN %in% airports)
origData$X <- NULL
origData$DEST_AIRPORT_SEQ_ID <- NULL
origData$ORIGIN_AIRPORT_SEQ_ID <- NULL

onTimeData <- origData[!is.na(origData$ARR_DEL15) & origData$ARR_DEL15!="" & !is.na(origData$DEP_DEL15) & origData$DEP_DEL15!="",]
onTimeData$ARR_DEL15 <- as.factor(onTimeData$ARR_DEL15)
onTimeData$DEP_DEL15 <- as.factor(onTimeData$DEP_DEL15)
onTimeData$ORIGIN_AIRPORT_ID <- as.factor(onTimeData$ORIGIN_AIRPORT_ID)
onTimeData$DEST_AIRPORT_ID <- as.factor(onTimeData$DEST_AIRPORT_ID)
onTimeData$DAY_OF_WEEK <- as.factor(onTimeData$DAY_OF_WEEK)
onTimeData$DEST <- as.factor(onTimeData$DEST)
onTimeData$ORIGIN <- as.factor(onTimeData$ORIGIN)
onTimeData$DEP_TIME_BLK <- as.factor(onTimeData$DEP_TIME_BLK)
onTimeData$OP_CARRIER <- as.factor(onTimeData$OP_CARRIER)
