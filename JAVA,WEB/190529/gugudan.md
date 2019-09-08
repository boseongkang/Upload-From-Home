### JavaScript 구구단 코드 리뷰 

```HTML
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<pre>
<script>
while(true){
	var num = window.prompt("체크하려는 숫자를 입력해 주세요.");
	if(!(1 <= num && num <= 9))
		continue;
	else
		break;
}	
document.write("<h1>" + num + "단 입니다</h1>.");
document.write("<hr>");

for(var i=1; i<=9; i++)
	document.writeln(num + "*" + i + "=" + num * i);
</script>
</pre>

</body>
</html>
```

- 프롬포트 창으로 1부터 9사이의 숫자를 한개 입력 받음

while문 안에 조건식으로true를 주어 

{ }괄호 안 실행문을 계속 돌린다.

var 형의 변수 num을 생성  

num 안에는 window.prompt(prompt 함수 이용)해서 ("~~"); 메세지와 함께 값을 받음
여기서 window.prompt를 보면 

window는 최상위 객체, prompt 함수는 window 객체의 매소드이다.

- - ex) Java에서 부모 상속이런거 할때 위에 클래스명.함수 불러오는거 같다.
- - - 입력된 숫자가 1~9가 아니면 다시 입력 받음

```html
if(!(1 <= num && num <= 9))
	continue;
	else
		break;
```

if문으로 괄호안에 사용자가 입력한 num값이 1보다 크거나 같으면, 9보다 작거나 같으면인데 앞에 !로 반대의미 

num이 1보다 크거나 같다, num이 9보다 작거나 같다 둘중에 하나라도 안되면 안되는데 그걸 !로 부정하니까 맞다는 의미로.. 맞으면 continue로 {} 괄호 밖으로 나가고반대면 break;로 인해 멈춘다.

- - - 입력된 숫자에 해당하는 단의 구구단을 행단위로 출력

```

for(var i=1; i<=9; i++)
	document.writeln(num + "*" + i + "=" + num * i);
```

for문으로 var형의 i=1선언, i는 9와 같거나 작을때까지 반복, i는 ++에 의해 하나씩 증가하며 반복문 실행 

document 객체 안에 writeln함수 로 구구단을 수행하는 식을 세운다.

- - ex) 자바로 따지면 System.out.println(); 과 같은.





