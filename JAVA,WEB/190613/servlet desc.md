## Servlet 

직접 객체 만들어 응답해야함 

톰캣 기동해서 주소창에 쓰고 ?guest=이름 입력해야 null값에 이름이 들어감 

charset=utf-8  을 해주어야 한다. 

out.print 전에 써줘야한다. 

설정 안하면 ISO 머시기로 되서 한글이 깨짐 영문은 또 괜찮다. 



13줄 doGet 을 만약 전체 대문자로 한다면 405에러 뜬다. 허용되지 않는 메서드라고 뜬다. 

톰캣서버는 기동될때 인식된다. 

새로운 Servlet을 만들면 톰캣을 재기동 해줘야 함

톰캣은 대소문자 구분하니 대소문자 잘 지켜야 함 

컴파일 된 상태라 .class를 요청

**자바 애플릿** : 브라우저에서 실행되는 자바 file 

서블릿은 반드시 **mapping(매핑)** 해야한다.

292pg 애노테이션 설명  

Servlet 3.0부터 추가된 Servlet 정의 애노테이션

Servlet 3.0부터는 web.xml에 작성하던 Servlet 등록과 매핑, 초기 파라미터 설정, 리스너나 필터 등록과 같은 내용들은 Servlet 소스 내에서 애노테이션 구문으로 구현 방법을 지원하고 있다. 애노테이션을 사용하면 web.xml에 일일이 설정 태그를 작성해주지 않아도 된다. 

public void init(ServletConfig config) throws ServletException {

   // Servlet 클래스의 객체가 생성된 후에 호출되는 메서드

}

public void destroy() {

}



지역 변수는 그 다음에도 요청되는게 아니다.

지역 변수라는건 메소드 호출후에 사라짐

원할때까지 호출하려면 지역, 멤버 변수 다 안되서 Session 객체를 사용해야한다. 

request.getParameter : "guest"라는 이름으로 입력되는 value값 꺼내줘 어디서? 쿼리문자열에서 getParameter 쿼리문자열에서 어떤 이름으로 입력된 value값 꺼내는 메소드 "guest" 자리에 아무것도 없다면 null 리턴함. 

POST는 GET 방식처럼 주소창**URL에 쿼리문자열이 안나타난다. **

FORM태그를 써야만 POST 방식을 추출하는게 가능함 

GET은 아닌거 같음 .

POST 인경우는 request.setCharacterEncoding("utf-8"); 이거를 써줘서 셋팅을 해줘야한다. GET일때는 한글이 안깨지는데 POST일때는 저거를 설정해줘야만 한글 인식이 가능해진다 영문은 상관없음 .

