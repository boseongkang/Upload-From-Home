##  Session 정리

**Cookie 기술** : 클라이언트 저장 

각 클라이언트별 상태 정보를 브라우저 안에 저장한다. 브라우저에 저장하므로 보안이 중요한 정보는 저장하면 안된다. 

**HttpSession 기술** : 서버 저장

클라이언트별 상태 정보를 웹 서버의 HttpSession 객체에 저장한다. 서버에 저장하므로 보안이 중요한 정보를 저장할 수 있다. 로그인, 쇼핑카트 기능 같은건 HttpSession 기술을 사용한다. 

#### HttpSession 객체를 활용하는 상태 정보 관리

- HttpSession 객체는 HttpServletRequest 객체의 getSession()또는 getSession(true)를 호출하여 생성
- HttpSession 객체는 클라이언트별로 한 개의 객체만 생성된다.  그러므로 클라이언트에 대한 HttpSession 객체가 생성된 이후에는 더 이상 생성되지 않으며 생성된 객체를 계속 사용한다. 
- HttpSession 객체는 자동 생성되는 것이 아니므로 필요 시 Servlet 프로그램 안에서 직접 생성해서 사용한다.
- 서버에 생성되는 HttpSession 객체는 세션 ID라고 하는 ID가 한 개 부여되고 이 ID로 HttpSession 객체를 관리한다.
- 브라우저에 보관되는 세션 ID는 브라우저가 구동되어 있는 동안만 유효하다.
- 서버에 생성된 HttpSession 객체는 클라이언트로부터의 요청이 일정 시간 전송되지 않으면 자동 삭제 된다. 
- 서버에 생성된 HttpSession 객체는 필요 시 강제 삭제가 가능하다.
- HttpSession 객체에 보관되는 상태 정보는 객체로 만들어서 유일한 이름과 함께 저장한다. 즉 name과 value 쌍으로 저장된다.  

HttpSession 객체를 생성하거나 추출 ▼

`HttpSession session = request.getSession();`

HttpSession 객체에 상태 정보를 보관할 객체를 등록(한번만)▼

`session.setAttribute("xxx",new Date());`

HttpSession 객체에 등록된 상태 정보 객체의 참조값을 얻어서 사용(읽기,변경)▼

`Date ref=(Date)session.getAttribute("xxx");`

HttpSession 객체에 등록된 상태 정보 객체가 더 이상 필요없으면 삭제가능▼

`session.removeAttribute("xxx");`

HttpSession 객체는 웹서버에 의해 자동 삭제되기도 하나 필요시 직접 삭제 가능▼

`session.invalidate();`

#### HttpSession 객체의 생성과 추출

HttpSession 객체에서 제공되는 HttpSession 객체 생성 메서드는 getSession()과 getSession(boolean)으로 오버로딩 되어있다.

getSession(): HttpSession 객체를 추출하거나 새로 생성한다.

getSession(true): HttpSession 객체를 추출하거나 새로 생성한다.

getSession(false): HttpSession 객체를 추출하여 리턴하고 없으면 null을 리턴.

