## Servlet 

Servlet 활용 코드. 

주소창에서 요청시 **null님 반가워요... 오늘은 목요일입니다!!** 로 뜬다. 왜냐하면 null값에 들어갈 이름(name)값을 주지 않았기 때문. 이름(name)값을 주려면 URL에 ?name=자신이 원하는 이름 을 치면 null자리에 이름명이 들어가게 된다.

```java
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/myfirst")
public class MyFirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		response.setContentType("text/html; charset=utf-8 ");
		PrintWriter out = response.getWriter();
		

		Calendar cal = Calendar.getInstance();
		char[] day= {'일','월','화','수','목','금','토'};
		
		out.print("<h2>"+name+"님 반가워요... 오늘은 "+day[cal.get(Calendar.DAY_OF_WEEK)-1]+"요일입니다!!</h2>");
		out.close();

	}

}

```

