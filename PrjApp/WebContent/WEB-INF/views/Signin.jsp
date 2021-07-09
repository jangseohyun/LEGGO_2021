<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!doctype html>
<html lang="en">
<head>
<title>Signin.jsp</title>
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

<!-- toastr css 라이브러리 -->
<!-- <link rel="stylesheet" type="text/css" href="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" /> -->

<style type="text/css">

body
{
	font-family: 'Noto Sans KR', sans-serif;" 
}

a {
  color: #ffffff;
  text-decoration: underline;
  background-color: transparent; }
  a:hover {
    color: #0088ff; }

</style>

</head>
<%-- <input type="hidden" value="${param.message }" id="message"> --%>
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
					<div class="login-wrap p-0" id="signinDiv">
						<form action="signin.action" role="form" class="signin-form">
							<div class="form-group">
								<input id="mem_id" name="mem_id" type="text" class="form-control" placeholder="이메일"
									required>
							</div>
							<div class="form-group">
								<input id="mem_nnm" name="mem_nnm" type="text" class="form-control" placeholder="별명"
									required>
							</div>
							<div class="form-group">
								<input id="mem_pw" name="mem_pw" type="password" class="form-control"
									placeholder="비밀번호" required> <span
									toggle="#password-field"
									class="fa fa-fw fa-eye field-icon toggle-password"></span>
							</div>
							<div class="form-group">
								<input type="password" class="form-control"
									placeholder="비밀번호 확인" required> <span
									toggle="#password-field"
									class="fa fa-fw fa-eye field-icon toggle-password"></span>
							</div>
							<div class="text-center">
								 <label style="font-size: 14px;">
								 <input type="checkbox" id="agreecheck" style="width: 13px; height: 13px;" value="agreed">&nbsp;&nbsp;LEGGO의
								 <a href="https://www.notion.so/plmaq11/183c288a585046de87feb3c606aaa1b4">이용약관</a>과&nbsp;
								 <a href="https://www.notion.so/plmaq11/942040484c324c34a3c838623213c271">개인정보 취급방침</a>을 확인하고 이에 동의합니다.</label>
							</div>
							<div class="form-group">
								<br>
								<button type="submit"
									class="form-control btn2 btn2-primary submit px-3">회원가입</button>
							</div>
						</form>
						<br><p class="w-100 text-center" style="font-size: 15px;">&mdash; SNS 계정으로 편하게 가입하기 &mdash;</p>
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
	<!-- toastr js 라이브러리 -->
	<!-- <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script> -->
	
	<!-- 
	<script>
		$(document).ready(function()
		{
			if ($("#message").val() != "")
			{
				toastr.options.closeButton = true;
				toastr.options.progressBar = true;
				toastr.success($("#message").val(),
				{
					timeOut : 3000
				});
			}
		});
	</script>
	 -->
	 
	<script type="text/javascript">

		// url에서 파라미터 삭제
		history.replaceState({}, null, location.pathname);

	</script>

<style type="text/css">

body {
	font-family: 'Noto Sans KR', sans-serif;
}

</style>
</body>
</html>