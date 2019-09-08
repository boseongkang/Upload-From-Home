## AJAX

- Ajax를 활용하여 기상정보를 끌어왔다. 
- **XMLHttpRequest()**를 통해 객체를 만들고 하는거 같다.

```javascript
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>오늘의 날씨 정보</h1>
	<hr>
	<script>

		window.onload = function() {
			var request = new XMLHttpRequest(); //브라우저에 있는 Ajax 엔진을 초기화 하는것.
			request.onreadystatechange = function() { //readyState 프로퍼티 값이 바뀌면 실행된다.
				if (request.readyState == 4) { // 응답을 모두 수신했다면
					if (request.status == 200) { // 서버가 요청을 성공적으로 처리했다면

						var jsObj = JSON.parse(request.responseText);

						document.body.innerHTML += "기준 시간 : " + jsObj.time + "<br>";
						document.body.innerHTML += "기온  : " + jsObj.temp + "<br>";
						document.body.innerHTML += "<img src = ../"+jsObj.img+"><br>";

					}
				}
			}
			request.open("GET", "content/weather.jsp", true);
			request.send();
		}
	</script>


</body>
</html>
```

