
duke = c("사과 포도 망고")
dool2 = c("포도 자몽 자두")
ddochi = c("복숭아 사과 포도")
downur = c("오렌지 바나나 복숭아")
gilldong = c("포도 바나나 망고")
heedong = c("포도 귤 오렌지")

fruit_tm = c(duke, dool2 ,ddochi, downur, gilldong, heedong)

cps1 <- VCorpus(VectorSource(fruit_tm))
tdm1 <- TermDocumentMatrix(cps1, 
                           control=list(wordLengths = c(1, Inf)))

(m1 <- as.matrix(tdm1))

rowSums(m1)
#colSums(m1)

com1 <- t(m1) %*% m1
# 행열의 곱셈차이 이렇게하면 값 다르게 나옴 
#com1 <- m1 %*% t(m1)


dist(com1, method = "cosine") 
# 곱셈 뒤에 t(m1) 하고 실행시 값 이상하게 나옴  
#dist(com1, method = "cosine") 

# (1) 좋아하는 과일이 가장 유사한 친구들을 찾아본다.
# (2) 학생들에게 가장 많이 선택된 과일을 찾아본다.
# (3) 학생들에게 가장 적게 선택된 과일을 찾아본다.

# A1) 포도가 5번 선택되어서 제일 많다. 
# A2) 1번 3번이 코사인 값으로 봤을때 제일 0에 가까우니 제일 비슷하다는 이야기.
# A3) 귤, 자몽, 포도가 각각 1개씩 선택되어 제일 적음 
