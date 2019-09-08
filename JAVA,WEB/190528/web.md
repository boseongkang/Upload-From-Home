## 웹 

```
HTML에서는 공백을 하나로 인식 <br>로 개행처리 해줘야함 자바에서 println같은거 
&nbsp; 이게 공백 하나임 글자 사이에 공백 5번을 주고 싶으면 &nbsp; 이거를 5번 써야함 

<style>
        선택자 {
	CSS속성명 : CSS속성값;
                 :
   }
      :
</style>

선택자의 종류 : 전체선택자 - *
	        태그선택자(타입선택자) -태그명
	        그룹선택자 - 태그명, 태그명, ...
	        클래스선택자 - .class속성값
  	        아이디선택자 - #id속성값
                    자식선택자 - 부모태그>자식태그
                    자손선택자 - 조상태그 자손태그
                    형제선택자 - 언니태그~동생태그, 언니태그+동생태그 
                    속성선택자 - [속성명]
                                     [속성명=속성값]
			 [속성명^=속성값]
			 [속성명$=속성값] : img[src$=png]  $를 주면 png로 끝나는
	         a:hover 그 태그 영역에 마우스가 올라가면~
	         p:first-letter

  [ HTML태그에 대한 랜더링 규칙(1) ]
  태그마다 출력되는 영역을 정하는 규칙에 따라
  inlinestyle 태그와 blockstyle 태그로 나뉜다. 
  a, img, input, span   hn(h1,h2이런거..hn), div(...), table, ul, ol, p, form 
 인라인은 width, height는 사이즈 조정 불가 
 dive만 조정가능 span은 사이즈 조정 불가
margin은 간격 
padding은 안의 간격
margin: 5px auto 이렇게 값을 2개 주면 5px는 상하 auto는 좌우 값을 변경함 
text-align : center; 글자들을 가운데로 모아준다.
```