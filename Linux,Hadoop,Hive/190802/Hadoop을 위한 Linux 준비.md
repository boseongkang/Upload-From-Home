## Hadoop을 위한 Linux 준비

---

(1) c:/CentOS 폴더에 linuxM은 냅두고 m1 이라는 폴더를 생성한다.
(2) m1 이라는 이름의 가상 머신을 c:/CentOS/m1 폴더에 생성한다.
     메모리는 2G, HD는 40G로 설정한다.
(3) CentOS를 설치한다.
     root 계정의 패스워드는 password 이다.
     centos 계정도 생성한다. 패스워드는 centos 이다.
(4) 시스템 이름은 master 라고 한다.
(5) 고정 IP 타입을 설정하고 IP 주소를 192.168.111.120 로 지정한다.
     -> 리눅스 도서 117~118
(6) 네트워크가 되는 것을 firefox에서 확인한다.

​     설치 다하고 c:/CentOS안 m1 폴더를 3번 복붙해서 복사본(3)까지 만든다. 그리고 이름을 m2, m3, m4로 수정하고 클릭해서 들어가 m1이라고 적힌 VMware virtual machine configuration을 메모장에서 열고 `display Name=` 이걸 수정해준다.

m1 = master로 

m2 = slave1으로 

m3 = slave2로

m4 = slave3로 수정. 