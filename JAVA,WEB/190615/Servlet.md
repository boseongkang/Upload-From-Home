## HTML (프런트) 

- 아래와 같은 코드는 웹에서 일반적으로 볼수 있는 h1태그로 인하여 '글을 남겨주세요' 가 생성되고 hr로 아래 선을 그어준후 이름과 메모장 역할을 만들수 있다.
- button태그를 이용하여 작성된 이름과 의견을 type=submit에 의하여 등록하거나 reset에 의하여 쓴 글의 정보가 지워지는 웹 화면을 만들 수 있다. 

```javascript
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>글을 남겨 주세요</h1>
	<hr>
	<form method="post" action="/sedu/visitor">


		이름 : <input id=name name=name type=text required maxlength=6><br>
		남기고자 하는 의견 : <br>
		<textarea name="memo" rows="10" cols="50"></textarea>
		<br>


		<button type="submit">등록</button>
		<button type="reset">재작성</button>
	</form>

</body>
</html>
```