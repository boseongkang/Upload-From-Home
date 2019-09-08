library(ggplot2)

irisdata <- iris
names(irisdata) <- c("SLENGTH","SWIDTH","PLENGTH","PWIDTH","SPECIES")
dbWriteTable(conn,"IRIS",irisdata)

#2.iris 테이블 불러오기
dbReadTable(conn,"IRIS")

#3.iris 테이블 시각화
ggplot(data=irisdata,aes(x=SLENGTH,y=SWIDTH)) +
  geom_point(aes(color=SPECIES))
ggsave("db1.jpg")

ggplot(data=irisdata,aes(x=PLENGTH,y=PWIDTH)) +
  geom_point(aes(color=SPECIES))
ggsave("db2.jpg")
