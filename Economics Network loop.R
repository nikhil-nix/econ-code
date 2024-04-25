d <- read.csv("Downloads/SAMPLE.csv", header = FALSE, na.strings=c(""))
df <- as.data.frame(t(d))

result <- apply(combn(seq(ncol(df)),2), 2,function(k) df[k,])
result <- na.omit(as.data.frame(t(as.data.frame(result))))
result <- result[order(result$V1),]
