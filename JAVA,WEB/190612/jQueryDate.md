## jQuery 문
 
- .ready 는 자바스크립트에서 window.onload 함수와 비슷하다고 보면 된다. 
- 모든 HTML 페이지가 화면에 출력되고 .ready 안 이벤트들이 실행준비

#### 첫째 script 태그 URL에 <u>http뒤에 :</u> ◀콜론을 안붙여 줘서 한참 찾았다.. 작성시 유의할것..

```javascript
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>

<script>
	var week = new Array("일", "월", "화", "수", "목", "금", "토");
	var d = new Date();
	var day = week[d.getDay()];

	var color = new Array("skyblue", "pink", "orange", "purple", "gray",
			"black");

	$(document).ready(function() {
		$('span').text(day);
		setInerval(function() {
			var rand = Math.floor(Math.random() * 5);
			$('span').css('color', color[rand]);
		}, 2000);
	})
</script>
</head>
<body>
	<h1>
		오늘은<span></span>요일 입니다.
	</h1>

</body>
</html>
```

