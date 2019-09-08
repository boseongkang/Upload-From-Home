url<- "https://movie.daum.net/moviedb/grade?movieId=121137&type=&page=1"
text <- read_html(url,  encoding="UTF-8")
text
# 영화제목
nodes <- html_nodes(text, ".link_profile")
profile <- html_text(nodes)
profile
# 영화평점
nodes <- html_nodes(text, ".emph_grade")
grade <- html_text(nodes)
grade
# 영화리뷰
nodes <- html_nodes(text, ".desc_review")
review <- html_text(nodes, trim=TRUE)
review
review <- gsub("\t", "", review)
review <- gsub("\r\n", "", review)
review <- gsub("\r", "", review)
review <- gsub("\n", "", review)
review <- gsub("신고", "", review)
review 
page <- cbind(profile,grade,review)
write.csv(page, "daummovie1.csv")
