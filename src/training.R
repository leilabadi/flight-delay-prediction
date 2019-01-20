library(caret)

set.seed(122515)

featureCols <- c("ARR_DEL15","DAY_OF_WEEK","OP_CARRIER","DEST","ORIGIN","DEP_TIME_BLK")
onTimeDataFiltered <- onTimeData[,featureCols]

inTrainRows <- createDataPartition(onTimeDataFiltered$ARR_DEL15, p = 0.70, list = FALSE)
trainDataFiltered <- onTimeDataFiltered[inTrainRows,]
testDataFiltered <- onTimeDataFiltered[-inTrainRows,]

logisticRegModel <- train(ARR_DEL15 ~ ., data = trainDataFiltered, method = "glm", family = "binomial")
