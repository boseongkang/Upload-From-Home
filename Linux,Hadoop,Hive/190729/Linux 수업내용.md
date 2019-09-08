## LINUX 수업

### VMware-player install

설치할때 맨첨에 HELP 이런 문구 있는거에 체크박스 두개만 해제 하고 나머지는 그냥다 next 

vmnetcfg.exe 파일을 Program Files x86 폴더 안 VMware Player 폴더에 복-붙

cmd 창 켜고 ipconfig 교재 66 pg 중요하다고 하심 이거 해야 한다고. 

vmnetcfg.exe 더블클릭 해서 실행후 NAT를 선택해서 아래 Subnet IP 192.168. 다음주소를 111로 수정 VMnet8에 111인거 확인

77pg 일반적인 리눅스 배포판의 구성 이미지에서 커널 중요한듯 나중에 자세히 찾아보기

---

VMware Workstation 12 player 실행

이메일 그냥 입력 

C드라이브 밑에 CentOS 폴더 만들고 그 안에 linuxM폴더 만듬 

다시 workstation와서 create new virtual machine 제일 아래 체크박스 체크 대충 나중에 설치한다는 의미 

linux 선택하고  version에서 CentOS 64-bit 설정 

이름 linuxM으로 변경 루트는 위에서 만든 CentOS/linuxM 폴더로 디렉토리 설정 

위에 체크박스인 single file 체크 

Finish 누르면 home 아래 linuxM이 생성 

edit virtual machine settings 가서 CD/DVD 선택 옆에 Connection에서 Use ISO체크박스 클릭 Browse에서 그 4기가 짜리 CentOS-7.0 어쩌구 써있는거 읽혀줌

USB,Sound Card, Printer 는 아래에서 Remove

그러고 실행하고 remind me later 하고 keyboard에서 ok설정 

엔터쳐서 화면 나오면 

한글하고 다음 

소프트웨어 설치에서 기본환경에서 최소 설치 되어있는걸

개발 및 창조를 위한 워크스테이션 선택하고 완료 

네트워크 미 ㅊ호스트 이름 네트워크 켬 

재부팅 하고 엔터 

마우스 안나오면 **ctrl alt**

약관 동의 하고

kdump 활성화 해제

계정 없음? 그거로 id : root / pw : password 치고 확인 

한국어가 두개있는데 밑에있는건 - 해서제거 

+버튼 눌러서 영어(미국) 두번 눌러서 추가 

도움말 x 눌러서 제거 

터미널에서 #을 명령 프롬포트라고 한다. 

터미널에서는 ip 확인시 ifconfig 쳐서 확인 이건 동적인 ip 117pg 중요 step4

터미널 창에 pwd 치고 다시 cd /etc 

cd /etc/sysconfig/network-scripts/ 하고서 ls, ls -l, ls -al 

**vi 에디터** 라는걸 통해 리눅스를 다룰지 확인 

gedit ifcfg-eno16777728 하고서 창 뜨면 책 117pg에 있는 

BOOTPROTO=none 으로 고치고 

IPADDR=192.168.111.100
NETMASK=255.255.255.0
GATEWAY=192.168.111.2
DNS1=192.168.111.2 

이거 쳐서 none 아래 저거 써서 넣으면 됨 

hostname 으로 이름이 linuxserver 이면 냅두고 아니면 

hostnamectl set-hostname linuxserver 이 코드 쳐서 수정하면 됨 

다 수정하고서 systemctl restart network 치고 ifconfig 로  하고 

inet 192.168.111.100 주소가 이렇게 111.100으로 뜨면 성공 

/root --> 로그인을 했을 때 최초로 존재하게 되는 디렉토리 : 홈디렉토리 

cd +엔터 치면 홈 디렉토리로 이동하게 된다. 깃허브 cd .. 과 같은 개념인듯 pwd로 내가 들어와있는 디렉토리 확인 

ls 쳐서 검정색은 일반파일 파란색은 디렉토리 파일

ls -a 꼭 한칸 공백 주어야 됨  .으로 시작되는 파일들은 hidden 파일이다. a 안주면 hidden 파일은 안보여줌 

mkdir tools 하고 ls 하면 tools 폴더 만들어진거 확인 

pwd로 디렉토리 위치 확인  하고서

java -version 하면 자바 버젼 확인 가능 

javac는 명령어 인식 불가능 

우측 상당 root에서 알림 끄고 설정에서 전원에서 안함으로 설정

JDK 1.8 설치

home누르고 tools 에 jdk 복사해서 붙여 넣고 다시 터미널창와서 tar xvfz j 하고 탭 누르면 알아서 입력됨 가 압축을 해제하라는 의미 

ls jdk1하고 탭 누르면 자동완성 

/etc : 시스템 정보와 관련된 파일들 (이 디렉토리는 아무나 들어올수없다. window로 따지면 system 디렉토리)

/usr : JDK 와 같은 개발 툴을 보관하는 디렉토리 

/tmp : 여러 목적의 임시 폴더와 파일들이 생성되는 디렉토리 

**ls**, **mkdir** / **rmdir**(삭제하는건데 디렉토리가 비어있어야함)

 **rm**(파일삭제), **rm -f**(무조건 삭제)

 **rm -rf**(하위 디렉토리까지 강제로 물어보지 않고 삭제인데 신중히 사용)

**touch** 파일명(파일 생성), **cat** 파일명(파일의 내용을 확인)

**cp old파일명 new파일명**(복사)

 **cp -r old디렉토리 new디렉토리**(서버내 전체 복사)

 **mv old파일명 new파일명**(파일명 변경), **mv old파일명 디렉토리**(이동)

mv jdk1.8.0_131 /usr 로 이동  ls /usr 하면 파일 보여줌 

gedit /etc/profile 치면 창이 하나 뜸 

gedit 창에서 제일 아래로 내려가서 엔터하나 치고 

export JAVA_HOME=/usr/jdk1.8.0_131
export PATH=$JAVA_HOME/bin:$PATH

저 두개 써주고 저장하고 나온다. 

source /etc/profile 치는데 오타있다면 이거 돌아갈때 에러 뜰수도

java -version 해서 자바 1.8나오면 됨 

이젠 javac 하면 Usage 메세지가 뜬다. 

cd해서 home으로 온 상태에서 mkdir javaexample 디렉토리 생성

cd javaexample로 이동후 pwd로 확인가능

vi (visual editor) 

(1) 두가지 모드가 존재한다.

입력모드 : 입력되는 문자를 입력 데이터로 인식

명령모드 : 입력되는 문자를 편집 명령어로 인식 

(2) 편집 명령어가 알파벳 문자이다. 

(3) 초기에는 명령모드이다. 입력모드로 변환하려면 a, i, o 문자를 입력한다.    a append i insert o 밑에 행이 열린다. 

(4) 입력모드에서 명령모드로 변환하려면 ESC 키를 누른다. 

(5) 저장 - :w    종료 - :q   강제종료 - :q!   저장 + 종료 - :wq

vi FirstApp.java 이걸 하면 아래처럼 입력해 주어야함 **i**를 해줘야 입력모드로 바뀜 i 쳐주고 입력 모드로 바꾸는거 ★중요★

```
import java.util.Date;
public class FirstApp {
   public static void main(String args[]) {
      System.out.println("Time : " + new Date());
   }
}
```

이 코드 쳐 넣고 esc 로 바꿔서 :q 하면 나가짐 

javac FirstApp.java 치고 ls로 있나보고 java FirstApp치면 Time : 해서 뜸 

vi SecondApp.java  하고 i 쳐서 입력모드로 변경되면 아래 INSERT가 뜸

```
package test;

public class SecondApp {
   public static void main(String args[]) {
      A obj = new A();
      System.out.println(obj);
   }
}
class A{
}


```

치고 esc하고 :wq 엔터 치면 창 종료

 javac SecondApp.java  하고 ls 하면 class 저장되어있는거 확인

java SecondApp은 못찾음 FirstApp은 다시 쳐도 찾아짐 

SecondApp은 package 를 써줘서 못 찾음 

rm A.class 하고 지울꺼냐고 물어보면 y 치면 됨

rm -f SecondApp.class    -f 물어보지 말고 삭제해라.

javac -d . SecondApp.java (현재 디렉토리에 파일을 만들고 컴파일해서 넣으시오) 

ls하면 test 보이고 ls test하면 class 가 보임 

java test.SecondApp 하면 이제 보임. 

다시 vi SecondApp.java

class A{ 써있는거 가서 2yy 치고 아랫 줄 } 여기에 커서 올리고 p 누르면 붙여넣기가 됨 

x로 지우고 i로 INSERT 모드로 바꿔주고 B 작성

o누르면 아래 행 생김 INSERT모드 아닐때

```
class B {
   public String toString(){
      return "B Class object";
   }
}
```

 A obj = new A(); 2yy 하고 밑에줄가서 p

A obj 중 A가서 r누르고 B 써주면 바뀜

B obj 에서 obj 위에 커서 두고 cw 하고 작성

#### cw : change word 

#### . 점 누르면 마지막에 수행한 명령 반복

하고 esc :wq 하고 나옴

firefox에서 편집-환경설정-저장위치에서 찾아보기-root-tools 선택

이클립스도 home-tools에 붙여넣기(반드시linux 버젼확인후 설치)

cd ../tools

tar xvfz jdk-8u131-linux-x64.tar.gz  해서 압축푼다

하고 ls로 압축 푼거 확인 

mv eclipse .. 으로 이동하고 ls로 없어진거 확인 

cd .. 으로 홈으로 나갔다가 

cd eclipse로 이클립스로 이동후 ls로 확인하고 

./eclipse 하면 이클립스가 실행됨

이클립스 켜지면 기다리기 누르면 들어가짐 

javaproject 만들고 이름은 javaexam openperspective 누름 

class 하나 만듬 package 안주고 FirstApp으로