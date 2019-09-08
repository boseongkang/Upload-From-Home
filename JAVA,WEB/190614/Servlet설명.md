##  서블릿 프로그래밍 정리 
Get방식이면 doGet을 오버라이딩 Post방식이면 doPost가 Servlet에서 기본방식

클라이언트에서 Get방식이지만 doPost라던지 같은 요청방식이 아니면 405 에러가 난다.

쿼리 문자열 : 웹 클라이언트가 

get은 주석이 보이고 post 는 안보인다. post는 form태그로만 요청

Servlet은 단독으로 수행될수 없다.

Servlet 컨테이너가 원하는 방식으로 우리가 만들어 주어야 한다. 

### Servlet의 수행상의 특징

- Servlet은 한 번 메모리 할당(객체생성)되면 할당된 상태를 계속 유지한다.    

- 여러 요청에 대해서 하나의 서블릿 객체를 공유해서 수행한다. 

- 각 시점 마다 호출되는 메서드가 정해져 있다. 

- 객체 생성후 - init()
  - 요청이 올 때마다 -service(), doGet(), doPost()
  -  객체 해제전 - destroy()

### 쿼리 문자열 추출 방법

 name=value&name=value&name=value...

HttpServletRequest 객체의 getParameter()

String getParameter(String대소문자 구분) : vlaue 값 또는 null 또는" 
            ---▲value값           ----------▲name getParmeter는 리턴값이 String
	String[] getParameterValues(String) : value 값들의 배열 또는 null
                           ▲getParmeterValues는 리턴값이 String인 배열

getParameterValues : 이건 한개이상 리턴

getParameter : 이건 한개만 리턴 

Get 방식의 경우에는 Query 문자열 추출시 한글이 깨지지 않는다.
Post 방식은 깨짐 : 추출하기 전에 request.SetCharacterEncoding("UTF-8")을 호출한 후에 추출 

**매핑명이 같으면▶ @WebServlet("/getpost") 톰캣 서버가 구동이 안된다.**

action 은 form태그에 입력한 servlet 프로그램의 URL

form 태그의 이름들은 각각 유니크 해야 한다. 

404는 NotFound

405는 get,post방식 오류

500은 실행오류

교재 305pg에 요청메시지와 응답 메시지 구조 그림설명

306pg getRequestURL() 요청 URL 추출 

307pg getParameter(name) 

308pg setContentType

URI 는 전체 URL 중 /sedu/query

### 요청 재지정

346pg

요청 재지정

foward: 같은 web project만 foward 할수있따. 다른 web project, website안된다. 동일한 서버의 동일한 project 자원만 요청재지정 가능

redirect : 제한없음.

redirect : A요청, A응답, body 응답x 일반적일 응답은 200인데 이때는 302

foward

redirect 기능으로 요청을 재지정하는 경우에는 HttpServletResponse객체의  sendRedirect() 메서드 사용