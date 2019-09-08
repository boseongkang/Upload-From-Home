## AJAX 

**Ajax**란 **XMLHttpRequest** 라는 자바스크립트의 객체를 이용하여 웹 서버와 비동기로 통신하고 DOM을 이용하여 웹 페이지를 동적으로 갱신하는 프로그래밍 기법을 말한다. 

**XMLHttpRequest** 객체 생성 : new **XMLHttpRequest()**



| 분류     | 멤버                            | 개요                                                         |
| -------- | :------------------------------ | :----------------------------------------------------------- |
| 프로퍼티 | onreadystatechange              | 통신상태가 변화된 타이밍에 호출되는 이벤트 핸들러            |
| 프로퍼티 | readyState                      | HTTP 통신상태를 취득                                         |
| 프로퍼티 | status                          | HTTP Status코드를 취득                                       |
| 프로퍼티 | responseType                    | 응답받으려는 컨텐트 타입. "arraybuffer", "blob", "document", "json", and "text" |
| 프로퍼티 | responseText                    | 응답본체를 plaintext로취득                                   |
| 프로퍼티 | responseXML                     | 응답본체를 XML(XMLDocument 객체)로취득                       |
| 프로퍼티 | response                        | 지정된 응답 타입에 따른 응답객체                             |
| 프로퍼티 | upload                          | XMLHttpRequestUpload 객체 제공                               |
| 메서드   | abort()                         | 현재의 비동기 통신을 중단                                    |
| 메서드   | getAllResponseHeaders()         | 수신한모든 HTTP 응답헤더를 취득                              |
| 메서드   | getResponseHeader(header)       | 지정한 HTTP 응답헤더를 취득                                  |
| 메서드   | open( ...)                      | HTTP 요청을초기화                                            |
| 메서드   | setRequestHeader(header, value) | 요청 시에 송신하는 헤더를 추가                               |
| 메서드   | send([body])                    | HTTP 요청을송신(인수 body는요청본체)                         |

#### Ajax에 대한 내 기본 생각

##### 예전에 웹에선 예시로 naver 페이지 안에서 하이퍼 링크나 버튼 누르면 새로운 창이 생성이 되며 그 새로운 창에 결과값이 출력됨 근데 Ajax가 나타나고 부터는 하이퍼 링크나 버튼을 눌러도 새로운 창에서 결과값이 출력 되는게 아니라 그냥 그 버튼을 누르면 그 창에서 결과 값이 나오거나 함 **ex** 만약 지도라고 하면 요즘 지도 보면 지도라는 창에서 나가지 않고 그 안에서 모든게 수행됨 길찾기라던지 그런걸 예전엔 새로운 지도 창이 생성되며 달라진 결과값을 거기에 출력된다고 보면 될듯. 

#### Ajax 는 현재 페이지에 결과값을 반영할 수 있다.

exam2에서 그 content안에 testxml.xml에서 엔터키까지를 글자로 인식해서 exam2를 출력했을때 alert창에 숫자가 7로 뜬다. 