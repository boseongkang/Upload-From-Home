## share 1,2,3

1 HttpServletRequest 객체 저장하여 전달 - request scope 

마지막 sharetest1 은 request scope num이 저장되지 않음

--------------

2 HttpSession 객체 저장하여 전달하는 방법 - session scope

sharetest2는 session scope로 num이 저장되서 쌓인다.

---------------------

3 ServletContext 객체에 저장하여 전달하는 방법 - application scope

sharetets3는 application scope로 num이 쌓이는데 2와는 다르게 다른 internet explorer에서도 쌓인다. 그니까 크롬에서 num=2 주고 explorer 가면 4가 된다는거. 

-------------------------------

ServletJSP프로그래밍 요약 pdf 

21쪽에 설명 있음 

첫 번째 그림이 위 1번 HttpServletRequest 객체 저장하는거 그림 설명

두번째 그림이 위 2번 HttpSession 객체 저장하는거 그림 설명

세번째 그림이 위 3번 ServletContext 객체 저장하는거 그림 설명

---------------------------

5pg 읽어보고 강의를 듣던 찾아보기 MVC 패턴

**.getAttribute()** 는 선택한 요소(element)의 특정 속성값(attribute)을 가져온다

**.setAttribute()**는 선택한 요서(element)의 속성값(attribute)을 정한다. 

**.setAttribute('속성이름', 속성값);**

**.getRequestDispatcher()**가 실행되는 순간 지정된 페이지를 읽어 리다이렉트 시킨다. 서버단에서 모든 작업이 이루어진다. **getRequestDispatcher()** 이후 코드는 실행되지 않고 무시된다. request, response 를 리다이렉트 시키는 페이지에 전달해서 사용할 수 있다.

 **.getSession() HttpSession**이 존재하면 현재 **HttpSession**을 반환하고 존재하지 않으면 새로운 세션을 생성한다. **.getSession()과 .getSession(true)는 같다.**

**.getSession(false)** 는 **HttpSession**이 존재하면 현재 **HttpSession**을 반환하고 존재하지 않으면 새롭게 생성하지 않고 그냥 null을 반환한다.

새로 생성된지 확인은 **session.isNew()**로 한다.  **getSession()**, **getSession(true)**는 null 체크없이 바로 getAttribute()를 사용해도 상관없지만 getSession(false)는 null을 리턴할수 있어서 null체크해야한다. if(변수명 != null) 이런식 