 

#### ajaxjqexam/ exam 1

요청방식 생략하면 get 

요청하고 응답이 성공적으로 끝난다면 XMLrequest==200인가 그거로 확인 ajaxjqexma 여기서는 success로 확인 한다 

함수의 매개변수로는 응답된 내용을 전달 응답의 기본이 XML 응답된 XML의 document의 객체가 data로 전달된다. 

#### exam 2 

success 속성에 대해서만 함수로 등록

매개변수로 응답된 Json형식의 문자열을 그대로 전달한다. 

확인하려면 alert로 확인가능

Json은 응답된 문자열을 그대로 전달한다.

XML은 parsing된걸 XML이 기본이였다

$each  줄에 있는 function은 멤버 갯수 만큼 호출된다 . 

$each  줄에 있는 function 안에 key는 속성명 value는 속성값 

#### exam 3 

getJSON은 JSON형식의 문자열을 미리 만들걸

$.ajax는 그냥 JSON문자열이라 json.parse로 자바스크립트 객체로 만들어 써야한다. 

$.getJSON은 두번째 아규먼트로 함수를 지정할수 있고 아규먼트로 자바스크립트 객체로 만드는걸 생략할수 있따. 

$.getJSON 메서드를 호출해 줘야 아규먼트로 자바스크립트의 객체를 사용할 수 있다. 

#### exam 4 

체이닝해서 호출 

도큐먼트 객체를 가지고 다섯개의 메서드를 호출하고 있다(순서는 상관X) 이벤트 핸들러 등록하고 있는거다. .ajaxError 에러가 나면 저 안에 있는 function 수행 시키는 이벤트 핸들러를 등록시키고 있다. 

 wrap 써있는 21행에 .load 메서드는 요청해서 가져다 붙인다. h2태그에 id=wrap 적힌걸 가져와서 load뒤에 content~를 h2태그로 출력 load뒤에 samplejson 뒤에 1을 붙여 samplejson1.txt를 호출하면 1을 붙인 txt파일은 없기때문에 위에 적힌 이벤트 핸들러 중에서 .ajaxError을 실행시켜 아래에 alert창으로 에러라는걸 웹상에서 alert창으로 출력시켜준다. 

#### exam 6

쿼리문자열은 name과 value로 구성되어야 한다. 그 학습내용에 적혀있음 쿼리문

$.param 은 자바스크립트의 객체들을 받앗 ㅓ쿼리문으로 바꿔준다.   

#### exam 7

.serialize()라는 메서드는  form태그를 구성하고 있는 모든 서브 태그들의 내용들을 알아서쿼리문자열을 구성해준다. 

