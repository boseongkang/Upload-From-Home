## RSelenium 설치

---

`selenium-server-standalone-master` 이 압축 파일을 C 드라이브 아래 Rstudy 에 압축해제 시키고 압축해제된 폴더중 bin에 `chromedriver.exe`를 넣고 cmd 창을 켠다.

cd로 Rstudy 아래 bin 폴더까지 이동후 `java -jar selenium-server-standalone.jar -port 4445` 이 명령어를 주면 Selenium 서버가 기동된다. 

R 에서 테스트

```R
install.packages("RSelenium")
library(RSelenium)
remDr <- remoteDriver(remoteServerAddr = "localhost", port = 4445, browserName = "chrome")
remDr$open()
remDr$navigate("http://www.google.com/ncr")
webElem <- remDr$findElement(using = "css","[name = 'q']")
webElem$sendKeysToElement(list("JAVA",key="enter"))


```

