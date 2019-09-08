library(RSelenium)
remDr <- remoteDriver(remoteServerAddr = "localhost", port = 4445, browserName = "chrome")
remDr$open() 
site <- paste("http://www.yes24.com/24/goods/40936880")
remDr$navigate(site)
  
reviewVector = NULL
page <- 3
endFlag <- F
repeat{
  
  for(i in 3:7) {
    open_v <- paste0("#infoset_reviewContentList > div:nth-child(",i,") > div.btn_halfMore > a > em.txt.txt_open")
    open <- remDr$findElements(using='css', open_v)
    if(length(open) == 0){
      endFlag <- T
      break
    }
    sapply(open,function(x){x$clickElement()})
    Sys.sleep(1)
    
    review <- paste0("#infoset_reviewContentList > div:nth-child(",i,") > div.reviewInfoBot.origin > div.review_cont")
    review_art <- remDr$findElements(using='css',review)
    review_article <- sapply(review_art,function(x){x$getElementText()}) 
    reviewVector <- c(reviewVector, unlist(review_article))
  }
  
  if(endFlag == T){
    break
  }
  
  #infoset_oneCommentList > div:nth-child(4) > div.rvCmt_sortLft > div > a:nth-child(4)
  page <- page+1
  nextpage <- paste0("#infoset_reviewContentList > div.review_sort.sortBot > div.review_sortLft > div > a:nth-child(",page,")")
  pagebtn <- remDr$findElements(using='css',nextpage)
  sapply(pagebtn,function(x){x$clickElement()}) 
  Sys.sleep(1)
  if(page == 13 ){
    page <-3 
  }
  print(page)
}
write(reviewVector, "yes24.txt")