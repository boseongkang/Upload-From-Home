## 6월 5일 

### Web Storage API 

- Same Origin Policy : 스토리지에 보관해둔 사이트, ex) 네이버에서 저장한건     									네이버에서만 사용가능 다음에서 네이버 자료 읽기 X	          				     도메인당 5mb로 권장, 추가시 사용자 동의 얻어 확장O

| length                 | 스토리지에 저장된 key/value 쌍의 갯수를 추출하는 속성        |
| ---------------------- | ------------------------------------------------------------ |
| key(index)             | 숫자형 인덱스에 해당하는 key를 리턴한다                      |
| getItem(key)           | 스토리지로 부터 key에 해당하는 value를 추출한다              |
| removeItem(string key) | 스토리지에 key에 해당하는 value를 제거한다.                  |
| clear()                | 현재 스토리지의 모든 데이터를 제거한다.                      |
| onstorage              | 로컬 스토리지의 내용이 변경될 때마다 발생되는 이벤트로 로컬스토리지의 변경사항을 모니터링 하는 것이 가능하다. StorageEvent 객체가 생성된다 |

##### StorageEvent 객체의 주요 속성

- key : 추가, 삭제, 변경된 키 이름
- oldValue : 업데이트되기 전의 값으로 새로 추가된 값이면 null
- newValue : 새로 업데이트된 값으로 기존 값을 삭제한 경우에는 null
- url : 변경사항이 발생된 페이지의 URL

#### 로컬 스토리지의 데이터 관리

- 저장

  localStorage.mykey = "myvalue";

  localStorage["mykey"] = "myvalue";

  localStorage.setItem("mykey","myvalue");

- 읽기

  var mydata = localStorage.mykey;
  var mydata = localStorage["mykey"];
  var mydata = localStorage.getItem("mykey”);

- 삭제

  delete localStorage.mykey;
  delete localStorage["mykey"];
  localStorage.removeItem("mykey");

#### 세션 스토리지의 데이터 관리

- 저장

  sessionStorage.mykey = "myvalue";
  sessionStorage["mykey"] = "myvalue";
  sessionStorage.setItem("mykey", "myvalue");

- 읽기

  var mydata = sessionStorage.mykey;
  var mydata = sessionStorage["mykey"];
  var mydata = sessionStorage.getItem("mykey”);

- 삭제

  delete sessionStorage.mykey;
  delete sessionStorage["mykey"];
  sessionStorage.removeItem("mykey");