## WEB 복습 

- ```html
  <body> </body> 사이에 <h1> 문자열 </h1> 문자열 입력을 통해 화면상의 제목처럼 나타낼 수 있다.
  ```

- hr 태그를 사용하면 원하는 문장 아래 선이 생긴다. 
- - Typora에서는 HTML처럼 <hr> 이 태그를 앞에 쓰면 Typor자체에 밑줄과 동시에 코드입력이 가능해지는 형식이 생긴다.  

- <input type="text" name="stname" required>
- - required 사용시 '이 필드는 반드시 입력해야합니다.' 와 같은 문구가 뜬다.

- 이 코드를 혼자 쓸경우 입력창이 뜬다.<textarea name="memo" rows="10" cols="50"></textarea>
- - rows를 이용하여 열 길이 수정, cols를 이용하여 행 수정 쉽게말해 rows는 세로 cols는 가로를 의미한다. 

- <input type="submit" value="등록">
-  <input type="reset" value="재작성">
- - 위와 같이 input 태그의 type 속성값에 무얼 주는지에 따라 출력물이 다르다. 

| type 속성값 | 내용                                           |
| ----------- | ---------------------------------------------- |
| text        | 텍스트를 입력하는 창을 생성                    |
| password    | 비밀번호 입력값이 화면에 보이지 않는 창을 생성 |
| radio       | 라디오 버튼 생성                               |
| checkbox    | 체크박스를 생성                                |
| file        | 파일 이름을 입력하는 창 생성                   |
| image       | 이미지를 전송 버튼으로 만듬                    |
| hidden      | 사용자에게 보이지는 않지만 서버로 전송         |
| submit      | 서버로 제출/전송하는 버튼을 만듬               |
| button      | 버튼 생성                                      |

