## 서블릿

```
import java.io.*;
import javax.servlet.*;
import model.vo.MemberVO;

@WebServlet("/member")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String nickname = request.getParameter("nickname");
		String number = request.getParameter("number");
		String pwd = request.getParameter("pwd");
		MemberVO vo = new MemberVO();
		vo.setName((name=="")?"없음" :name);
		vo.setNickname((nickname=="")?"없음" :nickname);
		vo.setNumber((number=="")?"없음" :number);
		vo.setPwd((pwd=="")?"없음" : pwd);

		request.setAttribute("MemberInfo", vo);
		request.getRequestDispatcher("/jspexam/memberView.jsp").forward(request, response);

	}

}
```