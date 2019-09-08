## 구구단 만들어보기 

- 1~9단까지 버튼을 만들고 그에 알맞은 구구단이 화면 중앙에 출력된다. 

   

```javascript
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	border: 3px solid blue;
	padding: 10%;
	margin: 0px auto;
	text-align: center;
}
h1 {
	text-align: center;
}
input {
	width: 8%;
	font-weight: bold;
	border-radius: 5px;
}
output {
	text-align: center;
}
</style>
</head>
<body>
	<h1>구구단</h1>
	<input type="button" value="1단" onclick="gugu(1)">
	<input type="button" value="2단" onclick="gugu(2)">
	<input type="button" value="3단" onclick="gugu(3)">
	<input type="button" value="4단" onclick="gugu(4)">
	<input type="button" value="5단" onclick="gugu(5)">
	<input type="button" value="6단" onclick="gugu(6)">
	<input type="button" value="7단" onclick="gugu(7)">
	<input type="button" value="8단" onclick="gugu(8)">
	<input type="button" value="9단" onclick="gugu(9)">
	<output></output>
	<script>
		function gugu(value) {
		var target = document.getElementsByTagName("output")[0];
			target.innerHTML = null;
			for (var i = 1; i < 10; i++) {
			target.innerHTML += "<h3>" + value + " * " + i + " = "
						+ (value * i) + "</h3>";
			}
		}
	</script>
</body>
</html>
```

