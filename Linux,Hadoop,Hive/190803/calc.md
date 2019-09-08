### CalcServlet

html에서 form 태그로 감싸고 GET방식으로 요청하고 action으로 읽어올 Servlet 맵핑명 지정. 

입력 받을 숫자칸 두개에 각각 이름 지정해주고 이제 서블릿으로 이동 

int형 변수 두개 생성 html에서 지정한 name명을 `request.getParameter`로 가져와서 이걸 가져와서 바로 사용한다면 String 형이기 때문에 Integer.parseInt형을 사용해서 int형으로 변형해준다. 

String 형 oper 하나 생성, url 생성, Object형 result 생성 여기서 그냥 oper 는 연산자 인거 같다. html 보면 operator로 select에 연산자 정의 해놨음 

이제 아래에서 비교하며 식을 만듬. 

나눗셈을 할때 뒤에 숫자가 0이면 나눗셈이 성립되지 않기 때문에 뒤에 숫자가 0이며 나눗셈 연산자를 받았다면 error에 대한 결과를 작성한 jsp로 이동하게 해주고 결과물로는 result에 담아 출력해준다.

그리고 위에가 아니라면 결과창으로 이동하게 해준다.

---

### MemberServlet 

post로 줄때는 UTF-8설정 해주어야 한다. 

