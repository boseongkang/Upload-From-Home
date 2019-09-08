## 아규먼트 함수 사용

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<pre>
<script>
	/* 1. 다음 기능을 처리하는 함수 calc() 를 구현해 본다.
	 - 아규먼트의 개수에 제한이 없게 한다.
	 - 아규먼트가 하나도 전달되지 않으면 0 을 리턴한다.
	 - 전달된 아규먼트중 하나라도 숫자가 아니면  
	 "숫자만 전달하세요" 라는 메시지를 리턴한다. //숫자가 아니라면 리턴 
	 - 전달된 값을 모두 더하여 리턴한다.

```javascript
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>arguments study</title>
</head>
<body>
	<pre>
<script>
	/* 1. 다음 기능을 처리하는 함수 num() 를 구현.
	 - 아규먼트의 개수에 제한이 없게 한다.
	 - 아규먼트가 하나도 전달되지 않으면 0 을 리턴.
	 - 전달된 아규먼트중 하나라도 숫자가 아니면  
	 "숫자만 전달하세요" 라는 메시지를 리턴한다. //숫자가 아니라면 리턴 
	 - 전달된 값을 모두 더하여 리턴한다.

	 2. 다음과 같이 다양하게 num() 를 호출하여 결과를 <h3> 태그와 함께 
	 도규먼트 영역에 출력한다.
	 num(), 
	 num(10, 20, '30'),
     num(10, '가나다', 20),
     num(1,2,3,4,5)

	 0
	 60
	 숫자만 전달하세요
	 15	 */
	var num = function() {
		var sum = 0;
		if (arguments) {
			for (var i = 0; i < arguments.length; i++) {
				if (isNaN(arguments[i])) {
					return "숫자만 전달하세요";
				}
				sum += parseInt(arguments[i]);
			}
			return sum;
		} else
			return 0;
	}

	document.write(num() + '<br>');
	document.write(num(10, 20, '30') + '<br>');
	document.write(num(10, '한글', 20) + '<br>');
	document.write(num(1, 2, 3, 4, 5) + '<br>');
</script>
</pre>
</body>
</html>
```
