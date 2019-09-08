## JavaScript 

#### upload from home

```javascript
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<pre>
<script>
	
	var cal = function() {
		 var sum = 0;
		 if(arguments){
			 for(var i =0; i<arguments.length; i++){
				 if(isNaN(arguments[i])){
					 return "숫자만 전달하세요";
				 }
				 sum += parseInt(arguments[i]);
			 }
			 return sum;
		 }else
			 return 0;
	}

	document.write(cal()+'<br>');
	document.write(cal(10, 20, '30')+'<br>');
	document.write(cal(10, '가나다', 20)+'<br>');
	document.write(cal(1, 2, 3, 4, 5)+'<br>');
</script>
</pre>
</body>
</html>
```

- sum += parseInt(arguments[i]);
- - arguments[i]는 문자형이기에  document.write(cal(10, 20, '30')
  - 출력하는걸 보면 10,20 은 int형 이지만 '30'은 ' '따옴표로 인해 문자열로 인식되고 있으므로 이대로 출력한다면 먼저 int형 10,20이 계산되어 30이 되고 덧셈연산자에 의해 int형 30 뒤에 String형인 30문자열이 더해지게 되어 3030으로 출력된다. 
  - 문제에서는 60으로 출력해야 하기에 JAVA에도 있는 parseInt함수를 사용하여 String형을 int형으로 변환해주어야 한다. 

