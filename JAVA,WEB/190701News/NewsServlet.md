## NewsServlet 
 
@WebServlet("/news") 맵핑명을 통해 URL창에 news로 검색하면 화면이 출력되게 설정.

doGet을 이용하여 글이 삭제되는걸 만든다. 

`NewsDAO dao = new NewsDAO();` NewsDAO 클래스에 접근이 가능한  dao라는 변수명을 가진 객체를 생성

`	String action = request.getParameter("action");` 															 	                                                                                        웹 브라우저에서 전송받은 request 영역에서 name값이 "action" 인것을 찾아 그 값을 읽어 온다. 

`String newsid = request.getParameter("newsid");`																							 마찬가지

`if (action != null && action.equals("read")) {` 																		                                만약 action이 null값이 아니고 action이 read 객체라면 

`	NewsVO vo = dao.listOne(Integer.parseInt(newsid));` 																	                             위에서 객체 생성을 했기에 newsid을 Integer형으로 변환한후 vo로 선언한 변수에 담는다. 

`request.setAttribute("listone", vo);`																								                                                                   listone 속성값과 vo라는 속성명으로 설정 





```
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.NewsDAO;
import model.vo.NewsVO;

@WebServlet("/news")
public class NewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		NewsDAO dao = new NewsDAO();
		String action = request.getParameter("action");
		String newsid = request.getParameter("newsid");
		if (action != null && action.equals("read")) {
			NewsVO vo = dao.listOne(Integer.parseInt(newsid));
			request.setAttribute("listone", vo);
		} else if (action != null && action.equals("delete")) {
			boolean result = dao.delete(Integer.parseInt(newsid));
			if (result) {
				request.setAttribute("msg", "삭제되었습니다.");
			} else {
				request.setAttribute("msg", "삭제에 실패하엿습니다.");
			}
		}
		request.setAttribute("list", dao.listAll());
		request.getRequestDispatcher("/jspexam/news.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String id = request.getParameter("id");
		NewsDAO dao = new NewsDAO();
		NewsVO vo = new NewsVO();

		vo.setWriter(writer);
		vo.setTitle(title);
		vo.setContent(content);

		if (action.equals("insert")) {
			boolean result = dao.insert(vo);
			if (result) {
				request.setAttribute("msg", "저장되었습니다.");
			} else {
				request.setAttribute("msg", "저장에 실패 되었습니다.");
			}
		} else if (action.equals("update")) {
			vo.setId(Integer.parseInt(id));
			boolean result = dao.update(vo);
			if (result) {
				request.setAttribute("msg", "수정 되었습니다.");
			} else {
				request.setAttribute("msg", "수정 하지 못했습니다.");
			}
		}

		request.setAttribute("list", dao.listAll());
		request.getRequestDispatcher("/jspexam/news.jsp").forward(request, response);
	}

}
```

