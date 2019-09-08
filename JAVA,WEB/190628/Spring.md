## Spring

### Spring Bean 

Beans는 애플리케이션의 핵심을 이루는 객체, Spring IoC(Inversion of Control) 컨테이너에 의해 인스턴스화, 관리, 생성된다.

Beans 는 우리가 컨테이너에 공급하는 설정 메타 데이터(XML 파일)에 의해 생성된다.  컨테이너는 이 메타 데이터를 통해 Bean의 생성, Bean Life Cycle, Bean Dependency(종속성) 등을 알 수 있다. 

애플리케이션에 객체가 지정되면 해당 객체는 getBean( ) 메서드로 호출할 수 있다. 

---

### Spring Bean 정의 

일반적으로 XML 파일에 정의함

**속성** : 

​		id : Spring 컨테이너에서 유일하게 식별할 수 있는 이름(id대신 name 속성 사용가능)

​		class(필수) : 해당 bean의 읽어오려는 저장장소? (설명이 자세하고 원하는 해설이 없다.)

​		factory-method : 해당 클래스의 객체를 반환해주는 메소드(singleton에서)

​		ref : reference, 즉 id(혹은 name)를 갖는 bean을 생성자의 인자로 넘겨주겠다는 의미  

​		constructor-arg: 생성 시 생성자에 전달할 인수

​		property: 생성 시 bean setter에 전달할 인수

​		scope: 객체의 범위 (sigleton, prototype)

​		scope="singleton"  : 기본값이며 스프링 컨테이너당 하나의 빈 객체 생성
​		scope="prototype" : Bean을 요청할 때마다 새로운 객체 생성
​		scope="request"    :  http 요청마다 새로운 객체 생성(WebApplicationContext에서 사용) 
​		scope="session"    :  세션마다 새로운 객체 생성(WebApplicationContext에서 사용)

---

### Spring Bean Scope

스프링은 기본적으로 모든 Bena을 singleton으로 생성한 후 관리한다. 

애플리케이션 구동 시 JVM 안에서 Spring이 Bean 마다 하나의 객체를 생성하는 것을 의미한다.

| Scope          | Description                                                  |
| -------------- | ------------------------------------------------------------ |
| singleton      | 하나의 Bean 정의에 대해서 Spring IoC Container내에 단 하나의 객체만 존재 |
| prototype      | 하나의 Bean 정의에 대해서 다수의 객체가 존재할 수 있다.      |
| request        | 하나의 Bean 정의에 대해서 하나의 HTTP request의 생명주기 안에 단 하나의 객체만 존재함 각각의 HTTP request는 자신만의 객체를 가진다. |
| session        | 하나의 Bean 정의에 대해서 하나의 HTTP session의 생명주기 안에 단 하나의 객체만 존재함 |
| global session | 하나의 Bean 정의에 대해서 하나의 global HTTP request의 생명주기 안에 단 하나의 객체만 존재함 |

---

### Singleton

singleton bean은 Spring 컨테이너에서 한 번 생성된다. 

컨테이너가 사라질 때 Bean도 제거된다.

기본적으로 모든 Bean은 scope이 명시적으로 지정되지 않으면 singleton이다. 

**xml 설정**
`<bean id="..." class="..." scope="singleton"></bean>`
**annotation 설정**
대상 클래스에 @Scope("singleton")

----

### Prototype

prototype Bean은 모든 요청에서 새로운 객체를 생성하는 것을 의미한다.

prototype Bean은 의존성 관계의 Bean에 주입 될 때 새로운 객체가 생성되어 주입된다.
정상적인 방식으로 gc에 의해 bean이 제거된다.

**xml 설정**
`<bean id="..." class="..." scope="prototype"></bean>`
대상 클래스에 @Scope("prototype")