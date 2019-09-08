## pom.xml

우리가 하려는 과정에서 사용하려면 pom.xml 문서 안에 윗 부분에 있는 `<java-version>` 이 태그의 자바 버젼을 **1.8**로 수정 해주어야 한다. 아마 1.6으로 되어있을 거임 기본은.  그 밑에 `<org.springframework-version>` 이 태그는 아마 3.0.1.RELEASE 라고 쓰여 있을건데 이것도 **5.0.2.RELEASE**로 수정 해주면 됨.  

```
<dependency>
    	<groupId>com.fasterxml.jackson.core</groupId>
    	<artifactId>jackson-databind</artifactId>
    	<version>2.9.9</version>
</dependency>
	
<dependency>
	<groupId>commons-fileupload</groupId>
	<artifactId>commons-fileupload</artifactId>
	<version>1.3.1</version>
</dependency>     
```

pom.xml 안에서 아래로 내리다보면 `</dependencies>` 라는 종료 태그 전에 이걸 붙여주고 

```<dependency>
	<groupId>com.jslsolucoes</groupId>
	<artifactId>ojdbc6</artifactId>
	<version>11.2.0.1.0</version>
</dependency>
<dependency>
	<groupId>org.springframework</groupId>
	<artifactId>spring-jdbc</artifactId>
	<version>5.0.2.RELEASE</version>
</dependency>
<dependency>
	<groupId>org.mybatis</groupId>
	<artifactId>mybatis</artifactId>
	<version>3.4.1</version>
</dependency>
	<dependency>
	<groupId>org.mybatis</groupId>
	<artifactId>mybatis-spring</artifactId>
	<version>1.3.2</version>
</dependency>
```

이것도 붙여 준다. 이건 아마 mybatis로 변동할때 필요한 아이 인거 같다. 

두 소스를 dependencies 종료 태그 위에 넣어주면 된다. 