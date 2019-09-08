## prompt 함수와 confirm 함수

- prompt 함수를 사용 단을 입력하면 그에맞는 구구단이 출력되는 코드를 짜보자

  - Java에서 Scanner 함수를 이용해 사용자가 입력값을 넣어 그에 맞는 값을 추출하는것과 같다.

  #### prompt() 함수의 특징  

  - 문자열을 입력할때 사용한다.
  - 숫자를 입력받아야 하는 경우, 문자열로 입력 받은 뒤 변환한다. 
  - 첫번재 매개변수는 입력 창에서 띄워줄 메시지이고
  - 두번째 매개변수는 입력 부분의 기본 값이다. 
    - prompt('입력창','기본값'); 

#### confirm() 함수의 특징

- boolean 값을 입력 받을 때 사용한다.
- 확인을 누르면 true 값을 리턴,
- 취소를 누르면 false를 리턴한다.
  - 쉽게말해 confirm은 alert와 같은 경고창에 확인과 취소 기능이 있다고 생각

```
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		do {
			var num = window-
			w.prompt("1~9 사이의 숫자를 입력해주세요.");
		} while (num > 9 || num < 1);
		document.write("<h1>" + num + "단 입니다. " + "</h1>");
		document.write("------------<br>");
		for (var i = 1; i <= 9; i++) {

			document.write(num + "x" + i + "=" + num * i + "<br>");
		}
	</script>

</body>
</html>
```

