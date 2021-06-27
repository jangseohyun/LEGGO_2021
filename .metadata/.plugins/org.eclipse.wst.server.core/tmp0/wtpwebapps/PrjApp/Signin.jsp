<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!doctype html>
<html lang="en">
<head>
<title>Login</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/style.css">

</head>
<body class="img js-fullheight" style="background-image: url(images/gyeongju.jpg);">
<p class="userimg">eun j 님의 사진입니다.&nbsp;&nbsp;&nbsp;</p>
<section class="ftco2-section">
		<div class="container" style="padding: 50px;">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section" style="font-family: 'Noto Sans KR', sans-serif;">회원가입</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
						<form action="#" class="signin-form">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="이메일"
									required>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" placeholder="별명"
									required>
							</div>
							<div class="form-group">
								<input id="password-field" type="password" class="form-control"
									placeholder="비밀번호" required> <span
									toggle="#password-field"
									class="fa fa-fw fa-eye field-icon toggle-password"></span>
							</div>
							<div class="form-group">
								<input id="password-field" type="password" class="form-control"
									placeholder="비밀번호 확인" required> <span
									toggle="#password-field"
									class="fa fa-fw fa-eye field-icon toggle-password"></span>
							</div>
							<div class="form-group">
								<button type="submit"
									class="form-control btn2 btn2-primary submit px-3">회원가입</button>
							</div>
						</form>
						<br><br><p class="w-100 text-center">&mdash; SNS 계정으로 편하게 가입 &mdash;</p>
						<div class="social d-flex" style="text-align: center;">
							<a><img src="images/kakao_login.png" width="50px"></a>
							<a><img src="images/naver_login.png" width="50px" style="border-radius: 5px;"></a>
							<a><img src="images/google_login.jpg" width="50px" style="border-radius: 5px;"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>