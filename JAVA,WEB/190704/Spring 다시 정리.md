## Spring 다시 정리
 
### Spring IoC

프로그램에서 필요한 객체 생성을 Spring FW에서 하고 객체를 필요로 하는 곳에 주입하는 것과 객체를 찾을 때 제공하는 것 모두 Spring FW이 대신 처리한다. Spring FW에 의해 관리되는 Java 객체를 **"bean"** 이라고 부르며 이 일을 담당하는 Spring FW의 구성요소를 **IoC 컨테이너** 라고 한다. IoC (Inversion of Control)

**Spring DI 는 객체간의 결합도를 느슨하게 하는 Spring의 핵심 기술.**

---

- **Spring DI 컨테이너 초기화** 

`ApplicationContext context = new ClassPathXmlApplicationContext("빈 설정 파일");` 

- DL의 예   DL = Dependency Lookup **의존성 검색** 정도로 해석

타입명 bean = (타입명)context.getBean("빈 이름");

- DI의 예  DI =  Dependency Injection의 약자로 번역 하면 **의존성 주입**
  - Construction Injection : 생성자를 통해서 객체 바인딩(의존관계를 연결)
  - Setter Injection : setter메서드를 이용해서 객체 바인딩(의존관계를 연결) 

**DI 설정** 

- XML 설정

설정 정보를 변경할 때는 XML만 변경하면 된다. 

많은 프레임워크, 라이브러리가 XML 스키마를 이용한 설정의 편리함을 지원한다.

프로젝트 규모에 따라서 XML 문서의 내용이 많아지게 된다. 

코드를 실행해야 설정 정보의 오류를 확인 할 수 있다.

- ANNOTATION 설정

소스안에 정해진 ANNOTATION 들을 사용한다. 

---

## XML 설정

`<bean>`    : Spring DI 컨테이너가 관리할 Bean 객체를 설정

ID : 주입 받을 곳에서 호출할 이름 설정

class : 주입할 객체의 클래스

factory-method: Singleton 패턴으로 작성된 객체의 factory 메소드 호출 시 

---

## Constructor를 이용한 객체간의 관계 또는 값을 주입

- 객체 또는 값을 생성자를 통해 주입 받는다. 한번에 여러 개 설정 가능하다. 
- `<constructor-arg>` : `<bean>`의 하위태그로서 다른 bean 객체 또는 값을 생성자를 통해 주입하도록 설정한다.

### 하위태그 이용 

- `<ref bean="bean name"/>` --> 객체를 주입 시

- `<value>값</value>`--> 문자(String), Primitive data 주입시
  type 속성 : 값을 1차로 String으로 처리한다. 값의 타입을 명시해야 하는 경우
  사용 예) `<value type="int">10</value>`

속성 이용 

- ref="bean 이름"

- value="값"

----

## setter 메소드를 통한 객체간의 관계 또는 값을 주입

- setter를 통해서는 하나의 값맊 설정핛 수 있다.
- <property> : <bean>의 하위태그로 다른 bean 객체 또는 값을 property를 통해 주입하도록 설정
- name 속성 : 객체 또는 값을 주입핛 property 이름을 설정핚다.(setter의 이름)
- 설정방법
1) <ref>, <value>와 같은 하위태그를 이용하여 설정
2) 속성을 이용해 설정

---

## ANNOTATION 설정

@Componenet 

클래스에 선언하며 해당 클래스를 자동으로 bean으로 등록한다.
bean의 이름은 해당클래스명(첫글자는 소문자)이 사용된다.
범위는 default로 singleton이며 @Scope를 사용하여 지정할 수 있다.
소스안에 작성된 어노테이션이 적용되려면 다음과 같은 태그들이 설정파일에 정의되어 있어야 한다.
`<context:annotation-config>` - @Autowired 만 사용했을 때
`<context:component-scan base-package="xxx" />` - 모든 어노테이션

