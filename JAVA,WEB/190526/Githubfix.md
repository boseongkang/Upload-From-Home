## 깃허브에 올릴 메모장  

- Typora 사용
- 저장시 이름명.md로 저장할것
- 예시) 학습용.md

## GitHub 간단 명령어

- ls : 파일 뭐가 있는지 보여줌

- mkdir (생성할 폴더명)  원하는 이름의 폴더가 생성됨 이후 ls로 생성 확인 가능

  예시)폴더명을 오늘날짜인 190526이라 가정

- cd (생성된 폴더명)/ --> 생성된 폴더 안으로 진입 (cd 띄어쓰기와 문장 끝에 / 해줘야함)

-  cd .. 생성된 폴더로 들어오기전 위치해 있던 폴더로 이동

- mv 이름명.md(공부후 요약한 Typora 파일명) 생성한 파일명/

  예시) mv 학습용.md 190526/ --> 학습용.md  파일이 190526 폴더로 이동됨

- git init = 빈 Git 저장소 초기화

- git status (On branch master) 괄호 앞 입력시 괄호 안 문구가 뜸 아직은 잘 모르겠다.

- git add .  --> add 뒤에 띄어쓰기 후 (.)  점을 찍어야 인식한다

- git config --global user.email "OOO@gmail.com" OOO에 내 메일명을 입력

- git congif --global user.name "OOO" OOO에 내 깃허브 계정명 입력

- git commit -m "아마도 저장되는 이름?" 정확하지 않음

- git status 하면 commit할게 없고 working tree clean 이라고 뜬다

- git log 하면 commit값과 내 정보와 오늘 날짜 정보가 뜨고 제목? 이 뜬다

- git remote add origin https://github.com/OOO/OOO.git

  위 OOO에 순차적으로 내 ID와 깃허브 안에 저장할 폴더명을 입력

- git push -u origin master 하면 로그인 창이 뜬다 로그인 하면 업로드 완료.