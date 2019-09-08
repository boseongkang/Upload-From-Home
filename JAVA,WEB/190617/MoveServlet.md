## 키워드 입력받아 URL이동 

response 기본 객체는 request기본객체와 정반대 기능 수행, request 기본객체가 웹 브라우저가 전송한 요청 정보를 담고 있는 반면에 response 기본 객체는 웹 브라우저에 보내는 응답정보를 담는다.

자바 스크립트의 location.href()가 해당 코드를 만나는 순간 페이지를 이동시키고

response.sendRedirect()가 실행될때 페이지를 이동하는 것이 아니라 페이지의 Header정보의 HTTP상태 코드를 30로 바꿔 보내준다. 헤더 바꾸는건 response.sendRedirect()이하 모든 코드를 다 실행

request.getParameter("action"); request객체는 요청한 사용자의 정보를 싣고 가는 객체이다. 그중 많이 사용하는게 getParameter()이다. getParameter()는 문자열을 반환.

요것들은 GET,POST방식 form태그

`	PrintWriter out = response.getWriter();` response는 서버가 클라이언트에게 응답한다는 의미를 가진 객체. 서버가 클라이언트에게 응답하려면 무조건 response라는 객체를 통해 작업해야한다. getWriter()는 쓰기를 통해 응답하겠다라는 메서드이다. PrintWriter는 데이터 타입이다.

<hr>

아래 코드는 if문으로 url값에 아무것도 입력되지 않으면 전달된 URL이 없다고 출력.

else if로 그렇지 않은경우를 설정하고 (**여기서 다시 집고 넘어갈건 왜 비교연산자인 ==대신 equals를 썼는지. <u>equlas()는 메소드이다</u>. 객체끼리 내용을 비교하도록 하고 <u>==는 비교 연산자이다</u>.**<u></u> equals 메소드는 비교하고자 하는 대상의 내용 자체를 비교하고 == 비교 연산자는 대상을 비교) url값에 naver가 들어오면 response.sendRedirect()함수를 이용하여 ()괄호 안에 있는 URL로 페이지를 이동시켜주게된다. 

사이트로 이동을 원하면 인터넷 URL뒤에  ?action=naver, daum, google 에 따라 각각 네이버, 다음, 구글 홈페이지로 이동하게 되고 제일 처음 실행시에는 action값으로 준게 없기에 url==null인 상태 이므로  전달된URL이 없습니다.이 출력된다. 





```java
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/move")
public class MoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
		String url = request.getParameter("action");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		if(url==null)
			out.print("<h2>전달된URL이 없습니다.</h2>");
		else if(url.equals("naver"))
			response.sendRedirect("http://www.naver.com");
		else if(url.equals("daum"))
			response.sendRedirect("http://www.daum.net");
		else if(url.equals("google"))
			response.sendRedirect("http://google.com");
		out.close();
	}

}

```

