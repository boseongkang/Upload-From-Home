## JSTL 
 
**JSTL** : JSP Standard Tag Library - 아파치 오픈그룹이 만든 JSP의 커스텀태그 모음                                                                              JSP를 구현할 때 자주 필요한 기능의 커스텀 태그들을 모아놓은거. 지원 기능에 따라 core 라이브러리, format(i18n) 라이브러리, sql 라이브러리, xml라이브러리, functions 라이브러리

태그명 앞에 c 가 붙어있다면 core 라이브러리 라는 뜻이다.  `<c:xxxx>` 이런식

## core 라이브러리

변수 선언, 조건문, 반복문 등 간단한 프로그램 로직 구현을 대신할 수 있는 기능의 커스텀 태그들이 지원되는 라이브러리. JSP에서 JSTL의 core 라이브러리를 사용하려면 **taglib** 지시자 태그를 정의해야 함. uri 속성에는 정해진 URL 문자열을 사용해야 하며 **prefix**는 임의로 설정할 수 있지만 일반적으로 core인 약자인 c를 사용한다. 

`<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>` 이거로 core 라이브러리 사용 알림

### `<c:set>` 태그

**정의** : EL 변수를 만들고 값을 설정할 때, EL 변수의 프로퍼티 값 지정할 때 사용. EL 변수는 EL 식에서 page, request, session, application의 4개 스코프에 저장된 객체 이름 

`<c:set var="varname" value="varValue" [scope="영역"]></c:set>` 

**var** : 값을 저장할 EL 변수의 이름.

**value** : 변수의 값을 설정. (표현식, EL식, 고정 데이터 값을 사용하여 값 설정 가능)

**scope** : 변수를 저장하라 영역 설정. 값은 page, request, session, application 중 하나 사용 기본값은 page다.

------

### `<c:remove>` 태그

**정의** : `<c:remove>`태그는  `<c:set>` 태그로 만든 EL 변수를 삭제할 때 사용.

`<c:remove var="varName" [scope="영역"]/>`  ◀기본 구문

<u>삭제할때 scope값을 지정하지 않으면 동일한 이름으로 저장된 모든 영역의 변수를 모두 삭제한다.</u>

-------

#### `<c:out>` 태그

**정의** : `<c:out>` 태그는 JspWriter 객체를 이용하여 데이터를 출력할 때 사용하는 태그. EL태그와 거의 비슷한데 차이점은 default값을 지정할 수 있다. 

`<c:out value="value" [escapeXml="(true | false)"] [default="defaultValue"]/>` ◀기본구문1

-----

#### `<c:if>`태그

**정의** : JAVA 언어의 if문과 동일한 기능이다. else 절 기능은 지원하지 않고 if문만 지원한다. 

```
<c:if test="조건">
  내용~~~~~~
</c:if>				
```

**<u><c:if  이렇게만 치고 ctrl+space 누르면 자동완성된다.</u>**

-------

#### `<c:choose>, <c:when>,<c:otherwise>` 태그

**정의** : `<c:choose>` 태그는 JAVA의 switch 구문과 if else, else if 구문을 혼합한 형태, 다수의 조건문을 하나의 블록에서 실행시키고자 할때 쓴다.

---

#### `<c:forEach>` 태그

**정의** : 배열, Collection 또는 Map 객체에 저장되어 있는 값들을 순차적으로 처리할 때 사용할  수 있는 태그로서, JAVA의 do while 등을 대신해서 사용.

```
<c:forEach var="i" begin="1" end="10" step="2">
		${ i } 사용
</c:forEach>
```

var 속성에 지정한 변수 i는 1부터 10까지의 값 중에서 2씩 증가하는 1,3,5,7,9 의 값을 가진다. (step은 생략 가능, 생략되면 1이 사용됨)

-------------

#### `<c:forTokens>` 태그

```
<c:forTokens var="token" items="문자열" delims="구분자">
	${ token }의 사용
</c:forTokens>
```

▲기본 형식

`<c:forTokens>`태그는 items 속성으로 전달받은 문자열을 구분자를 이용해서 나눈 뒤, 나누어진 각 문자열을 var 속성에 명시한 변수에 저장한다. 

```
<c:forTokens var="color" items="red, green, blue" delims=",">
	${ color }
<c:forTokens>
```

items 속성의 값을 (",") 콤마로 나눈 "red", "green", "blue" 문자열을 color 변수에 차례대로 대입한다.

------

#### `<c:import>태그` ★★중요★★                                                      

**정의** : 특정 URL의 결과를 읽어와 현재 위치에 삽입하거나 EL 변수에 저장할 때 사용.

기본 형식은 var 속성, scope 속성, charEncoding 속성은 생략가능 

``` 
<c:import url="URL" [var="변수명"] [scope="영역"] [charEncoding="문자셋"]>
	<c:param name="이름" value="값" />
<c:import>
```

var 속성을 명시할 경우 해당 URL로부터 읽어온 데이터를 var 속성에 명시한 EL 변수명에 저장하고 scope 속성은 EL 변수를 생성할 scope를 입력. var 속성을 지정 안하면 현재위치에 URL로부터 읽어온 결과 출력한다. 너무 길어서 449pg 참조..

-------

#### `<c:url>` 태그 

**정의** : URL을 생성해 주는 기능을 제공한다.

```
<c:url value="URL" [var="varName"] [scope="영역"]>
	<c:param name="이름" value="값" />
<c:url>	
```

var  속성과 scope 속성은 생략가능 `<c:import>` 태그와 마찬가지로 `<c:param>` 태그를 이용해서 요청 파라미터를 URL에 추가할 수 있다. var 속성을 지정하지 않은 경우 현재 위치에 생성한 URL을 출력하고, var 속성을 설정한 경우 해당 변수에 생성한 URL을 할당한다. 

----

#### `<c:redirect> `태그

**정의** : response.sendRedirect() 처럼 지정한 페이지로 redirect 시키는 기능 제공

```
<c:redirect url="URL" [context="콘텍스트 경로"]>
	<c:param name="이름" value="값"/>
</c:redirect>
```

url 속성의 값이 /(슬래시)로 시작하면 redirect 되는 URL에 현재 Context 경로가 추가된다. 만약 다른 Context 경로에 포함된 URL로 resirect 하고 싶다면 Context 속성에 다른 Context 경로를 "/xxx" 형식으로 설정

-----

#### `<c:catch>`태그     

발생된 예외를 EL 변수에 저장할 때 사용하는 태그. jsp는 예외처리가 자동으로 처리가 되서 안해도 됨. 예외가 발견되면 잡아서 보관

```
<c:catch var="exName">
	예외가 발생할 수 있는 코드
</c:catch>
```

451pg 에 자세히 예제 

/wikimedia/projects/project/@name @이가 있어야 속성명으로 인식 아니면 그냥 name 이라는 자식으로 인식한다. 

page, request,session,application 다시 정리 하자

