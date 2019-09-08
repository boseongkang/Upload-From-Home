## 자바스크립트 리뷰 

```html
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<script>
		var ranNum = (Math.floor(Math.random()*3)+1);
		var site = new Array('',
				'다음',
				'네이버',
				'구글');
		var url = new Array("", 
				"http://www.daum.net/",
				"http://www.naver.com/",
				"http://www.google.com/");
		var result = window.confirm(site + "로 이동하시겠습니까?");
		if (result)
			location.href = url; //location.href = 새로운 페이지로 이동된다. 
		else
			location.href = "/edu/first.html";
	</script>
</body>
</html>
 	
```

- 1부터 3까지의 랜덤값을 추출

  - ranNum이란 변수를 생성하고 그안에 W3C 사이트를 참조하여 

    (Math.floor(Math.random()*3)+1) 라는 식을 만들었다.

- 1이면 다음 이런식이기에 site란 배열을 만들어주고 그안에 다음,네이버,구글을 넣었다. 배열은 0부터 세기에 0자리는 빈값을 넣었다.
- 위와 매치하기위해 url이란 배열에는 위 배열에 알맞은 사이트 주소를 입력한다.
- result라는 변수를 생성해 confirm함수를 이용해 문제에서 사용자에게 프롬포트 하라고 했으니 확인창을 띄워준다.
- 확인을 눌러 true값이라면 location.href 를 이용하여 원하는 페이지로 이동하게 해준다.
- 만약 아니라면 이미 만들어둔 first.html로 이동하게 해준다.