## Servlet 다시 정리

| 요청방식 | 설 명                                                        |
| -------- | ------------------------------------------------------------ |
| GET      | URI에 지정된 파일을 얻고자 할 때 사용되는 요청 방식으로 DEFAULT 방식. name = value로 구성되는 간단한 데이터(query문자열)를 URI 뒤에 추가하여 전달하면서 요청하고자 하는 경우에도 사용됨. |
| HEAD     | GET과 동일하지만 바디내용은 받지 않고 HTTP 헤더 정보만 받는다. |
| POST     | 원하는 방식으로 인코딩 된 데이터를 요청 바디에 포함하여 전송하면서 파일을 요청하고자 하는 경우 사용됨. Query 문자열 전달시 GET 방식을 보완한 요청방식 |
| OPTIONS  | 요청 URI에 대하여 허용되는 통신 옵션을 알고자 할 때 사용됨   |
| DELETE   | 서버에서 요청 URI에 지정된 자원을 지울 수 있따.              |
| PUT      | 파일을 업로드할 때 사용된다. 그러나 일반적으로 사용되는 파일 업로드는 POST 방식을 사용하고 있고, PUT은 아직 많이 사용되지 않는다. |

MVC(Model-View-Controller) 패턴

Model : 어플리케이션의 정보(데이터)를 담당.

View : 텍스트, 체크박스 항복 등과 같은 사용자 인터페이스 요소 담당.

Controller : 데이터와 비즈니스 로직 사이의 상호동작을 관리하고 어플리케이션의 기능을 담당. 

#### Controller는 Servlet 객체로 구현하고 View는 JSP로 구현, Model은 VO, DTO, DAO등의 JAVA 객체로 구현한다.

---

## Servlet 의 구현 방법

Servlet 은 HttpServlet 이라는 클래스를 상속하여 구현하고 어떠한 요청 방식을 지원하는 Servlet 인가에 따라 doGet(), doPost() 메서드를 오버라이딩하여 구현. 

### 요청 및 응답 객체 생성

웹 클라이언트로부터 Servlet 수행 요청이 전달되면, Servlet 컨테이너는 클라이언트로부터 전달된 요청 정보를 가지고 HttpServletRequest 객체와 HttpServletResponse 객체를 생성하여 Servlet의 doGet() 또는 doPost()메서드 호출시 아규먼트로 전달

---

### `<FORM>` 태그

HTML 문서에서 사용자의 입력을 서버로 전달하는 기능은 `<form>` 태그를 이용해 구현 Form태그의 속성.

action : 사용자의 입력 데이터를 처리할 CGI 프로그램의 URL 주소를 지정

method : 사용자의 입력 데이터를 넘겨주는 방식을 지정하는데, GET과 POST 방식 두 가지다. 

enctype : 서버로 보내지는 데이터의 형식을 지정하며 종류는 세 가지다. 

---

### HttpSession 객체를 이용한 상태정보 유지

-  상태 정보는 객체로 만들어서 서버에 보관한다.

- 상태 정보가 유지되는 최대 시간은 요청을 보내온 브라우저가 기동되어 있는 동안이다.

- 구현방법 

  - HttpSession 객체를 생성하거나 추출한다.
  - HttpSession 객체에 상태정보를 보관할 객체를 등록한다.(한번만 등록하면 된다.)
  - HttpSession 객체에 등록되어 있는 상태정보 객체의 참조 값을 얻어 사용한다.(읽기,변경)
  - HttpSession 객체에 등록되어 있는 상태정보 객체가 더 이상 필요 없으면 삭제 가능하다. 

  (1) HttpSession session = request.getSession(); 
  (2) session.setAttribute(“xxx”, new Data());  
  (3) Data ref = (Data)session.getAttribute(“xxx”); 
  (4) session.removeAttribute(“xxx");

- request.getSession() : HttpSession 객체를 추출하거나 새로이 생성한다. request.getSession(true) 와 동일하다. request.getSession(false) 는 HttpSession 객체를 추출하여 리턴하는데 없으면 null을 리턴한다.                 - session.setAttribute(“xxx”, new Data()) : 보관하려는 정보를 객체로 먼들어  HttpSession객체에 저장핚다. “xxx” 라는 이름으로 객체의 참조 값을 보관한다 . 

- session.getAttribute(“xxx”) : “xxx” 라는 이름으로 보관된 객체의 참조 값을 리턴한다. 

- session.removeAttribute(“xxx”) : “xxx” 라는 이름으로 보관된 객체의 참조 값을 삭제한다. 

- session.invalidate() : HttpSession 객체를 강제로 삭제한다

서버상에 생성되는 HttpSession 객체는 웹 클라이언트별로 하나씩 생성. HttpSession 객체가 생성될 때 Session ID가 하나 부여되고 이 Session ID는 요청을 보내온 클라이언트의 브라우저에 쿠키 기술로 저장되고 브라우저에 저장되는 Session ID에 대한 쿠키는 최대 유지 시간이 브라우저가 기동되어 있는 동안.

만약 브라우저가 재 기동되어 Session ID 가 사라진다면 서버에 생성된 HttpSession 객체는 더 이상 사용 불가. 클라이언트로부터 일정시간 동안 요청이 없는 경우 (기본 30분)에도 서버에 생성된 HttpSession 객체는 더 이상 사용 불가.