library(leaflet)
library(dplyr)
library(ggmap)
library(Kormaps) 

DONG<-read.csv('c:/RStudy/one.csv')
data(korpopmap3)
Encoding(names(korpopmap3))<-'UTF-8'
Encoding(korpopmap3@data$name_eng)<-'UTF-8'
Encoding(korpopmap3@data$name)<-'UTF-8'
Encoding(korpopmap3@data$행정구역별_읍면동)<-'UTF-8'

dong <- DONG %>% filter(구별=='종로구')
which(korpopmap3@data$name %in% dong$'동')


korpopmap3@data$name[1:18]
korpopmap3@data<-korpopmap3@data[c(1:18),] 
korpopmap3@polygons<-korpopmap3@polygons[c(1:18)] 

korpopmap3@data$name<-gsub('·','',korpopmap3@data$name) 
colnames(dong)<-c('구별','name','일인가구')

korpopmap3@data<-merge(korpopmap3@data,dong,by.x='name',sort=FALSE)
mymap <- korpopmap3@data
mypalette <- colorNumeric(palette ='RdYlBu' , domain = mymap$'일인가구')
mypopup <- paste0(mymap$name,'<br> 1인가구: ',mymap$'일인가구')

jongro <- NULL
jongro<-leaflet(korpopmap3) %>% 
  addTiles() %>% 
  setView(lat=37.49711, lng=127.062517, zoom=12) %>%
  addPolygons(stroke =FALSE,
              smoothFactor = 0.2,
              fillOpacity = .9,
              popup = mypopup,
              color = ~mypalette(mymap$일인가구)) %>% 
  addLegend( values = ~mymap$일인가구,
             pal =mypalette ,
             title = '인구수',
             opacity = 1)
jongro

install.packages("htmlwidgets")
library(htmlwidgets)

saveWidget(jongro,"map2.html")

#########################################
#강사님이 주신 소스 
# 동이름 뜨게 하는거 kormaps3 쓰지 말고 2로 사용 
library(Kormaps)
data(korpopmap2)
data(korpopmap3)
Encoding(korpopmap2@data$name)<-'UTF-8'
korpopmap2@data$code.data
korpopmap2@data$name
gucodename <- korpopmap2@data[,c("name", "code.data")]

names(gucodename)
Encoding(korpopmap3@data$name)<-'UTF-8'
korpopmap3@data$code.data
korpopmap3@data$name

guname <- '강동구'
gucode <- gucodename[gucodename$name == guname, "code.data"]
pattern <- paste0('^', gucode)
korpopmap3@data[grep(pattern, korpopmap3@data$code.data), 
                c("code.data", "name")]
