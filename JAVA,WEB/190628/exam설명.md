## 예제

### sampleanno01

`autowire="byType"`  : setter 메소드를 통해서 객체를 넣어줘 근데 type을 기반으로 객체를 찾아서 넣어줘

`autowire="byName"` : 이름을 기반으로 객체를 찾아줘 

---

### sampleanno02

FoodTeset에서 bean2를 경로로 잡고 하려면 MyFoodMgr에 매개변수 없는 생성자 하나를 생성해야함 

### sampleanno03

`<context:component-scan base-package="sampleanno03"/>` 이거 쓰려면 위에 `	xmlns:context="http://www.springframework.org/schema/context"` 선언해야함 

scannig 했으면 하는 패키지명 base-package에 sampleanno03을 주면 에노테이션 구문이 있는지 확인한다. @Override는 해당 x,. MyFoodMgr 보면 @componenet가 있다 이게 bean태그를 대신한다. Spring 컨테이너에게 알린다. myFood는 알아서 객체 생성 해달라. 클래스에서 첫 글자를 소문자로 바꾼게 이름이 된다. 만약 이름설정을 안했을시. 

@Autowired 이 멤버변수들도 객체를 넣어라. 

---

### samlpleanno04

@Component
public class Engineer {          Engineer.java 

따로 @Component 옆에 이름을 안주어서 class이름 앞 한글자를 소문자로 한뒤 engineer 가 이름으로 설정될것.

---

### sampleanno05

`<context:component-scan base-package="sampleanno05"/>`

이게 없으면 Spring 컨테이너가 하나하나 패키지를 열어 객체들을 검색하지 않는다. 

DriverCar.java

carTire 객체를 .getBean으로 찾아와서 호출 

---

### sampleanno06

@Component("samsung") component 태그 정의 이거 객체 생성은 Spring 컨테이너가 객체를 생성함

이거 결과 보려면 Run Configurations - Arguments에 Program arguments에 samsung, lg 둘중에 하나 값을 넣어주어야 출력이 된다. 

---

### sampleanno07

@Autowired
	private String userName;

String 객체를 Spring 컨테이너에게 

---

#### Multicontroller.java

insert

쿼리 문자열을 받는다. int 형이니까 쿼리 문자열을 받아서 int 형으로 바꾼다. 

