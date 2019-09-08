## Servlet (서버)

- 이전에 HTML(프런트)에서 등록을 누르면 새 화면이 뜨면서 기록이 남고 입력화면으로라는 하이퍼링크가 생성되는데 이때 이 <u>입력화면으로</u> 를 클릭한다면 다시 이전 사이트 URL로 이동하게 된다. 이게 바로 기본적인 Servlet의 원리이다. 새로운 창이 띄워지며 그 창에 출력되는게 아니라 기존에 있던 창으로 돌아가게 된다. 이 기능을 수행하기 위해 

  `	out.print("<a href='html/visitorForm.html'>입력화면으로</a>");` 이 줄을 작성한다.

  a 태그 href로 ' html/visitorForm.html' 로 이동하게 된다. 

```java
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/visitor")
public class VisitorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");

		String name = request.getParameter("name");

		Calendar time = Calendar.getInstance();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		String format_time1 = format1.format(time.getTime());

		out.print("<h2>" + name + "님이" +format_time1+"일에 남긴 글입니다."+"</h2>");
		out.print("내용 " + request.getParameter("content") + "<br>");
		out.print("<a href='html/visitorForm.html'>입력화면으로</a>");
		out.close();
	}

}

```

