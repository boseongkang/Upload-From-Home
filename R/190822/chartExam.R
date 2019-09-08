#1
log <- read.table("product_click.log")

png(filename="clicklog1.png", height=600, width=900, bg="white")

plot(log$V2 , col=terrain.colors(15) ,main="세로바 그래프 실습", xlab="상품ID" ,ylab="클릭 수")
dev.off()
 
#2
clicktime <- str_sub(log$V1,9,10) #V1에서 9,10번째의 범위가 09에서 17까지
timelabel <- as.numeric(sort(unique(clicktime)))

png(filename="clicklog2.png", height=700, width=600, bg="white")
pie(table(clicktime),col=topo.colors(10),main="파이그래프 실습",
    labels=paste(timelabel,"~",timelabel+1))
dev.off()
