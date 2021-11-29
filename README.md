# 1. 프로젝트 개요

</br>

<b>2조 버그와이저 🍺 :</b> 조은선(조장), 심혜진, 이새롬, 장서현

<ul>
  <li><b>프로젝트명:</b> LEGGO(레고)</li>
  <li><b>진행 기간:</b> 2021.05 ~ 2021.07</li>
  <li><b>소개:</b> 여행 일정 제작 및 공유 사이트</li>
  <li><b>개발 툴:</b> Eclipse, Sql Devloper</li>
  <li><b>OS:</b> Windows 10</li>
  <li><b>서버:</b> Apache Tomcat 8.5</li>
  <li><b>기술 스택:</b> Java 8, JavaScript, JSP, HTML5, CSS3</li>
  <li><b>프레임워크:</b> Spring Framework, Mybatis, BootStrap</li>
</ul>

</br></br>

# 2. 담당 기능

</br>
1. 로그인/자동 로그인</br>
2. 카카오 로그인 기능</br>
3. 회원가입</br>
4. 회원가입 이메일 인증 기능</br>
5. 마이 페이지</br>
6. 작성한 게시글·댓글·일대일 문의 조회 기능</br>
7. 팔로잉/팔로워 조회 기능</br>
8. 프로필 수정</br>
9. 회원 탈퇴</br>

</br></br></br>

# 3. 담당 기능 상세

</br>

<h3>1. 로그인</h3>
<img src="https://user-images.githubusercontent.com/48784292/143881273-5401c851-0d03-4e04-ba0a-a1a66c37259f.png" width="60%"/>
- 세션/쿠키를 사용하여 구현하였습니다. 로그아웃 시 보유한 세션/쿠키를 만료시킵니다. 카카오 로그인 API로 카카오 로그인 기능을 구현하였습니다. toastr 라이브러리로 로그인 시 에러 사항에 대한 알림이 뜹니다.

</br></br>

<h3>2. 회원가입</h3>
<img src="https://user-images.githubusercontent.com/48784292/143881573-618ccb13-7518-455b-9861-59ec4210a73c.png" width="60%"/>
- JavaMail API를 통해 회원가입 시 입력한 이메일로 인증 메일을 전송합니다. 메일이 인증되지 않을 경우 로그인을 제한합니다. 입력한 이메일, 별명이 사용 중일 경우 회원 가입이 제한되며 사용 제한 알림이 뜹니다.

</br></br>

<h3>3. 마이 페이지</h3>
<img src="https://user-images.githubusercontent.com/48784292/143881579-92a53860-a3b7-4c76-bfcc-790fb3b886e6.png" width="60%"/>
- 회원 프로필과 팔로워/팔로잉, 프로필 설정, 비밀번호 변경, 작성한 게시글 조회 페이지로 이동할 수 있습니다. 작성 게시글이 최신순으로 조회됩니다. 비로그인 상태에서 마이 페이지에 접속할 경우 인터셉터를 통해 로그인 페이지로 이동시킵니다.

</br></br>

<h3>4. 작성 게시글 조회</h3>
<img src="https://user-images.githubusercontent.com/48784292/143881584-6ef857d7-500f-42c2-bdab-9e7f3bd1f472.png" width="60%"/>
- 작성한 게시글(일정, 여행기, 사진) 목록을 조회할 수 있습니다. 썸네일, 제목, 작성일시를 확인할 수 있으며 ‘View’를 클릭해 상세 페이지로 이동하거나 ‘Edit’을 클릭해 수정 페이지로 이동합니다.

</br></br>

<h3>5. 팔로잉/팔로워</h3>
<img src="https://user-images.githubusercontent.com/48784292/143881595-e29cffc9-b63d-4a9c-8ddc-d9b829f55e86.png" width="60%"/>
- 프로필 사진, 별명, 자기소개를 수정합니다. 자바스크립트 함수로 중복된 별명 확인과 글자수 확인 및 제한 기능을 구현하였습니다.

</br></br>

<h3>6. 프로필 수정</h3>
<img src="https://user-images.githubusercontent.com/48784292/143881590-eed05aa6-1378-4066-b6b4-38621debef6a.png" width="60%"/>
- 프로필 사진, 별명, 자기소개를 수정합니다. 자바스크립트 함수로 중복된 별명 확인과 글자수 확인 및 제한 기능을 구현하였습니다.

</br></br>

<h3>7. 회원 탈퇴</h3>
<img src="https://user-images.githubusercontent.com/48784292/143881615-08479d32-32c9-4d06-b48b-675ef6b58d7a.png" width="60%"/>
- 회원 탈퇴 시 기존 회원 테이블에서의 회원 정보를 삭제합니다.
