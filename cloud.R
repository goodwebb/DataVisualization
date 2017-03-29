library("wordcloud2")
wbname <- 'C:/Users/user/Desktop/2016電影.txt'
data2 <- read.table(wbname, header=F, sep=",",col.names=c("word","freq"))
cc<-data.frame(data2)
cc<-rbind(cc,demoFreq)
colorVec1 <- rep(c('red', 'blue'), length.out=21)
colorVec2 <- rep('yellow', length.out=nrow(cc)-21)
colorVec <- c(colorVec1,colorVec2)
wordcloud2(cc,color=colorVec,shape = 'diamond')