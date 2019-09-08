## Java 와 R 연동

---

**Rserve** : R 바이너리 서버라고 불리우는 프로그램으로서 Java 나 다른 언어에서 R 코드를 연동할 때 필요한 기능을 서포트하는 서버이다. Java, C, C++, PHP와 같은 다른 프로그램에서 TCP/IP로 R 에 원격 접속, 인증, 파일전송을 가능하게 해준다. Rserve 는 최근까지도 최신 버전이 업데이트 되고 있다.

install.packages("Rserve") 

---

## Rserve 를 사용하기 위한 pom.xml 설정

Java에서 R을 사용하기 위해서 Rserve 와 REngine 2개의 라이브러리를 임포트 해야 사용할 수 있다. 해당 라이브러리는 Rserve 홈페이지에서 다운로드 가능하지만 pom.xml안 dependencies 태그 안에 dependency 태그를 추가해서 사용해도 된다. 이클립스에 있는 pom.xml이다.

```java
<dependency>
			<groupId>com.github.lucarosellini.rJava</groupId>
			<artifactId>JRIEngine</artifactId>
			<version>0.9-7</version>
		</dependency>        
		<dependency>
			<groupId>net.rforge</groupId>
			<artifactId>Rserve</artifactId>
			<version>0.6-8.1</version>
		</dependency>        
```

---

## Rserve에 접속하는 명령 실행 

**RConnection** 은 R 에 접속하여 핵심적인 역할을 수행하는 클래스이다. R 에 접속, 인증, 세션종료, 파일 생성, 파일 읽기, 자료 전송, 자료 조회 등을 처리한다. 

**eval()** : R에 직접적인 명령을 내리고 REXP 타입으로 데이터를 리턴 (R코드는 eval() 괄호안에 적어주어야한다.)

**assign()** : R 의 변수에 REXP 또는 String 형태로 데이터를 지정하여 설정한다. (자바에서 생성한걸 R에 할당)

**REXP** : R 과 Java 에서 서로의 자료구조와 데이터 타입을 서로 사용할 수 있도록 지원하는 데이터 모델 형의 클래스이다. 이 클래스에서 데이터 프레임과 행렬 구조로 데이터 모델을 생성 시킬 수 있다.

**REXP 타입**

| asBytes        | Byte 일차원 배열형으로 리턴해준다.   |
| -------------- | ------------------------------------ |
| asDouble       | double 형으로 리턴해준다.            |
| asDoubleMatrix | double 이차원 배열형으로 리턴해준다. |
| asDoubles      | double 일차원 배열형으로 리턴해준다. |
| asList         | RList 형으로 리턴해준다.             |
| asString       | String 형으로 리턴해준다.            |
| asStrings      | String 일차원 배열형으로 리턴해준다. |
| length         | 데이터의 갯수를 알 수 있다.          |

---

## R 데이터 프레임을 Java에서 사용 - RList

Map 인터페이스를 구현하고 있는 RList는 내부적으로 벡터 값들을 지닌 리스트들이 관리하고 있다. 

RList 를 이용하여 데이터 프레임과 같은 자료구조를 사용 할 수 있다.

| at   | Index 또는 변수명에 해당하는 열 데이터들을 REXP 객체로 리턴한다. |
| ---- | ------------------------------------------------------------ |
| size | 리스트의 갯수를 알 수 있다.                                  |

---

## Rserve 기동

1. RStudio 에서 기동 시키기 

`Rserve(args="--RS-encoding utf8")` (R에선 하진 않았고 CMD에서만 했다. CMD가 더 좋은 것 같다.)

2. CMD 창에서 단독으로 기동시키기(단독 기동 가능, 오류 메시지 확인 가능)

1. `C:\Program Files\R\R-버전정보(숫자)\library\Reserve\libs\x64` 이 폴더안에 있는 모든걸 복사해서 아래 bin\x64에 붙여 넣는다.
2. `C:\Users\사용자 계정이름\Documents\R\win-library\버전정보(숫자)\Rserve\libs\x64`

Rserve 폴더 위치가 두가지로 나뉜다. 윈도우 10은 아마 2번일 수도

`C:\Program Files\R\R-버전정보(숫자)\bin\x64`

복사해서 붙여 넣었다면 cmd 창을 띄우고 `C:\Program Files\R\R-버전정보(숫자)\bin\x64` 디렉토리로 이동 후 `Rserve --RS-encoding utf8` 이 명령을 수행 시키면 

cmd 창에 `Rserve: Ok, ready to answer queris.` 이렇게 뜨면 성공이다. 

