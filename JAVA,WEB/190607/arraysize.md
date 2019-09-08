## 배열의 크기 정하기

- 자바에서 일반적으로 배열을 만들때 [ ] 이 괄호를 사용했다. 

- JavaScript에서는 ( ) 이 괄호로 배열의 크기를 선언할수 있다. 괄호 안에 숫자를 넣으면 그 숫자만큼의 배열의 크기가 설정되는 것이다.   

- 아래 코드에는 괄호 안에 8를 주었다. 즉 8개의 배열의 방이 생성되었다. 

  ```
  array[i] = Math.floor(Math.random() * 30) + 1; 
  ```

  - 이 코드는 <https://www.w3schools.com/js/js_random.asp> 이 사이트에 매우 설명이 잘 되어있다.
  - 저 사이트의 함수 사용법에 따라 만들고 본인은 1부터 30까지의 수를 만들었다.

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
		var array = new Array(8); //크기로 인식		
		for (var i = 0; i < array.length; i++)
			array[i] = Math.floor(Math.random() * 30) + 1;

		document.write("정렬 전 : ");

		for ( var i in array) {
			i == array.length - 1 && document.write(array[i] + "<br>");
			i < array.length - 1 && document.write(array[i] + ", ");
		}

		array.sort(function(a, b) {
			return a - b;
		});
		document.write("정렬 후 : ")
		for ( var i in array) {
			i == array.length - 1 && document.write(array[i] + "<br>");
			i < array.length - 1 && document.write(array[i] + ", ");
		}
	</script>
</pre>
</body>
</html>
```

