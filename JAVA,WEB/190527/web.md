# 웹

- ```
  http://localhost:8000/edu/first.html
  http://70.12.113.90:8000/edu/first.html --> HTTP URL 문자
                                --------------- URI 문자열
                                ----- edu=컨텍스트패스
                                →/edu 자리에 이름을 잘못하면 404에러 발생	
                                OOO 자리에 내 IP주소번호를 입력해도 가능
  http: 는 프로토콜이라고 한다. 
  document root 
  최상위 폴더는 WebContent 
  /first.html document root 에 가서 first.html을 찾아준다
  HTML을 테스트 합니다 라고 뜨는거 = 아마도(?) 랜더링
  ```

- ```
  WebContent/images WebContent 폴더 안에 images 라는 Folder 생성
  WebContent htmlexam Folder 생성 / HTML 파일들
  WebContent 아래 있어야 웹에서 실행가능
  <바로 앞에  파일명 속성값>
  <img src 
  <hr>쓰면 좀 있어보인다함  
  exam1.html URL : http://localhost:8000/edu/htmlexam/exam1.html
  ```

- 

```
<a href="http://www.w3.org/">W3C 홈페이지</a><br>
W3C 홈페이지란 이름으로 하이퍼링크 됨 

alt 그림 안나올때 대신 출력 

windows - web -html files, css, jsp - 제일 위 UTF-8 
<ul> un ordered list
<ol> ordered list 
<dt> definition
<dd> 
<dl>
<br> 개행처리 
http://localhost:8000/edu/htmlexam/exam3.html?stname=duke&stpwd=12345&stage=23&stcolor=%2380ff80
stname=duke&stpwd=12345&stage=23&stcolor=%2380ff80 = 쿼리 문자열
%23 은 샾임 #요거  

아무것도 없이 전송했을시▼
http://localhost:8000/edu/htmlexam/exam3.html?stname=&stpwd=&stage=&stcolor=%23000000 

가나다 이름으로 입력시▼
http://localhost:8000/edu/htmlexam/exam3.html?stname=%EA%B0%80%EB%82%98%EB%8B%A4&stpwd=1234&stage=10&stcolor=%23ffffff&stfood=on&stfood=on&stfood=on&stfood=on
%EA%B0%80 = 한글(가) %EB%82%98= 한글(나) 

value 값을 f3, f4로 입력후 회덮밥과 돈까스를 체크했을시▼
http://localhost:8000/edu/htmlexam/exam3.html?stname=%E3%84%B1&stpwd=&stage=&stcolor=%23000000&stfood=f3&stfood=f4
회덮밥과 돈까스가 stfood=f3으로 나옴

type = checkbox 에 checkbox 는 네모로 나오고 
type = radio에 radio 입력시 원형 체크 타입으로 크롬에 나오는걸 알수있음 

placeholder 힌트 모양 exam4.html 보면 이메일할때 이메일 앞부분만 쓰면 @뒤에 쓰라고 알려주는거 

&lt; less than 
&gt;
multiple 브라우저에서 여러개 파일을 선택가능
<hr> 은 줄이 하나 생김
<br> 줄 개행문자 자바에선 println 같은
colspan = 행과 병합
rowspan 은 밑 열과 병합
```
