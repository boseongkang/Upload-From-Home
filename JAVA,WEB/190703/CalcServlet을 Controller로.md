## 전에 있던 CalcServlet

```
package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/calc")
public class CalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int oper1 = Integer.parseInt(request.getParameter("number1"));
		int oper2 = Integer.parseInt(request.getParameter("number2"));
		String oper = request.getParameter("operator");
		String url;
		Object result;

		if (oper2 == 0 && oper.equals("di")) {
			url = "jspexam/errorResult.jsp";
			result = "나눗셈 연산시 두 번째 숫자는 0일 수 없습니다!!";
		} else {
			url = "jspexam/calcResult.jsp";
			result = getResult(oper1, oper2, oper);
		}

		request.setAttribute("result", result);
		request.getRequestDispatcher(url).forward(request, response);
	}

	int getResult(int oper1, int oper2, String oper) {
		if (oper.equals("pl"))
			return oper1 + oper2;
		else if (oper.equals("mi"))
			return oper1 - oper2;
		else if (oper.equals("mu"))
			return oper1 * oper2;
		else
			return oper1 / oper2;
	}
}
```

