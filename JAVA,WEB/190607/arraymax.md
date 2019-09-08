## JavaScript 

- Java 환경에서 아래 코드처럼 배열에 숫자를 저장하고 배열 안에 있는 수의 합, 최댓값, 최솟값 을 출력 하는 코드를 만드는 과정은 쉬웠지만 JavaScript는 조금 다르다. 

- 형식은 Java와 매우 유사하다. 출력할때 System.out.println();에서 document.write로 익숙해질 필요가 있다. 

- Java와 또 다른 차이점은 <style>태그 안에 아래 코드와 같이 #blue{ color : blue; }로  웹에서 디자인을 변경할 수 있다. 

- 차이점 하나더. 아래 코드보면 출력하려는 문장에

  ```javascript
  <h1 id='yellow'>
  ```

   라는 코드가 있다. h1, h2, 이런 제목 태그를 이용하여 글꼴의 크기를 나타낼수 있다. h1 코드가 제일 크다. 

- ```javascript
  <h1 id='yellow'>
  ```

- 를 입력해주고 다시 body 태그 밖으로 나가 style 태그에서 내가 입력한 yellow에 대해 색을 지정 해주면 그에 알맞게 웹에 표시 된다. 

``` javascript
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#blue {
	color: blue;
}

#yellow {
	color: yellow;
}

#red {
	color: red;
}
</style>
</head>
<body>
	<pre>
	<script>
		var array = [ 7, 2, 14, 23, 17, 22, 19 ]
		var sum = 0;
		for (var i = 0; i < array.length; i++) {
			sum += array[i];
		}
		document.write("<h1 id='yellow'>" + '모든 원소의 합: ' + sum + "</h1>");
		var max = 0;
		for (var i = 0; i < array.length; i++) {
			if (max < array[i]) {
				max = array[i];
			}
		}
		document.write("<h2 id='blue'>" + '최댓값 :' + max + "</h2>");

		var min = 100; //최솟값이 저장될 변수(단, 변수에 저장 될 값은 데이터의 가장 큰 값으로 정해야한다.)
		for (var i = 0; i < array.length; i++) {
			if (min > array[i]) {
				min = array[i];
			}
		}
		document.write("<h3 id='red'>" + '최솟값 :' + min + "</h3>");
	</script>
</pre>
</body>
</html>
```

