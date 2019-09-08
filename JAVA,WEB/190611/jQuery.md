## jQuery  

**jQuery**란 HTML 문서 안의 스크립트 코드를 단순화하도록 설계된 자바스크립트 라이브러리이다.

- 주요기능 :

  - DOM 요소 선택기능, DOM 탐색 및 수정

  - CSS 셀렉터에 기반한 DOM조작
  - 크로스 브라우징 이벤트 처리
  - 특수효과 및 애니메이션
  - AJAX
  - JSON 파싱
  - 플로그인을 통한 확장성

#### jQuery 라이브러리 선언

jQuery 라이브러리를 포함하는 script태그를 작성한다.

`<script src="http://코드작성/jquery></script>"`

jQuery에서 제공되는 메서드들은 두 가지 방식으로 호출된다.

jQuery(자바스크립트객체).xxx()

jQuery.xxx()

#### 코드안의 jQuery() 함수는 식별이 어렵고 불편하기 대문에 줄여서 $()로 표시한다.

**jQuery ----> $**

#### $() 함수의 사용

시작 이벤트 핸들러 등록

jQuery(document).ready(function() {...});

▶ $(document).ready(function() {...});

▶ $(function() {...});

#### 선택자에 알맞은 DOM 객체 추출

**`jQuery('div').html('<h2>테스트</h2>')`**

**`▶ $('div').html('<h2>테스트</h2>')`**

$(선택자) 형태로 jQuery 선택자를 입력 인자로 받아들여 선택자 조건을 만족하는 엘리먼트 노드들은 DOM트리에서 찾아 'jQuery 객체' 형식으로 반환해준다.

일치하는 DOM 노드들이 여러개이면 배열 형태의 'jQuery 객체 집합'을 반환해준다.

반환하는 DOM 엘리먼트들을 jQuery 객체 개념으로 감싸고 미리 준비된 메서드들을 사용할 수 있도록 확장해준다.

웹클라이언트 pdf 73pg~77pg