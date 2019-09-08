## RSelenium API    

---

| remDr <- remoteDriver(remoteServerAddr = "localhost", port = 4445, browserName = "chrome") | Selenium 서버에 접속하고 remoteDriver 객체 리턴 |
| ------------------------------------------------------------ | ----------------------------------------------- |
| remDr$open()                                                 | 크롬부라우저 오픈                               |
| remDr$navigate(url)                                          | 페이지 랜더링                                   |
| doms <- remDr$findElements(using = "css selector","컨텐츠를 추출하려는 태그의 선택자") | 태그를 찾는다                                   |
| sapply(doms,function(x){x$getElementText()})                 | 찾아진 태그들의 컨텐츠 추출                     |
| more <- remDr$findElements(using='css selector', '클릭이벤트를 강제로 발생시키려는 태그의 선택자') | 태그를 찾는다                                   |
| sapply(more,function(x){x$clickElement()})                   | 찾아진 태그에 클릭 이벤트 발생                  |
| 한칸에 안들어가서 아래에 적음                                | 페이지를 아래로 내리는(스크롤) 효과             |

webElem <- remDr$findElement("css", "body")

remDr$executeScript("scrollTo(숫자 원하는 픽셀위치, document.bosy.scrollHeight)",args = list(webElem))

위 두개 태그 = 페이지를 아래로 내리는 스크롤 효과