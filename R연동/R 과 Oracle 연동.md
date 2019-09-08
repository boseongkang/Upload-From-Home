## R 과 Oracle 연동

---

### 구현 과정 

1. 드라이버 프로그램 로딩(JDBC() 함수)
2. DBMS 서버 접속(dbConnect() 함수)
3. 수행하려는 데이터 처리 기능에 따라서 삽입, 삭제, 수정, 추출관련 SQL 문을 전달하거나 관련 함수를 수행시켜서 데이터베이스를 사용한다. 

R 에서 RDBMS를 연동하여 데이터를 처리하려는 경우 RJDBC 패키지와 DBI 패키지를 사용한다.

install.packages("DBI")
library(DBI)
install.packages("RJDBC")
library(RJDBC)

---

### DB 서버 접속 

drv <- JDBC("oracle.jdbc.driver.OracleDriver","ojdbc6.jar 파일 위치 ")
conn <- dbConnect(drv, "jdbc:oracle:thin:@localhost:1521:xe","계정명","암호")

### 테이블에 저장된 데이터 읽기

##### 방법1

result1 <- dbReadTable(conn, "VISITOR")

##### 방법2

result2 <- dbGetQuery(conn, "SELECT * FROM VISITOR")

##### 방법3

rs <- dbSendQuery(conn, "SELECT * FROM VISITOR")
ret1 <- dbFetch(rs)
ret2  <- dbFetch(rs,1)

### 테이블에 데이터 저장하기

##### 방법1

dbWriteTable(conn,"book",
             data.frame(bookname=c("자바의 정석","하둡 완벽 입문","이것이 리눅스다"),
                        price=c(30000,25000,32000)))
dbWriteTable(conn, "cars", head(cars,3))

##### 방법2

dbSendUpdate(conn,"INSERT INTO VISITOR VALUES('R 언어', sysdate,'R 언어로 데이터를 입력해요')")

dbSendUpdate(conn,"INSERT INTO VISITOR VALUES('하둡', sysdate,'대용량 데이터 분산저장& 처리기술')")

### 데이터 수정

dbSendUpdate(conn, "INSERT INTO cars (speed, dist) VALUES (1,1)")

dbSendUpdate(conn, "INSERT INTO cars (speed, dist) VALUES (2,2)")
dbReadTable(conn,"CARS")

dbSendUpdate(conn, "UPDATE CARS SET DIST = DIST * 100 WHERE SPEED = 1")
dbReadTable(conn, "CARS")

dbSendUpdate(conn, "UPDATE CARS SET DIST = DIST * 3 WHERE SPEED = 1")
dbReadTable(conn,"CARS")

### 테이블 삭제

dbRemoveTable(conn, "CARS")



