test <- read.csv("Data/test_2014.csv", stringsAsFactors=FALSE)


mat <- matrix(1, ncol=70)

submit <- data.frame(Id = test$Id, mat)
submit <- subset(submit, select=c(1,71,2:70))
names(submit) <- gsub("X", "Predicted", names(submit))
colnames(submit)[2] <- "Predicted0"

write.csv(submit, file = "Output/all_ones.csv", row.names = FALSE, quote = FALSE)
