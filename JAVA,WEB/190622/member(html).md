## HTML

아래 코드로 서블릿과 연동하여 이름, 전화번호,계정, 비밀번호를 입력받는 창을 만들 수 있다. 

``` 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	h1{
		text-shadow: 3px 3px silver;
	}
	input{border: 1px solid red;border-radius: 10px;}
</style>

</head>
<body>
	<h1>회원 정보를 입력하십시오.</h1>
	<hr>
	<form method="post" action="/mvc/member">
	<input type="text" name="name" placeholder="이름을 입력하세요" 
		maxlength=4>
	<br>
	<input type="tel" name="number"  placeholder="전화번호를 입력하세요"
		pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}">
	<br>
	<input type="text"  name="nickname" placeholder="계정을 입력하세요" 
		maxlength=20>
	<br>
	<input type="password"  name="pwd" placeholder="패스워드를 입력하세요">
	<br>
	<br>&nbsp;
	<input type="submit" value="등록">&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="reset" value="재작성">
	
	
	</form>
</body>
</html>
```

