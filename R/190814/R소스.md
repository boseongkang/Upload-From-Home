R 

```
L1 <- list(name="scott")
result <- list(sla=3000*2)
L2<-list("scott",c(100,200,300))
L3<-list("ish")
paste(L2,L3, sep = "")
a<-list(alpha=0:4, beta=sqrt(1:5), gamma=log(1:5))
a$alpha+10

grade <- sample(1:6,1)
if(grade<=3 ){
  cat(grade,"학년은 저학년입니다.")
}else{ 
  cat(grade,"학년은 고학년입니다.")
}

choice <- sample(1:5,1)
if(choice==1){
  result<-(300+50)
}else if(choice==2){
  result<-(300-50)
}else if(choice==3){
  result<-(300*50)
}else if(choice==4){
  result<-(300/50)
}else{
  result<-(300%%50)
}
cat("결과값:",result)

#switch 문을 대신하는 함수
month <- sample(1:12,1)
month <- print(paste(month,"월",sep=""))
result <- switch(EXPR=month,
                 "12월"=,"1월"=,"2월"="겨울",
                 "3월"=,"4월"=,"5월"="봄",
                 "6월"=,"7월"=,"8월"="여름",
                 "가을")
cat(month,"은 ",result,"입니다","\n",sep="")

choice <- sample(1:5,1)
result <- switch(EXPR=choice,
                 300+50,
                 300-50,
                 300*50,
                 300/50,
                 300%%50)
cat("결과값:",result)

time <- 32150
sec<-time%%60
min<-time%%3600%/%60
hour<-time%/%3600
cat(hour,"시간", min,"분", sec,"초")

#시간 = (초 / 3600) 값에 대한 양수
#분 = ((초 / 3600) 나머지 값 / 60) 값에 대한 양수
#초 = (초 / 60) 나머지 값
sec<-time%%60
min<-time%%3600%/%60
hour<-time%/%3600

```

