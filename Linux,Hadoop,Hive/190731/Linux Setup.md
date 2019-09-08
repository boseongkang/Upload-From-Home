## 처음부터 노트북에 새로 설치하는 Linux

---

1. ### VMware-player 설치 

VMware-player 응용프로그램 실행해서 설치하고 처음에 agree 누르고 keyboard 드라이버 뭐 그런식으로 써 있는거는 체크 안하고 next, 체크박스 두개 체크 되어 있는 화면 둘다 체크 풀고 나머지는 전부 next하다가 finish 

---

2. ### vmnetcfg를 이용한 가상머신 IP주소 변경

vmnetcfg 응용프로그램을 Program Files x86 -VMware - VMware Player 라는 폴더안에 추가한다. 

cmd(명령프롬포트)를 실행시켜 `ipconfig`라는 명령어를 줘서 가상머신의 ip를 확인한다. VMnet8의 IPv4 주소 확인한다. 

vmnetcfg 응용프로그램을 실행시킨다. 실행시키면 Virtual Network Editor라는 창이 실행된다. 여기서 Name이 VMnet8이며 Type이 NAT인 아이를 보면 `External Connection`에 NAT이라고 적힌걸 확인 할 수 있다. 그 아이를 누르고 화면 제일 아래 보면 Subnet IP란에가서 192.168.xx.0 이렇게 되어있는 부분 (xx는 사람마다 다를것) 을 111로 수정한다. (내 노트북은 Subnet IP란에 입력할수 없게 되어 있어서 아래 주의 아이콘과 함께 Settings 인가 써있는거 눌렀더니 NAME이 VMnet0인 아이가 하나 생성되며 IP주소를 변경할수 있게 되었다.)

완료 되면 다시 cmd 창에 가서 `ipconfig`라는 명령어를 주고 VMnet8의 IPv4의 주소가 192.168.111.1 로 변경 된걸 확인 할 수 있다. 

---

3. ### VMware Workstation 12 player 실행

실행하게 되면 위에 체크박스가 체크 되어있고 이메일 치라고 한다. 본인 이메일 치면 된다. 

C드라이브 아래 CentOS 폴더 만들고 그 안에 linuxM 이라는 이름으로 폴더 하나 생성

다시 `Workstation` 와서 `Create a New Virtual Machine` 누르면 설치 마법사(~~Wizard)가 뜨는데 이 때 기본으로 선택되어 있는 체크박스(Installer disc image file (iso) 라고 적힌 체크박스 아래껄 체크한다.) next, `Guest operating system` 5개의 보기 중 Linux를 선택하고 `Version`에서 `CentOS 64-bit` 설정한다. next, `Virtual machine name` 이 `CentOS 64-bit`으로 되어있을건데 이름을 linuxM으로 변경하고 아래 Location은 방금 위에서 만든 C드라이브아래 CentOS폴더 아래 linuxM을 경로로 잡아준다. `C:\CentOS\linuxM` 으로 되게끔. next, 체크박스를 위에꺼 선택한다. single file 적혀 있는거 디스크 사이즈는 20기가 그대로 설정 next, finish 하면` Workstation`에서 Home아래 linuxM이라는 가상머신? 이 생성된다. 

linuxM누르고 우측 Edit virtual machine settings 클릭, CD/DVD 에서 체크박스중 `USE ISO image file`을 Browse에서 `CentOS-7.0` 4기가 인걸 읽혀준다. 그리고 좌측에서 필요없는 USB, Sound Card, Printer를 아래 Remove로 지운다. 

`Play virtual machine` , `Software Updates` 는 `Remind Me Later` 키보드 뭐시기는 cancel 했다. 

가상머신에서 마우스가 사라졌다면 ctrl + alt 누르면 커서 살아난다.  

enter 누르다 보면 언어 선택 나온다. 한국어 선택

`소프트웨어 선택`에서 기본환경에서 최소 설치에 선택 되어있는걸 제일 아래 `개발 및 창조를 위한 워크스테이션` 하고 완료

`네트웨크 및 호스트 이름` 네트워크가  꺼져있는걸 켜준다. 아래 호스트 이름란에 localhost로 적힌걸 `linuxserver`로 변경해준다.

`설치대상`에서 `파티션을 설정합니다`로 체크박스를 해주고 `로컬 표준 디스크`아래 그림을 누르고 완료를 누르고 나간다. 한 번하면 인식이 안되고 다시 `설치대상`눌러서 들어갔다가 그림 누르고 완료 누르고 나오면 `새로운 파티션 설정`이라는 창이 뜬다. 여기서 `LVM`이라고 되어 있는걸 `표준파티션`으로 변경해준다. + 버튼을 누르면 `새 마운트 지점 추가`라는게 나오는데 `마운트 지점`을 swap을 고르고 용량은 맨처음 20기가로 설정했기에 10%인 `2G`로 한다. 다시 + 눌러서 이번엔 `마운트 지점`을 `/` 이거 선택하고 용량은 안쓰면 알아서 설정해준다. 완료 - 변경 사항을 적용

키보드에서 + 눌러서 영어(미국) 인거 추가해준다. 그래야 영어 자판 가능.

그리고 설치 시작 누르고 `ROOT 암호`에 password적어주고 `사용자 생성`에는 centos 비밀번호에도 centos적는다. 완료 두번 눌러야 설정된다. 

설치 완료 되면 재부팅 클릭 

`라이선스 정보` 동의 하고 우측하단에 설정 완료 누르면 `Kdump`라는 창이 뜬다. 활성화 안한다고 한다. 하고 무슨 예 아니오 떠서 예 했다. 

설치 완료 되면 중앙에 centos가 적힌 창이 뜨는데 그 아래 `목록에 없습니까?` 클릭 id에 root 비밀번호에 password 입력 

환영합니다 창에 한글 고르고 다음하면 입력기 선택에 한글이 두개 있다. 밑에 있는걸 `-`를 통해 제거 한다. 

`클라우드에 있는 계정 연결` 그냥 다음  하고서 실행 하면 끝.

---

### 가상머신 내부 실행

`프로그램` 에서 `터미널` 실행시켜서 `ipconfig`쳐서 ip 확인한다. 

이 때 터미널에 코드 작성할때 한글을 영문으로 변환시키려면 `window키+spacebar`쓰면 바뀌는데 나중에 뭐 렉걸린다고도 하셔서 이거보단 화면 우측 상단을 보면 `en` 이나 `한` 이라고 써있는걸 눌러서 쓰고 싶은 글자로 변경하면 된다. 

터미널 창에서 `cd /etc/sysconfig/network-scripts/` 치고 `ls` 쳐보면 세부폴더나 안에 담긴것들이 보인다. 제일 윗줄 ifcfg-eno16777728 확인하고 컴퓨터 마다 번호는 다를수 있다. 

`gedit ifcfg-e` e까지만 치고 키보드의 Tab키 누르면 자동완성 된다. 

gedit 저 코드 치면 창이 뜨는데 교재 117pg 보면 dhcp를 none으로 바꿔주고 

IPADDR=192.168.111.100

NETMASK=255.255.255.0

GATEWAY=192.168.111.2

DNS1=192.168.111.2

이 코드를 추가해준다. 저장하고 창 종료 

`systemctl restart network` 치고  `ifconfig` 해보면 위에 `inet 192.168.111.100` 으로 바뀐거 볼 수 있다. 

`[root@linuxserver network-scripts]` 이 상태에서 cd 하고 엔터 치면 제일 처음 홈 디렉토리로 간다. 이 때 `pwd` 라는 명령어 치면 `/root` 라는걸 볼수있는데 로그인 했을때 최초로 존재하게 되는 디렉토리, 홈디렉토리 이다. 

---

### 갑자기 번외로 hostname 변경하려는 코드

`hostnamectl set-hostname linuxserver` 이 코드 쳐서 수정하면 된다. linuxserver는 변경하려는 이름이고 이거 원하는 이름으로 수정하면 된다.

---

### 새 폴더 만들기

`mkdir tools` 하고 `ls` 하면 tools 가 생긴걸 볼수 있다. 

JDK 1.8 설치 

home 누르고 tools에 jdk 복사 붙여 넣기, 터미널에서 tar xvfz j하고 Tab이용해 자동완성 하면 알아서 압축해제 된다. 

`mv jdk1,8,0_131 /usr` 이 코드로 압축 풀린 jdk파일을이동 

`gedit /etc/profile` 로 창 하나 띄우고 열린 창에서 코드 제일 아래로 내려가 enter 치고 

`export JAVA_HOME=/usr/jdk1.8.0_131` 

`export PATH=$JAVA_HOME/bin:$PATH` 이 두개의 코드를 붙여넣고 저장하고 종료

`source /etc/profile` 머하는건지는 모르겠는데 일단 하자 오타 있다면 이걸 쳤을때 에러가 난단다. 

`java -version`해서 1.8버젼인게 나오면 된다. 

`cd`해서 제일 처음인 root로 오고 `mkdir javaexample` 디렉토리 생성하고 `cd javaexample` 생성한 디렉토리로 이동하고 `pwd`로 알맞게 왔는지 확인.

`vi FirstApp.java` 치면 창 열리는데 거기가서 `i`누르고 입력모드일때 

```
import java.util.Date;
public class FirstApp {
   public static void main(String args[]) {
      System.out.println("Time : " + new Date());
   }
}
```

이 코드 붙여 넣고 Esc 누르고 `:wq` = 저장하고 종료 or Esc 하고 Shift zz 해도 저장하고 종료된다. 

`javac FirstApp.java` 하고 `ls` 해보면 FirstApp.class와 FirstApp.java가 생성된거 확인가능 

`java FirstApp` 하면 Time : 해서 코드 작성한대로 출력된다. 

`vi SecondApp.java` -> `i` 

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

이 코드 붙여넣고 Esc -> Shift zz (저장 나오기)

`javac SecondApp.java`하고  `ls`하면 class 저장된거 확인

`java SecondApp`은 못찾는다. FirstApp은 다시쳐도 결과가 나옴

SecondApp은 package를 써줘서 못 찾는다. 

`rm A.class` 하고 지울	거냐고 물어보면 `y`치면 지워진다.

`rm -f SecondApp.class -f  `물어보지 말고 삭제해라.

`javac -d . SecondApp.java `현재 디렉토리에 파일을 만들고 컴파일해서 넣으시오

음 왜 SecondApp.java가 없다는지 모르겠으니 중요한거 같지도 않고 일단 여기까지하고

---

### Linux에 eclipse 설치

firefox에서 편집-환경설정-저장위치에서 찾아보기-root-tools 선택

이클립스도 home-tools에 붙여넣기(반드시linux 버젼확인후 설치)

`cd ../tools` -> `tar xvfz jdk-8u131-linux-x64.tar.gz` 해서 압축푼다 하고 `ls`로 압축 푼거 확인

`mv eclipse ..` 으로 이동하고 ls로 없어진거 확인

cd .. 으로 홈으로 나갔다가

cd eclipse로 이클립스로 이동후 ls로 확인하고

./eclipse 하면 이클립스가 실행됨

이클립스 켜지면 기다리기 누르면 들어가짐

javaproject 만들고 이름은 javaexam openperspective 누름

class 하나 만듬 package 안주고 FirstApp으로