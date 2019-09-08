		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String nickname = request.getParameter("nickname");
		String number = request.getParameter("number");
		String pwd = request.getParameter("pwd");
		MemberVO vo = new MemberVO();
		vo.setName((name == "") ? "없음" : name);
		vo.setNickname((nickname == "") ? "없음" : nickname);
		vo.setNumber((number == "") ? "없음" : number);
		vo.setPwd((pwd == "") ? "없음" : pwd);
	
		request.setAttribute("MemberInfo", vo);
		request.getRequestDispatcher("/jspexam/memberView.jsp").forward(request, response);
request.getParameter() 는 HTTP 요청의 파라미터 값을 얻으려고 사용

웹은 HTTP 프로토콜 위에서 실행되는데 클라이언트가 서버에 HTML를 요청하면 서버가 응답해주는게 웹의 기본 구조

HTTP 요청을 보낼 때 파라미터를 함께 보냄. 로그인이나 입력 폼 보면 입력하고 submit에 의해 전송이 요청되면 HTTP 요청 안에 내용이 서버로 전송되는데 이때 로그인 내용이 HTTP 요청의 파라미터 이다.

HTTP 요청의 파라미터 값을 얻으려고 사용하는게 request.getParameter()메소드이다. HTML에서 <input type="text" name="name"> 이라면 Servlet에서는 String a(변수명) = request.getParameter("name"); 로 클라이언트가 입력한 name값을 받는다. 

### Form 태그 동작방법

1. FORM이 있는 웹 페이지로 이동
2. FORM 내용을 입력
3. FORM 안에 있는 모든 데이터를 웹 서버로 전송
4. 웹 서버는 받은 FORM 데이터를 처리하기 위해 웹 프로그램으로 전송
5. 웹 프로그램은 FORM 데이터를 처리
6. 처리결과에 따른 새로운 HTML 페이지를 웹 서버로 전송
7. 웹 서버는 받은 HTML 페이지를 브라우저로 전송
8. 브라우저는 받은 HTML 페이지를 보여줌

### FORM 태그 속성

FORM 태그 속성 종류는 name, action, method, target 등. FORM 속성을 이용하여 전송할 때 어디로 보내야 하는지 그리고 어떤 방법으로 보낼지 정한다.

- action : FORM을 전송할 서버 쪽 스크립트 파일을 지정합니다.
- name : FORM을 식별하기 위한 이름을 지정합니다.
- accept-charset : FORM 전송에 사용할 문자 인코딩을 지정합니다.
- target : action에서 지정한 스크립트 파일을 현재 창이 아닌 다른 위치에 열도록 지정합니다.
- method : FORM을 서버에 전송할 HTTP 메소드를 정합니다. (GET 또는 POST)

` 	<form method="post" action="/mvc/member">` 이런식으로 사용 post 메소드이고 mvc폴더 안 member라는 Servlet을 지정

전송할 HTTP 메소드 종류인 GET과 POST는 브라우저에서 폼 데이터를 가져와 서버로 전송하는 똑같은 기능을 수행하지만, 방식은 다름. GET은 FORM 데이터를 URL 끝에 붙여서 사용자 눈에 보이게 보내지만 POST 방식은 내부적으로 보이지 않게 보낸다.