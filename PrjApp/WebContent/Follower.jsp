<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
<!--  All snippets are MIT license http://bootdey.com/license -->
<title>Follower.jsp</title>
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
</head>
<body>

<!-- 헤더 -->
<header>
	<div style="background-color: white;">
		<c:import url="Header.jsp"></c:import>
	</div>
</header>

	<div class="container">
		<div class="main-body">
		<nav aria-label="breadcrumb" class="main-breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/PrjApp/Profile.jsp">마이 페이지</a></li>
					<li class="breadcrumb-item"><a href="/PrjApp/MyPlan.jsp">내 일정</a></li>
					<li class="breadcrumb-item"><a href="/PrjApp/MyTrip.jsp">내 여행기</a></li>
					<li class="breadcrumb-item"><a href="/PrjApp/MyPhoto.jsp">내 사진</a></li>
					<li class="breadcrumb-item"><a href="/PrjApp/MyComment.jsp">내 댓글</a></li>
					<li class="breadcrumb-item"><a href="/PrjApp/MyScrap.jsp">스크랩북</a></li>
					<li class="breadcrumb-item"><a href="/PrjApp/QnA.jsp">일대일 문의</a></li>
				</ol>
			</nav>
			<div class="row gutters-sm">
				<div class="col-md-4 mb-3">

					<!-- 프로필 -->
					<div class="profile" style="position: fixed; width: 350px;">
						<div class="card w-90">
							<div class="card-body">
								<br>
								<div class="d-flex flex-column align-items-center text-center">
									<img
										src="https://i2.wp.com/novocom.top/image/aWNvbYXJ5Li1saWJyYXJ5LmNvbQ==/images/no-profile-picture-icon/no-profile-picture-icon-15.jpg"
										alt="Admin" class="rounded-circle" width="150">
									<div class="mt-3">
										<h4>Romi</h4>
										<p class="text-secondary mb-1" style="font-size: 13px;">팔로잉
											3 | 팔로워 300,000</p>
										<br>
										<p class="text-secondary mb-1" style="font-size: 15px;">대충 자기소개라는 뜻</p>
										<br>
										<!-- <button class="btn btn-primary">팔로우</button> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 팔로워 -->
				<div class="col-md-8">
					<div class="card mb-3">
						<div class="card-body">
							<h4>팔로워</h4>
							<div class="album py-5 bg-light">
							<div style="padding-left: 3%;">
									<img style="display: inline-block;"
									src="https://i2.wp.com/novocom.top/image/aWNvbYXJ5Li1saWJyYXJ5LmNvbQ==/images/no-profile-picture-icon/no-profile-picture-icon-15.jpg"
									alt="Admin" class="rounded-circle" width="45px" height="45px">
									<h4 style="font-size: 22px; display: inline-block;">EunJ</h4>
							</div>	
									
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


<style type="text/css">

body {
	margin-top: 20px;
	color: #1a202c;
	text-align: left;
	background-color: #e2e8f0;
	font-family: 'Noto Sans KR', sans-serif;
}

.main-body {
	padding: 15px;
}

.card {
	box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0
		rgba(0, 0, 0, .06);
}

.card {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 0 solid rgba(0, 0, 0, .125);
	border-radius: .25rem;
}

.card-body {
	flex: 1 1 auto;
	min-height: 1px;
	padding: 1rem;
}

.gutters-sm {
	margin-right: -8px;
	margin-left: -8px;
}

.gutters-sm>.col, .gutters-sm>[class*=col-] {
	padding-right: 8px;
	padding-left: 8px;
}

.mb-3, .my-3 {
	margin-bottom: 1rem !important;
}

.bg-gray-300 {
	background-color: #e2e8f0;
}

.h-100 {
	height: 100% !important;
}

.shadow-none {
	box-shadow: none !important;
}

.w-90 {
	width: 90% !important;
}

html, body {
	margin: 0;
	padding: 0;
}

h3, h4 {
	font-weight: bold;
	margin-left: 1%;
}

</style>
</body>
</html>