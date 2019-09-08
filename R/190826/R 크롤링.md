```R 
library(RSelenium)
remDr <- remoteDriver(remoteServerAddr = "localhost", port = 4445, browserName = "chrome")
remDr$open()
site <- paste("https://www.istarbucks.co.kr/store/store_map.do?disp=locale")
remDr$navigate(site)

Sys.sleep(3)
#서울시
btn1Css <- "#container > div > form > fieldset > div > section > article.find_store_cont > article > article:nth-child(4) > div.loca_step1 > div.loca_step1_cont > ul > li:nth-child(1) > a"
btn1Page <- remDr$findElements(using='css',btn1Css)
sapply(btn1Page,function(x){x$clickElement()})
Sys.sleep(3)
#전체
btn2Css <- "#mCSB_2_container > ul > li:nth-child(1) > a"
btn2Page <- remDr$findElements(using='css',btn2Css)
sapply(btn2Page,function(x){x$clickElement()})
Sys.sleep(3)

index <- 0
starbucks <- NULL
#total에 총 지점갯수 저장
total <- sapply(remDr$findElements(using='css',"#container > div > form > fieldset > div > section > article.find_store_cont > article > article:nth-child(4) > div.loca_step3 > div.result_num_wrap > span"), function(x){x$getElementText()})


repeat {
  index <- index + 1
  print(index)
  
  storeCss <- paste0("#mCSB_3_container > ul > li:nth-child(",index,")")
  storePage <- remDr$findElements(using='css',storeCss)
  if(length(storePage) == 0) 
    break
  storeContent <- sapply(storePage,function(x){x$getElementText()})
  #index <- index + 1 x
  # print(index)
  #  name <- paste0("#mCSB_3_container > ul > li:nth-child(",index,")")
  #  scroll<-remDr$findElements(using ="css",name )
  #길이가 0 일때 멈추게끔 for문써도됨 집에가서 for문으로 해보자
  #if(length(scroll)==0)
  #  break
  #store <- sapply(scroll,function(x){x$getElementText()})
  
  #스타벅스 정보 
  storeList <- strsplit(unlist(storeContent), split="\n")
  shopname <- storeList[[1]][1]
  addr <- storeList[[1]][2]
  addr <- gsub(",", "", addr)
  telephone <- storeList[[1]][3]
  
  #위도 경도 뽑는거
  lat <- sapply(storePage,function(x){x$getElementAttribute("data-lat")})
  lng <- sapply(storePage,function(x){x$getElementAttribute("data-long")})
  
  starbucks <- rbind(starbucks ,cbind(shopname,addr,telephone,lat,lng))
  
  
  if(index %% 3 == 0 && index != total)
    remDr$executeScript("var dom=document.querySelectorAll('#mCSB_3_container > ul > li')[arguments[0]]; dom.scrollIntoView();", list(index))
  
}
write.csv(starbucks, "starbucks.csv", row.names = F)

```

