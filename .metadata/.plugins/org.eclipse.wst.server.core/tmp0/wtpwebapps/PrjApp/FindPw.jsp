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

<!-- 메일 전송 -->
<script type="text/javascript">
function send_mail(){
    window.open("./test_mail.jsp", "", "width=370, height=360, resizable=no, scrollbars=no, status=no");
}
</script>

</head>
<body class="img js-fullheight" style="background-image: url(images/gangneung.jpg);">
<p class="userimg">mong2unnie 님의 사진입니다.&nbsp;&nbsp;&nbsp;</p>
<section class="ftco2-section">
		<div class="container" style="padding: 50px;">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
				<br><br><br><br>
					<h2 class="heading-section" style="font-family: 'Noto Sans KR', sans-serif;">비밀번호 찾기</h2>
				</div>
			</div>
			<br><br>
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<p class="text-center" style="width: 450px; background-color: rgba( 255, 255, 255, 0.2 ); color: #ffffff; border-radius: 10px;"><br>가입하신 이메일을 입력해주세요.<br>비밀번호를 재설정할 수 있는 이메일을 보내드립니다.<br><br></p>
				</div>
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
						<form action="#" class="signin-form">
							<div class="form-group">
								<input type="text" class="form-control" style="background-color: rgba( 255, 255, 255, 0.2 );" placeholder="이메일"
									required>
							</div>
							<div class="form-group">
								<button type="submit"
									class="form-control btn3 btn3-primary submit px-3" onclick="send_mail()">메일 전송</button>
							</div>
						</form>
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