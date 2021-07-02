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
					onclick="location.href='/Home/index.html';"></h1>
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
	
	<div id="features-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-4 col-12-medium">

					<!-- Box -->
						<section class="box feature">
							<a href="#" class="image featured"><img src="images/jeju.jpg" onclick="location.href='/PrjApp/ComPlan.jsp';"></a>
							<div class="inner">
								<header>
									<p>2021-05-03~05-05(2박 3일)</p>
									<h2>시간이 떠나기 전에 우리가 먼저 떠나버려야 돼</h2>
									<p>힐링 | 강릉</p>
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
									<p>2021-03-13~03-17(4박 5일)</p>
									<h2>우정여행</h2>
									<p>맛집 | 제주도</p>
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
									<p>2020-07-02~07-05(3박 4일)</p>
									<h2>제주 예쁜재주</h2>
									<p>힐링 | 제주도</p>
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
							<a href="#" class="image featured"><img src="images/jeju.jpg" onclick="location.href='/Home/ComTrip.jsp';"></a>
							<div class="inner">
								<header>
									<p>2021-02-28~03-01(1박 2일)</p>
									<h2>힐링조와</h2>
									<p>힐링 | 남해</p>
									<p>스크랩 212 조회수 3,390</p>
									<p><img src="images\user.PNG">deepsea</p>
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
									<p>2021-06-01~06-04(3박 4일)</p>
									<h2>답답한 일상에서 벗어나</h2>
									<p>액티비티 | 단양</p>
									<p>스크랩 201 조회수 2,037</p>
									<p><img src="images\user.PNG">Eun J</p>
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
									<p>2020-08-10~08-16(6박 7일)</p>
									<h2>가족들과 체험하기</h2>
									<p>체험 | 이천</p>
									<p>스크랩 190 조회수 1,290</p>
									<p><img src="images\user.PNG">molla</p>
								</header>
							</div>
						</section>

				</div>
			</div>
		</div>
	</div>

</body>
</html>