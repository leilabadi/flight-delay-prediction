library(caret)
library(randomForest)

rfModel <- randomForest(trainDataFiltered[-1], trainDataFiltered$ARR_DEL15, proximity = TRUE, importance = TRUE)

rfPrediction <- predict(rfModel, testDataFiltered)
rfConfMat <- confusionMatrix(rfPrediction, testDataFiltered[, "ARR_DEL15"])
