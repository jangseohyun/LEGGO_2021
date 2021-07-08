<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style_header.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.sticky.js"></script>
<script src="js/main.js"></script>

<title>Header.jsp</title>
</head>
<body>

	<header class="site-navbar js-sticky-header site-navbar-target"
		role="banner" style="font-size: 16px;">

		<div class="container">
			<div class="row align-items-center position-relative">


				<div class="site-logo">
					<a href="index.html" class="text-black"><span
						class="text-primary"><img src="images/leggo_logo.png"
							style="width: 150px; margin-left: 50px;"></span></a>
				</div>

				<div class="col-12">
					<nav class="site-navigation text-right ml-auto " role="navigation">

						<ul
							class="site-menu main-menu js-clone-nav ml-auto d-none d-lg-block">
							<li><a href="#home-section" class="nav-link">홈</a></li>
							<li><a href="#services-section" class="nav-link">일정짜기</a></li>


							<li class="has-children"><a href="#about-section"
								class="nav-link">커뮤니티</a>
								<ul class="dropdown arrow-top">
									<li><a href="#team-section" class="nav-link">커뮤니티 홈</a></li>
									<li><a href="#pricing-section" class="nav-link">여행기</a></li>
									<li><a href="#faq-section" class="nav-link">일정 구경</a></li>
									<li><a href="#">사진</a></li>
								</ul></li>

							<li style="vertical-align: middle;"><div
									class="input-group mb-3">
									<input type="text" class="form-control" placeholder="통합검색"
										aria-label="searchTotal" aria-describedby="button-addon2"
										style="width: 150px; margin-top: 5px;">
									<button class="btn btn-secondary glyphicon glyphicon-search"
										type="button" id="button-addon2"
										style="margin-top: 4px; float: right;"></button>
								</div></li>
							<li class="has-children"><a href="#"> <img
									src="https://i2.wp.com/novocom.top/image/aWNvbYXJ5Li1saWJyYXJ5LmNvbQ==/images/no-profile-picture-icon/no-profile-picture-icon-15.jpg"
									alt="Admin" class="rounded-circle" width="38px" height="38px"></a>
								<ul class="dropdown">
									<li><a href="profilepageauto.action">마이페이지</a></li>
									<li><a href="javascript:kakaoLogout()">로그아웃</a></li>
								</ul></li>
						</ul>
					</nav>

				</div>

				<div class="toggle-button d-inline-block d-lg-none">
					<a href="#" class="site-menu-toggle py-5 js-menu-toggle text-black"><span
						class="icon-menu h3"></span></a>
				</div>

			</div>
		</div>

	</header>

<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
    function kakaoLogout() {
    	
    	Kakao.init("a76949096713e82c75fa45bdb32ebb4c");
    	
        if (!Kakao.Auth.getAccessToken()) {
            return;
        }
        Kakao.Auth.logout(function() {
        	alert('logout ok\naccess token -> ' + Kakao.Auth.getAccessToken())
        });
        
        location.href = "logout.action";
    }
</script>
</body>
</html>