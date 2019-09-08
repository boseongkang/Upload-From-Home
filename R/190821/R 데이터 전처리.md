## R 데이터 전처리  

---

## 데이터 전처리 - dplyr 패키지 

install.packages("dplyr")

library(dplyr)

패키지 설치후 library로 로드 

---

## dplyr 패키지 함수

**filter()** : 행 추출 

**select()** : 열(변수) 추출

**arrange()** : 정렬

**mutate()** : 변수 추가(생성)

**summarise()** : 통계치 산출

**group_by()** : 집단별로 나누기

**left_join()** : 데이터 합치기(열)

**bind_rows()**  : 데이터 합치기(행)

**head()** : 1~6번째 데이터 출력 

---

## 조건에 맞는 데이터만 추출하기

**exam %>%  filter(class == 1)** : class가 1인 결과 추출 `%>%` 이 기호는 ctrl+shift+m 누르면 된다

**exam %>%  filter(class ==1 & math >= 50)** : 여러 조건 동시 충족

**exam %>%  filter(math >= 90 | english >= 90)** : 여러 조건 중 하나 이상 충족

**exam %>%  filter(class %in% c(1,3,5))** : 여러 조건 중 하나 이상 충족 class가 1,3,5인 

---

## 필요한 변수만 추출하기

**exam %>%  select(math)** : math에 대한 정보만 추출

**exam %>%  select(-math, -english)** : math와 english 에 대한 정보는 제외하고 출력

---

## 순서대로 정렬하기

**exam %>% arrange(math)** : math를 오름차순으로 정렬

**exam %>% arrange(desc(math))** : math를 내림차순으로 정렬

**exam %>% arrange(class,math)** : class 및 math를 오름차순으로 정렬

---

## 파생변수 추가하기

**exam %>% mutate(total = math + english + science)** : 기존에 있던 행 옆에 total을 새로 만들고 거기에 math, english, science를 전부다 더한 값이 담긴다

**exam %>% mutate(test = ifelse(science >= 60, "pass", "fail")) %>%  head** : test에 science 숫자가 60이상이면 pass를 아니면 fail을 담는다

**exam %>% mutate(total = math + english + science, mean=(math + english + science)/3) %>%  head** : 여러 파생변수 한 번에 추가하기 

---

## 집단별로 요약하기

**exam %>% summarise(mean_math = mean(math))** : mean_math라는 이름으로 math를 mean(평균)한 값을 출력

---

## 각 집단별로 다시 집단 나누기

```R
mpg %>%
  group_by(manufacturer, drv) %>% #제조 회사별, 구동 방식별 분리
  summarise(mean_cty = mean(cty)) #cty 평균 산출
```

---

## 데이터 합치기(가로)

```R
test1 <- data.frame(id=c(1,2,3,4,5), midterm=c(60,80,70,90,85)) #중간고사 데이터 생성
test2 <- data.frame(id=c(1,2,3,4,5), final = c(70,83,65,95,80))  #기말고사 데이터 생성
total <- left_join(test1,test2,by = "id") # id 기준으로 통합하여 total에 담는다
```

중복 값이 있는 이름으로 by = " " 주어야 하는거 같다

## 데이터 합치기(세로)

```R
group_a <- data.frame(id = c(1,2,3,4,5), test = c(60,80,70,90,85)) #학생 1~5번 시험 데이터 생성
group_b <- data.frame(id = c(6,7,8,9,10), test = c(70,83,65,95,80)) #학생 6~10번 시험 데이터 생성
group_all <- bind_rows(group_a, group_b) # 데이터를 통합하여 group_all 에 담는다
```

---

## 데이터 정제

빠진 데이터(결측치), 이상한 데이터(이상치) 제거하기

##### 결측치 : 누락된 값, 비어있는 값 

함수 적용 불가, 분석 결과 왜곡하므로 제거 후 분석 실시 

결측치 표기 -> 대문자 NA

```R
df <- data.frame(sex = c("M","F",NA,"M","F"),
                 score = c(5,4,3,4,NA))
```

## 결측치 확인하기

### is.na(df) : 

```R
> is.na(df)
       sex score
[1,] FALSE FALSE
[2,] FALSE FALSE
[3,]  TRUE FALSE
[4,] FALSE FALSE
[5,] FALSE  TRUE
```

### 이런식으로 NA 자리에만 TRUE로 표시해준다.

### table(is.na(df)) : 

```R
>  table(is.na(df))

FALSE  TRUE 
    8     2 
```

### table을 이용하면 df 안에서갯수를 파악해준다

### table(is.na(df$sex)) :

```R
> table(is.na(df$sex))

FALSE  TRUE 
    4     1 
```

### table을 이용하면 sex 안에서갯수를 파악해준다

### table(is.na(df$score)) :

```R
> table(is.na(df$score))

FALSE  TRUE 
    4     1 
```

### table을 이용하면 score 안에서갯수를 파악해준다

## 결측치를 제외한 데이터로 분석하기

**df_nomiss <- df %>% filter(!is.na(score))** : score 안에서 NA인걸 제외한걸 df_nomiss에 담는다

```R
> df_nomiss
   sex score
1    M     5
2    F     4
3 <NA>     3
4    M     4
```

**mean(df_nomiss$score)** : 평균 값 출력

```R
> mean(df_nomiss$score)
[1] 4
```



