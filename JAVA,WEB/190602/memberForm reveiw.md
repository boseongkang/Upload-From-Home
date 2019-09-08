## memberForm reveiw

### <label>

- label은 form 양식에 이름을 붙이는 태그.

- - 주 속성은 for이다
  - label의 for값과 양식의 id값이 같으면 연결된다.

``` HTML
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
	<h1>회원 정보를 입력하십시오.</h1>
		<hr>
		<label for=name></label>
		<input id=name name=name type=text 
		placeholder="이름을 입력하세요" required maxlength=4> 
		<br> 
		<label for=phone></label> 
		<input id=phone name=phone type=tel	
               placeholder="전화번호를 입력하세요"
		 pattern="[0-9]{2,3}-[0-9]{3,4}-[0,9]{4}">
		 <br>
		<label for=name></label> 
		<input id=name type=text placeholder="계정을 입력하세요"
		 required maxlength=20>
		 <br> 
		 <label	for=name></label>
		 <input type="password"
                placeholder="패스워드를 입력하세요" name="stpwd">
		<br>
		<input type="submit" value="등록">
		<input type="reset" value="재작성">

	</form>
</body>
</html>
```

- label요소는 컨트롤 레이블을 표시한다. label 은 항목이나 파일을 식별하기 위해 사용되는 제목이나 이름을 말한다. 시각적으로만 표현되므로 브라우저가 label과 컨트롤 사이의 관계를 알 수 있도록 label을 사용해야한다. 
- - <label for=name></label>

- <input id=name name=name type=text placeholder="이름을 입력하세요" required maxlength=4> 
- - input 요소는 입력 영역을 표시한다. 
  - placeholder를 사용하여 입력창에 문자를 입력하기전에 "이름을 입력하세요" 를 띄워준다. 
  - required maxlength=4 는 이름을 입력하기에 최대 입력할수 있는 글자수를 4글자로 설정