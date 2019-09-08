## servlet-context.xml 

이 servlet-content.xml에 태그 추가안하면 bean 태그가 하나 없다고(아마도 ) console창에 에러가 뜬다. 

spring 에서는 클래스를 만들고 **@Autowired**로 클래스 생성을 하는데 아래 태그로 패키지 경로 설정 해주면 된다. 

```
<beans:bean id="multipartResolver"
		class="org.springframework.web.multipart.commons.CommonsMultipartResolver" />

<context:component-scan base-package="service" /> 
<context:component-scan base-package="dao" />
<context:component-scan base-package="vo" />
```

`<context:component-scan base-package="service" />` 패키지 명은 사용하는거마다 변경 하면 된다. 

`<beans : bean id=""  class=""/>` 이 태그 뒤에 그냥 맘편히 이 전체 문서 중 종료 태그 바로 위에 붙여 넣으면 되고. 

```
<beans:bean id="dataSource" class="org.springframework.jdbc.datasource.DriverManagerDataSource">
	<beans:property name="driverClassName" value="oracle.jdbc.OracleDriver"/>
	<beans:property name="url" value="jdbc:oracle:thin:@localhost:1521:XE" />
	<beans:property name="username" value="jdbctest" />
	<beans:property name="password" value="jdbctest" />		
</beans:bean>
	
 <beans:bean id="sqlSessionFactory" class="org.mybatis.spring.SqlSessionFactoryBean">			
	<beans:property name="dataSource" ref="dataSource"/>
	<beans:property name="configLocation" value="classpath:/mybatis-config.xml"/>
	<beans:property name="mapperLocations" value="classpath:/*Mapper.xml"/> 	
</beans:bean> 

<beans:bean id="sqlSession" class="org.mybatis.spring.SqlSessionTemplate"  destroy-method="clearCache">
	<beans:constructor-arg index="0"  ref="sqlSessionFactory" ></beans:constructor-arg>
</beans:bean>
```

그 아래에 이 태그 넣어 주면 된다.  property에는 oracle이면 저걸 넣고 아니면 다른걸 넣으면 될 것 같다.