<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>LEGGO</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
<meta charset="UTF-8">
</head>
<body>

	<div id="header-wrapper">
		<header id="header" class="container">

			<!-- Logo -->
				<div id="logo">
					<h1><img src="images\logo.png" width="150px;" height="45px;"
					onclick="location.href='/PrjApp/index.html';"></h1>
				</div>

			<!-- Nav -->
				<nav id ="nav">
					<ul>
						<li class="current"><a href="index.html">일정짜기</a></li>
						<li>
							<a href="#">커뮤니티</a>
							<ul>
								<li><a href="#">홈</a></li>
								<li><a onclick="location.href='/PrjApp/Community.jsp';">여행기</a></li>
								<li><a href="#">일정구경</a></li>
								<li><a href="#">사진</a></li>
							</ul>
						</li>
						<li><a href="left-sidebar.html">장소</a></li>
						<!-- <li><a href="right-sidebar.html">Right Sidebar</a></li>
						<li><a href="no-sidebar.html">No Sidebar</a></li> -->
					</ul>
				</nav>

		</header>
	</div>
	<br><br>
	
	<div id="features-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-4 col-12-medium">

					<!-- Box -->
						<section class="box feature">
							<p><img src="images\user.PNG">Romi</p>
							<a href="#" class="image featured"><img src="images/photo1.jpg" onclick="location.href='/PrjApp/ComPhoto.jsp';"></a>
							<div class="inner">
								<header>
									<!-- <h2><br>맑은 바다 어딘지 궁금하면 클릭</h2> -->
									<p><br>스크랩 1,212 조회수 10,433</p>
								</header>
							</div>
						</section>

				</div>
				<div class="col-4 col-12-medium">

					<!-- Box -->
						<section class="box feature">
							<p><img src="images\user.PNG">deapsea</p>
							<a href="#" class="image featured"><img src="images/photo2.jpg" alt="" /></a>
							<div class="inner">
								<header>
									<!-- <h2><br>도깨비 주인공 나야나</h2> -->
									<p><br>스크랩 350 조회수 7,073</p>
								</header>
							</div>
						</section>

				</div>
				<div class="col-4 col-12-medium">

					<!-- Box -->
						<section class="box feature">
							<p><img src="images\user.PNG">mong2unni</p>
							<a href="#" class="image featured"><img src="images/photo1.jpg" alt="" /></a>
							<div class="inner">
								<header>
									<!-- <h2><br>장관이네요 절경이고요</h2> -->
									<p><br>스크랩 460 조회수 5,290</p>
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
							<p><img src="images\user.PNG">Romi</p>
							<a href="#" class="image featured"><img src="images/photo2.jpg" alt="" /></a>
							<div class="inner">
								<header>
									<!-- <h2><br>맑은 바다 어딘지 궁금하면 클릭</h2> -->
									<p><br>스크랩 1,212 조회수 10,433</p>
								</header>
							</div>
						</section>

				</div>
				<div class="col-4 col-12-medium">

					<!-- Box -->
						<section class="box feature">
							<p><img src="images\user.PNG">deapsea</p>
							<a href="#" class="image featured"><img src="images/photo1.jpg" alt="" /></a>
							<div class="inner">
								<header>
									<!-- <h2><br>도깨비 주인공 나야나</h2> -->
									<p><br>스크랩 350 조회수 7,073</p>
								</header>
							</div>
						</section>

				</div>
				<div class="col-4 col-12-medium">

					<!-- Box -->
						<section class="box feature">
							<p><img src="images\user.PNG">mong2unni</p>
							<a href="#" class="image featured"><img src="images/photo2.jpg" alt="" /></a>
							<div class="inner">
								<header>
									<!-- <h2><br>장관이네요 절경이고요</h2> -->
									<p><br>스크랩 460 조회수 5,290</p>
								</header>
							</div>
						</section>

				</div>
			</div>
		</div>
	</div>

</body>
</html>