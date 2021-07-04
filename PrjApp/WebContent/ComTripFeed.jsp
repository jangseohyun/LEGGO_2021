<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
<!--  All snippets are MIT license http://bootdey.com/license -->
<title>LEGGO</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="assets/css/main.css" />

<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>

<style type="text/css">
	a:active {text-decoration:none; color: #ffffff;}
	a:hover {text-decoration:none; color: #2E9AFE;}
	a:visited {text-decoration:none; color: #2E9AFE;}
</style>

</head>
<body>

<!-- 헤더 -->
<header>	
		<div style="background-color: white;">
			<c:import url="ComHeader.jsp"></c:import>
	</div>
</header>

	<div class="container">
		<div class="main-body">
			<!-- 상단 메뉴 -->
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/PrjApp/MainHome.jsp">커뮤니티 홈</a></li>
					<li class="breadcrumb-item"><a href="/PrjApp/ComTripFeed.jsp">여행기</a></li>
					<li class="breadcrumb-item"><a href="/PrjApp/ComPlanFeed.jsp">일정 구경</a></li>
					<li class="breadcrumb-item"><a href="/PrjApp/ComPhotoFeed.jsp">사진</a></li>
				</ol>
			</nav>
		</div>
	</div>
	
	<div id="features-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-4 col-12-medium">

					<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img src="images/jeju.jpg" onclick="location.href='/PrjApp/ComTrip.jsp';"></a>
							<div class="inner">
								<header>
									<h2><br>맑은 바다 어딘지 궁금하면 클릭</h2>
									<p>스크랩 1,212 조회수 10,433</p>
									<p><img src="images\user.PNG">Romi</p>
								</header>
							</div>
						</section>

				</div>
				<div class="col-4 col-12-medium">

					<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img src="images/gangneung2.png" alt="" /></a>
							<div class="inner">
								<header>
									<h2><br>도깨비 주인공 나야나</h2>
									<p>스크랩 350 조회수 7,073</p>
									<p><img src="images\user.PNG">deapsea</p>
								</header>
							</div>
						</section>

				</div>
				<div class="col-4 col-12-medium">

					<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img src="images/sokcho4.jpg" alt="" /></a>
							<div class="inner">
								<header>
									<h2><br>장관이네요 절경이고요</h2>
									<p>스크랩 460 조회수 5,290</p>
									<p><img src="images\user.PNG">mong2unni</p>
								</header>
							</div>
						</section>

				</div>
			</div>
		</div>
	</div>
	
	<div id="features-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-4 col-12-medium">

					<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img src="images/jj.png" alt="" /></a>
							<div class="inner">
								<header>
									<h2><br>맑은 바다 어딘지 궁금하면 클릭</h2>
									<p>스크랩 1,212 조회수 10,433</p>
									<p><img src="images\user.PNG">Romi</p>
								</header>
							</div>
						</section>

				</div>
				<div class="col-4 col-12-medium">

					<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img src="images/jeju33.jpg" alt="" /></a>
							<div class="inner">
								<header>
									<h2><br>도깨비 주인공 나야나</h2>
									<p>스크랩 350 조회수 7,073</p>
									<p><img src="images\user.PNG">deapsea</p>
								</header>
							</div>
						</section>

				</div>
				<div class="col-4 col-12-medium">

					<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img src="images/kj3.jpg" alt="" /></a>
							<div class="inner">
								<header>
									<h2><br>장관이네요 절경이고요</h2>
									<p>스크랩 460 조회수 5,290</p>
									<p><img src="images\user.PNG">mong2unni</p>
								</header>
							</div>
						</section>

				</div>
			</div>
		</div>
	</div>
	
	<!-- Footer -->
			<footer>
				<c:import url="Footer.jsp"></c:import>
			</footer>

</body>
</html>