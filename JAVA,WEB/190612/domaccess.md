### domaccess

jquery는 val 이라는 매서드 exam 9 중단쯤 보면 .val 있음 

#### exam 11

첫 번째 아규먼트에 index 값(인덱스 안써도 매개변수 줘야한다) 전달, b에 객체 전달 

#### exam 12 

.addClass / each 메서드 

#### exam 14

첫 번째 세번째 다섯번째는 반전

짝수번째다 하면 2,4,6일거라 생각하는데 jQuery가 짝,홀수 정할때 index가지고 하는데 첫번째 h3태그의 index는 0이고 두번째 태그는 1 세번째는 2 이로 인하여 짝수번째를 찾으려하면 index값인 0을 찾는다. 

우리가 생각하는 짝수와 다른점. jQuery는 index값으로 짝수를 설정하는데 index0부터 해준다. 

#### exam 15 

체이닝 한거

**체이닝이란 ? : ** jQuery 객체를 리턴, 또 다른 메서드 호출하는것을 체이닝

**filter :** 선택자 조건에 맞게 filtering

**end() 메서드 :** 마지막에 수행된 바로 전단계 filter 전단계로 옮겨라

​			    		 바로 전에 수행된 filter를 수행하기 전단계로 옮겨주는 메서드다.

#### exam 16

filter 메서드도 function 받을수 있다. function을 주면 모든 h3태그를 찾고 이 함수의 결과값이 true인 애들만 출력해라

첫번째와 세번째만 컬러가 칠해져있다. index%3==0이면 true 0이면 0이고 3이와도 0이된다 이 조건에 맞는 애들만 색이 칠해지게끔 코드가 짜여있음. 

#### exam 17 

exam16과 같이 filter로 써도되는게 주석처리 되어있는 코드. 

짝수(even) 홀수(odd) 어차피 배경은 같으니 둘이 값을 줄바에 하나로 묶어서 설정하고 filter로 다시 전단계로 올라와서 

#### exam 19 

eq(0) : 첫번째를 의미함,  eq() 도 찾아진 DOM 객체들을 filtering 한다.

eq(-1) : 마지막을 의미함, 뒤부터 찾는다.

여기까지 domaccess



### domedit

css와 attr은 매개변수 사양이 완전히 똑같다. 

attr 태그의 고유속성값을 조정하는것

#### exam 8

설정은 전부 해주는데 출력은 첫번째 h1태그만 출력해준다. 

#### exam 24

**clone메서드**

clone으로 복제 

헤더

수평선 

헤더

 수평선

#### exam 25 

ol 태그는 보기에 컨텐츠는 없지만 실제 웹에서 본다면 ol 태그도 li를 가진것으로 출력된다. 

clone메서드의 아규먼트를 false로 바꾸면 clone한 ul태그들은 적용되지만 ol 태그들은 아무것도 일어나지 않는다. 

이벤트 핸들러도 복제하고 싶다면 clone 메서드의 아규먼트도 true로 바꿔야한다. 

## event

#### exam 7

trigger 메서드 : 강제로 이벤트를 발생시켜줌

#### exam 9

클릭 핸들러 배경을 빨갛게 하는 핸들러

stopPropagation 메서드로 인하여 이벤트 버블링을 막아준다. stopPropagation을 주석 처리하고 수행해보면 화면에 바로 클릭하자마자 배경색이 빨강색이 나옴. 안막으면 하나둘씩 수행됨.

이벤트 버블링: 어떤 태그에서 어떤 이벤트가 발생한걸 조상 객체에 등록된 핸들러가 있으면 올라감 똑같은 이벤트의 핸들러를 등록된거에 한해서

#### exam 10 

처음만 이벤트 핸들러가 등록 

wrap 메서드 : 이 문서에 대한 로드가 끝나면 호출해줘

클릭 이벤트 핸들러가 등록 

#### exam 10_1

두번째 아규먼트에 태그 이름을 준다. 

h1태그에 대하여 클릭 이벤트를 등록하고 있었는데 해당 타겟 매채에 on메서드

10_1은 document객체에 등록하면서 이 첫재줄function은 앞으로 일어날 이벤트들 수행  

#### exam 12

submit 타입의 input태그는 버튼을 만들어주고 submit 기능을 가지고 있음

#### exam 13 

체크된 상태면 div태그의 자식들 input태그 중 체크된걸 prop 메서드를 활용하여 출력 

체크 상태가 아니라면 false로 , attr로 안되고 prop메서드로 추가,삭제	 기능 

라벨 태그로 묶음으로서 

#### domaccess exam 20

friend DOM 객체를 find 아규먼트로 준 태그를 찾아라 

$.parseXML : DOM 객체를 생성해주는 메서드 





 






