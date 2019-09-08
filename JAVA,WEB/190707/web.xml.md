## web.xml

`<load-on-startup>1</load-on-startup>` 

`</servlet>` 이 태그 아래에 

```
<servlet-mapping>
		<servlet-name>appServlet</servlet-name>
		<url-pattern>/</url-pattern>
	</servlet-mapping>
  <filter>
    <filter-name>encodingFilter</filter-name>
    <filter-class>org.springframework.web.filter.CharacterEncodingFilter</filter-class>
    <init-param>
      <param-name>encoding</param-name>
      <param-value>UTF-8</param-value>
    </init-param>
  </filter>
  <filter-mapping>
    <filter-name>encodingFilter</filter-name>
    <url-pattern>/*</url-pattern>
  </filter-mapping>
```

이 코드를 넣어 주어야 한글로 결과물을 볼 수 있다.. 안그러면 글씨 다깨짐. 

project 오른쪽 마우스로 properties에서 MS949에서 UTF-8로 변경한다해도 web.xml에 추가 안한다면 한글 깨진다.