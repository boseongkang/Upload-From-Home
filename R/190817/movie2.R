# 여러 페이지
site<- "https://movie.daum.net/moviedb/grade?movieId=121137&type=&page="
movie.review <- NULL
for(i in 1: 100) {
  url <- paste(site, i, sep="")
  text <- read_html(url,  encoding="UTF-8")
  nodes <- html_nodes(text, ".link_profile")
  profile <- html_text(nodes)
  nodes <- html_nodes(text, ".emph_grade")
  grade <- html_text(nodes)
  nodes <- html_nodes(text, ".desc_review")
  review <- html_text(nodes, trim=TRUE)
  review <- gsub("\t", "", review)
  review <- gsub("[\r\n]", "", review)
  review <- gsub("신고", "", review)
  page <- cbind(profile,grade,review)
  movie.review <- rbind(profile,movie.review, page)
}
write.csv(movie.review, "daummovie2.csv")
