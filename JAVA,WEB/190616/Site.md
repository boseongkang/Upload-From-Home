## 사이트 개설

닷홈에서 도메인 중복검사 후 웹호스팅으로 도메인 연결해서 사이트 만듬.

이클립스에 있던 것들을 웹상에서 톰캣없이 띄우려면 FTP(Fril Transfer Protocol)를 이용하여 올려야한다.

 FTP는 FileZila라는 프로그램을 설치.(무료)

이때 주의사항은 html에 올려야하고 꼭 index.html로 해야 화면에 출력된다. 나머지 사이트들도 화면에 출력하려면 일단 호스트, 사용자명, 비밀번호를 입력후 빠른 연결을 하여 내 컴퓨터와 웹을 연결시켜주고 좌측에 로컬 사이트가 내 컴퓨터, 우측에 리모트 사이트가 화면에서 실제 보여질 화면.

로컬 사이트에서 화면에 출력하고픈 문서를 우측으로 드래그하고 이름을 index.html로 변경

변경했다면 내 사이트의 주소를 치고 들어가면 화면이 출력된다. 만약 다른 페이지도 보고 싶다면 자신의 URL뒤에 **/파일이름.html** 까지 입력해주면 그 화면으로 넘어가게 된다. Servlet기능은 아직 사용법을 몰라서 못하는중. 여러 페이지를 열고 싶다면 메인으로 할 페이지를 index.html로 해놓고 나머지는 그냥 이름 그대로 우측으로 드래그만 해놓고 **/파일이름.html** 만 입력하면 된다.