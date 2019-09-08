## 홈페이지 

간단하게 미리 만들어 본 홈 페이지 

입문, 중급, 프로에 이미지 빼고 올린버전

```
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#a {
	text-align: center;
	color: #fff;
	font-size: 25px;
	text-decoration: none;
	position: relative;
}

body {
	background-color: #ecc6d9;
}

td:hover {
	font-weight: bold;
}

tr.a {
	/* background-color: #ccffcc; */
	color: black;
	text-align: center;
}

td.b {
	color: #808080;
	text-shadow: 0 1px 0 #07080a;
	font-size: 15px;
	line-height: 20px;
	cursor: pointer;
	width: 330px;
	/* border-radius: 5px; */
	cursor: pointer;
}

tr.c {
	background-color: #ccffcc;
	color: black;
	text-align: center;
}

td.d {
	font-size: 30px;
	color: blue;
	height: 120px;
	background: gray;
}

#b {
	text-align: center;
}

div.e {
	right margin: 10px;
	float: right;
	background-color: #e6ffff ;
}

/* #c {
	height: 47px;
	width: 200px;
} */
#login {
	height: 37px;
	width: 200px;
}
</style>
</head>
<body>
	<h1 id="a">인디언 포커</h1>
	<form method="post" action="/forme/notyet">
		<table>
			<tr class="a">
				<td class="b">게임 가이드</td>
				<td class="b">아이템 상점</td>
				<td class="b">랭킹</td>
				<td class="b">자유게시판</td>
			</tr>
			<tr class="c">
				<td class="d">입문</td>
				<td class="d">중급</td>
				<td class="d">프로</td>
				<td class="d">연습</td>
			</tr>



		</table><br>
		<div class="e">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;회원 가입 및 로그인 <br>
			<button id="login" type="submit">
				로그인
				<!-- <img id="c" src="/forme/images/i.png"> -->
			</button>
			<br> <a href=" ">회원가입</a> <a href=" ">아이디/비밀번호 찾기</a>

		</div>

	</form>

</body>
</html>
```

