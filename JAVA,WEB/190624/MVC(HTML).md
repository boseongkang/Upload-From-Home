## MVC(HTML)

HTML은 form 태그 중 post방식을 사용하고 action 태그로 mvc 폴더 안 meeting 매핑명을 가진 서블릿을 지정했다.

```
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>미팅</h1>
<hr>
<form method = "post" action="/mvc/meeting">
미팅 대상 이름 : <input type="text" name="name">
날짜와 시간 : <input type="datetime-local" name="meetingDate"><br>
미팅 목적 : <br>
<textarea cols="75" rows="8" name="title"></textarea><br>
<hr>
<input type="submit" value="등록">
<input type="reset" value="재작성"><br>
</form>
<form method="get" action="/mvc/meeting">
검색어 : <input type="search" name="keyword">
<input type="submit" value="검색"><br>
</form>
<button onclick="schedule()">미팅 스케줄 보기 버튼</button>
<script>
	function schedule(){
		location.href = "/mvc/meeting";
	}
</script>
</body>
</html>
```