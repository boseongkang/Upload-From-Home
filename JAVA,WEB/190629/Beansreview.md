## 전에 했던 소스 Beans이용하여 변경
 
`	<context:component-scan base-package="exam3" />` 이 코드를 이용해 불러올 소스의 위치 입력

`xmlns:context="http://www.springframework.org/schema/context"` 위 코드를 사용하려면 소스 페이지 상단에 이 코드를 입력해주어야 사용할 수 있다.

 `<bean factory-method="xxx"` factory-method=xxx(설정할 변수명)을 이용하여 Java Main클래스에서 수행시킬 변수명을 선언하는것. 선언하면 main소스에서 실행할때 입력한 변수명으로 호출한다. 

xml에서 전에 사용했던 코드와는 달리 이렇게 간편히 사용가능.

