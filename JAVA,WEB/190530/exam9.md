## JavaScript 

```javascript
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>배열 생성과 활용(1)</h1>
	<hr>
	<script>
		var a1 = [];
		document.write("<h3>" + typeof a1 + "</h3>");
		document.write("<h3>" + Array.isArray(a1) + "</h3>");
		document.write("<h3>" + a1.length + "</h3>");
		document.write("<h3>" + a1[0] + "</h3>");
		document.write("<hr>");
		a1[4] = 100;

		document.write("<h3>" + a1.length + "</h3>");
		for (var i = 0; i < a1.length; i++)
			document.write("<h4>" + a1[i] + "</h4>");
		document.write("<hr>");

		for ( var i in a1)
			// for(int data : ary)
			document.write("<h4>" + a1[i] + "</h4>");
		document.write("<hr>");
		
		var a2 = [ 10, '가나다', true, 3.5 ];
		for ( var i in a2)
			// for(int data : ary)
			document.write("<h4>" + typeof a2[i] + ":" + a2[i] + "</h4>");
	</script>
</body>
</html>
```

a1[4] = 100;
		document.write("<h3>" + a1.length + "</h3>");
		for (var i = 0; i < a1.length; i++)
			document.write("<h4>" + a1[i] + "</h4>");
		document.write("<hr>");
		for ( var i in a1) // for(int data : ary)
			document.write("<h4>" + a1[i] + "</h4>");

일반 for문과 
향상된 for문 비교

향상된 for문은 없는값는 안내보내고 있는 값이 있는것만 보냄
undefined만 보냄 jsexam/exam9 참조 

자바는 : 쓰는데 자바 스크립트는 in을씀 향상된 for문 말하는거 
자바는 값을 담는데 자바 스크립트는 인덱스를 담는다.
// 주석 처리 된게 자바에서의 향상된for문 쓸때 

undefined는 false로 처리됨

