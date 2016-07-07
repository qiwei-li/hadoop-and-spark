digits = read.csv("~/Github/hadoop-and-spark/spark-on-databricks/train.csv")
# only keep 3 and 8 
# since milb on spark only has binary method
isEight = digits[which(digits$label==3 | digits$label==8), ]

isEight$label[which(isEight$label == 8)] = 1
isEight$label[which(isEight$label == 3)] = 0
table(isEight$label)
write.csv(isEight, file="~/Github/hadoop-and-spark/spark-on-databricks/binaryTrain.csv",
          row.names = FALSE)
