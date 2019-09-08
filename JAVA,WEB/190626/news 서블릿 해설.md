## do Get해설

`	String tmpId = request.getParameter("id");
		String action = request.getParameter("action");`                getParameter() 는 return값이 String 만 가능, getParameter()는 String을 다루기 때문에 주로 쿼리스트링 값등을 받는데 사용                                                                               tmpId, action 이라는 변수명을 선언하고 각각 id 와 action 쿼리값을 받아주는거 만듬.

NewsDAO dao = new NewsDAO();                                                                                                    NewsDAO 클래스를 dao라는 변수명을 생성하고 객체 생성

`	if(action!=null&&tmpId!=null) {`                                                                                                            action이 null 값이 아니고(and) tmpId 값도 null이 아니라면

`	int id = Integer.parseInt(tmpId);`                                                                                                   tmpId값을 Integer.parseInt를 통해 String형으로 받던걸 int 형으로 받을 수 있게 형변환 하고 int 형인 id 에 넣어줌

`	if(action.equals("read")) {`                                                                                                 만일 action 이 read와 같다면. 여기서 ==는 비교 연산자이고 equals 는 메소드이다. 그러므로 객체끼리 내용을 비교하게 한다. 

`	NewsVO vo = dao.listOne(id);`                                                                                                     NewsVO 클래스 변수명 vo는 위에서 객체 선언한 dao.하면 NewsDAO 클래스에 접근 가능하기에 listone이라는 클래스에 id값을 넣어 불러올 수 있다. 

`request.setAttribute("vo", vo);`                                                                 setAttribute(String name, Object value) 메소드, 리턴타입은 void 이고 이름이 name인 속성 값을 value로 지정한다. 

`	}else if(action.equals("delete")) {`                                                                                              위 if문에 충족되지 않는다면 action이 delete와 같은지 객체끼리 비교

`if (dao.delete(id))`                                                                                                                         만약 dao(NewsDAO클래스에 속해있는 클래스들중) delete(id) 값에 해당된다면 

`request.setAttribute("msg", "뉴스가 성공적으로 삭제되었습니다.");`                                                                                      뉴스가 성공적으로 삭제되었다고 출력

`else
					request.setAttribute("msg", "뉴스를 삭제하는데  실패했습니다.");	} }`     아니라면 삭제못했다고 출력

`request.setAttribute("list", dao.listAll());`                                                                            이름이 list인 dao(NewsDAO클래스에 속해있는 클래스들중).listAll() 클래스를 속성값을 value로 지정 

`		request.getRequestDispatcher("jspexam/newsView.jsp").forward(request, response);`  RequestDispatcher는 클라이언트로부터 최초에 들어온 요청을 JSP/Servlet 내에서 원하는 자원으로 요청을 넘기는(보내는) 역할을 수행하거나, 특정 자원에 처리를 요청하고 처리 결과를 얻어오는 기능을 수행하는 클래스 즉 jspexam/newsView.jsp로 요청을 넘겨 수행하게 해줌 forward()메서드는 대상 자원으로 제어를 넘기는 역할  

여기까지 doGet

-------------

## do Post해설

` request.setCharacterEncoding("UTF-8");`                                                                                   post 방식에서 한글 깨짐을 방지하려고 써줌

`String action = request.getParameter("action");`                                                           `String id = request.getParameter("id");`                                                                                `String writer = request.getParameter("writer");`                                                              ` String title = request.getParameter("title");`                                                                                      `String content = request.getParameter("content");`                                                                                                                 getParameter() 는 return값이 String 만 가능, getParameter()는 String을 다루기 때문에 주로 쿼리스트링 값등을 받는데 사용                                                                               action,id 등 위와 같이 변수명을 선언하고 각각 action과 id값으로 쿼리값을 받아주는거 만듬.

`NewsVO vo = new NewsVO();`                                                                                                            NewsVO 클래스의 객체 생성하고 변수명 vo 로 줌  

`vo.setWriter(writer);`                                                                                                                           `vo.setTitle(title);`                                                                                                            `vo.setContent(content);`                                                                                                                            vo를 작성하고 .을 찍으면 위에서 객체 생성했기 때문에 NewsVO 클래스로 접근이 가능해서 setWriter, setTitle, setContent 꺼내옴 ( 괄호안에 온건 변수? 물어보기) 

`		NewsDAO dao = new NewsDAO();`                                                                                                          NewsDAO 클래스 객체 생성, 변수명 dao

`		if(action.equals("insert")) {`                                                                                                     만약 action 객체가 insert 객체와 같다면 {  중괄호 안 내용을 수행시켜라

`	boolean result = dao.insert(vo);`                                                                                         boolean 형 dao(NewsDAO 클래스 접근 가능한).insert  기능(NewsDAO에서 선언함) 을 result 에 담음

`if (result) {`                                                                                                                                                  만약 result가 참이라면 중괄호 안을 수행 시켜라                                            `request.setAttribute("msg", "뉴스가 성공적으로 입력되었습니다.");`                                      요거 수행                                                                                                                                                    `	} else {` 아니라면 다시 중괄호 안을 수행시켜라                                    `request.setAttribute("msg", "뉴스 입력에 실패했습니다.");}`                                           요거 수행 

`}else if(action.equals("update")){`                                                                                        action.equlas("insert")가 거짓이라면 update와 객체 비교하고 중괄호 안을 수행시켜라

`	vo.setId(Integer.parseInt(id));`                                                                                                                           vo(위에서 NewsVO클래스 객체 선언)안 id값을 Integer.parseInt로 int형으로 형변환

`boolean result = dao.update(vo);`                                                                                                       boolean 형 dao(NewsDAO 클래스 접근 가능한).update 기능(NewsDAO에서 선언함) 을 result 에 담음 

`if(result) {`                                                                                                                                       update기능의 result가 참이라면                                                                                                                       `request.setAttribute("msg", "뉴스가 성공적으로 수정되었습니다.");`                                                       라고 출력                                                                                                                                                  `	} else {` 아니면 중괄호 안 출력                                                                                                                                     `	request.setAttribute("msg", "뉴스 수정에 실패했습니다.");
			}` 요거 출력        

`request.setAttribute("list", dao.listAll());`                                                                               이름이 list인 dao(NewsDAO클래스에 속해있는 클래스들중).listAll() 클래스를 속성값을 value로 지정  

`		request.getRequestDispatcher("jspexam/newsView.jsp").forward(request, response);`  RequestDispatcher는 클라이언트로부터 최초에 들어온 요청을 JSP/Servlet 내에서 원하는 자원으로 요청을 넘기는(보내는) 역할을 수행하거나, 특정 자원에 처리를 요청하고 처리 결과를 얻어오는 기능을 수행하는 클래스 즉 jspexam/newsView.jsp로 요청을 넘겨 수행하게 해줌 forward()메서드는 대상 자원으로 제어를 넘기는 역할   

