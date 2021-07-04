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

<style type="text/css">

#iconchange
{
	border-radius: 15px !important;
}

</style>

<!-- 구글 로그인 API -->
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id" content="447693494839-5d859g9t2hvpdupbar05mii8a0c4ag1j.apps.googleusercontent.com">

<!-- 메일 전송 -->
<script type="text/javascript">
function send_mail(){
    window.open("./test_mail.jsp", "", "width=370, height=360, resizable=no, scrollbars=no, status=no");
}
</script>
</head>
<body class="img js-fullheight" style="background-image: url(images/jeju.png);">


<p class="userimg">Romi 님의 사진입니다.&nbsp;&nbsp;&nbsp;</p>
<div>

</div>
<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">로그인</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
						<h3 class="mb-4" style="text-align: right; font-size: 15px; font-family: 'Noto Sans KR', sans-serif;" onclick="location.href='/PrjApp/Signin.jsp';">계정이 없으신가요? 회원가입</h3>
						<form action="#" class="signin-form">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="이메일"
									required>
							</div>
							<div class="form-group">
								<input id="password-field" type="password" class="form-control"
									placeholder="비밀번호" required>
									<span toggle="#password-field"
									class="fa fa-fw fa-eye field-icon toggle-password"></span>
							</div>
							<div class="form-group">
								<button type="submit" class="form-control btn btn-primary submit px-3"
								style="font-family: 'Noto Sans KR', sans-serif;">로그인</button>
							</div>
							<div class="form-group d-md-flex">
								<div class="w-50">
									<label class="checkbox-wrap checkbox-primary" style="font-family: 'Noto Sans KR', sans-serif;">자동 로그인<input
										type="checkbox" checked> <span class="checkmark"></span>
									</label>
								</div>
								<div class="w-50 text-md-right">
									<a href="#" style="color: #fff; font-family: 'Noto Sans KR', sans-serif;" onclick="location.href='/PrjApp/FindPw.jsp';">비밀번호 찾기</a>
								</div>
							</div>
						</form>
						<br><p class="w-100 text-center" style="font-family: 'Noto Sans KR', sans-serif; font-size: 15px;">&mdash; SNS 계정으로 편하게 로그인하기 &mdash;</p>
						<div class="social d-flex">
							<div class="googlelogin g-signin2 iconchange" data-width="150" data-height="50" data-onsuccess="onSignIn">
						</div>
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
	
	<script>
        function onSignIn(googleUser) {
            // Useful data for your client-side scripts:
            var profile = googleUser.getBasicProfile();
            console.log("ID: " + profile.getId()); // Don't send this directly to your server!
            console.log('Full Name: ' + profile.getName());
            console.log('Given Name: ' + profile.getGivenName());
            console.log('Family Name: ' + profile.getFamilyName());
            console.log("Image URL: " + profile.getImageUrl());
            console.log("Email: " + profile.getEmail());

            // The ID token you need to pass to your backend:
            var id_token = googleUser.getAuthResponse().id_token;
            console.log("ID Token: " + id_token);
        };
    </script>

<style type="text/css">

body {
	font-family: 'Noto Sans KR', sans-serif;
}

</style>
</body>
</html>