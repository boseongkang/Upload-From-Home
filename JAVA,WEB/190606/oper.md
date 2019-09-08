## 연산자를 이용해 숫자를 더해보자

- 이 전 소스에서 사용한 prompt 함수를 사용해 숫자 입력받을 창과 연산자를 입력받을 창을 띄워준다. 
- switch, case문을 이용하여 연산자를 사용하기에 **(+, -, /, *, % )** 상황에 맞는 case 문을 작성하고 case 문에 사용할 result 변수를 미리 위에서(switch문 밖에서) 만들어준다.  
- default 값으로 만일 연산자 입력란에 연산자가 아닌 다른 숫자, 문자를 입력시에 **(+, -, /, *, % )** 만 입력 가능이라는 문구를 출력해준다.

```javascript
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산</title>
<style>
#blue {
	color: blue;
}

#red {
	color: red;
}
</style>
</head>
<body>
	<script>
		var num1 = window.prompt("숫자를 입력하세요 : ");
		var oper = window.prompt("연산자를 입력하세요 : ");
		var num2 = window.prompt("숫자를 입력하세요 : ");
		var result;

		result = '<h2 id="blue">' + num1 + '와 ' + num2 + '의 ' + oper
				+ ' 연산 결과는 ';
		switch (oper) {
		case '+':
			result += (Number(num1) + Number(num2)) + '입니다.</h2>';
			break;
		case '-':
			result += num1 - num2 + '입니다.</h2>';
			break;
		case '/':
			result += num1 / num2 + '입니다.</h2>';
			break;
		case '*':
			result += num1 * num2 + '입니다.</h2>';
			break;
		case '%':
			result += num1 % num2 + '입니다.</h2>';
			break;
		default:
			result = '<h2 id="red">+, -, *, /, % 만 입력 가능</h2>'
		}
		document.write(result);
	</script>
</body>
</html>
```

