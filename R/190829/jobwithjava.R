install.packages("KoNLP")
install.packages("wordcloud2")
library(KoNLP)
library(RSelenium)
library(wordcloud2) 

remDr <- remoteDriver(remoteServerAddr = "localhost", port = 4445, browserName = "chrome")
remDr$open()
remDr$navigate("http://www.jobkorea.co.kr/")
# 자바 검색
webElem <- remDr$findElement(using = "css","[name = 'stext']")
webElem$sendKeysToElement(list("자바",key="enter"))

# 태그 리스트 추출
#smGiList > div.list > ul > li:nth-child(1) > span.detailInfo > p.gibInfo > a
#smGiList > div.list > ul > li:nth-child(30) > span.detailInfo > p.gibInfo > a
# 1 부터 30 까지 

page <- 1 
job <- NULL
cnt <- 0
repeat{
  for(i in 1:30){
    find <- paste0("#smGiList > div.list > ul > li:nth-child(",i,") > span.detailInfo > p.gibInfo > a")
    findtext <- remDr$findElements(using='css',find)
    tag <- sapply(findtext,function(x){x$getElementText()})
    print(tag)
    job<- c(job, unlist(tag))
  }
  
  page <- page+1
  #pageCss <- paste0("#smGiList > div.tplPagination > ul > li:nth-child(",page,") > a")
  #pageBtn <- remDr$findElements(using='css',pageCss)
  #sapply(pageBtn,function(x){x$clickElement()})
  if(page == 11 ){
    page <- 1
    cnt <- cnt+1
    if(cnt ==2 ){
      break
    }else{
      pageCss<- paste0("#smGiList > div.tplPagination > p > a")
    }
  }else{
    pageCss <- paste0("#smGiList > div.tplPagination > ul > li:nth-child(",page,") > a")
  }
  pageBtn <- remDr$findElements(using='css',pageCss)
  pageClick <- sapply(pageBtn,function(x){x$clickElement()})
  Sys.sleep(1)
}
job<- gsub(",","",job)
write(job,"jobwithjava.txt")
############################################## txt로 저장

#txt 읽어오기 

job_java <- readLines("jobwithjava.txt")
job_java2<- strsplit(job_java," ")
job_java3 <- data.frame(sort(table(unlist(job_java2)),decreasing = T)[1:15])
colnames(job_java3) <- c("키워드","빈도수")

write.csv(job_java3,"jobwithjava.csv",row.names = F)

wordcloud2(table(unlist(job_java2)))
