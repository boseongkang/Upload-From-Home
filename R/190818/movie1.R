library(rvest)
url<- "https://movie.daum.net/moviedb/grade?movieId=121137&type=netizen"
text <- read_html(url,  encoding="UTF-8")
text
#평점
nodes <- html_nodes(text, ".emph_grade")
grade <- html_text(nodes)
grade
#리뷰
nodes <- html_nodes(text, ".desc_review")
review <- html_text(nodes, trim=TRUE)
review
review <- gsub("\t", "", review)
review <- gsub("\r\n", "", review)
review <- gsub("\r", "", review)
review <- gsub("\n", "", review)
review <- gsub("신고", "", review)
review
page <- cbind(grade,review)
write.csv(page, "daummovie1.csv")
