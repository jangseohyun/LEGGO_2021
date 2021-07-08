<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	request.getSession(false);
%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
<!--  All snippets are MIT license http://bootdey.com/license -->
<title>Following.jsp</title>
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

<!-- 보유한 로그인 세션이 없을 경우 로그인 페이지로 이동 -->
<% if (session.getAttribute("mem_id") == null) { %>
      <script>location.href = "loginpage.action"; </script>
<% }%>

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
					<li class="breadcrumb-item"><a href="/PrjApp/Profile.jsp">마이
							페이지</a></li>
					<li class="breadcrumb-item"><a href="/PrjApp/MyPlan.jsp">내
							일정</a></li>
					<li class="breadcrumb-item"><a href="/PrjApp/MyTrip.jsp">내
							여행기</a></li>
					<li class="breadcrumb-item"><a href="/PrjApp/MyPhoto.jsp">내
							사진</a></li>
					<li class="breadcrumb-item"><a href="/PrjApp/MyComment.jsp">내
							댓글</a></li>
					<li class="breadcrumb-item"><a href="/PrjApp/MyScrap.jsp">스크랩북</a></li>
					<li class="breadcrumb-item"><a href="/PrjApp/QnA.jsp">일대일
							문의</a></li>
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
										<a href="/PrjApp/Following.jsp" class="text-secondary"
											style="font-size: 13px;">팔로잉 3</a> | <a
											href="/PrjApp/Follower.jsp" class="text-secondary"
											style="font-size: 13px;">팔로워 300,000</a> <br> <br>
										<p class="text-secondary mb-1" style="font-size: 15px;">대충
											자기소개라는 뜻</p>
										<br>
										<!-- <button class="btn btn-primary">팔로우</button> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 팔로잉 -->
				<div class="col-md-8">
					<div class="card mb-3">
						<div class="card-body">
							<h4>팔로잉 목록</h4>
							<!-- 팔로잉 1 -->
							<div class="album py-5 bg-light">
								<div class="container">
									<div class="row" style="margin: 1%;">
										<img
											src="https://i2.wp.com/novocom.top/image/aWNvbYXJ5Li1saWJyYXJ5LmNvbQ==/images/no-profile-picture-icon/no-profile-picture-icon-15.jpg"
											alt="Admin" class="rounded-circle" width="45px" height="45px">
										<h4 style="font-size: 22px;">EunJ</h4>

									</div>

									<div class="col-md-2 wrapper">
										<div class="card box-shadow frame">
											<div class="img-wrapper">
												<img class="card-img-top"
													data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
													alt="Thumbnail [100%x225]"
													style="height: 100%; width: 100%; display: block;"
													src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_17a52b45abe%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_17a52b45abe%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.7109375%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
													data-holder-rendered="true">
												<div class="darkness">
													<div class="btn-summary">
														<span draggable="false">대충 제목<br>대충
															내용어쩌구저쩌구...더보기
														</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 팔로잉 2 -->
							<div class="album py-5 bg-light">
								<div class="container">
									<div class="row" style="margin: 1%;">
										<img
											src="https://i2.wp.com/novocom.top/image/aWNvbYXJ5Li1saWJyYXJ5LmNvbQ==/images/no-profile-picture-icon/no-profile-picture-icon-15.jpg"
											alt="Admin" class="rounded-circle" width="45px" height="45px">
										<h4 style="font-size: 22px;">mong2unnie</h4>

									</div>

									<div class="col-md-2 wrapper">
										<div class="card box-shadow frame">
											<div class="img-wrapper">
												<img class="card-img-top"
													data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
													alt="Thumbnail [100%x225]"
													style="height: 100%; width: 100%; display: block;"
													src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_17a52b45abe%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_17a52b45abe%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.7109375%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
													data-holder-rendered="true">
												<div class="darkness">
													<div class="btn-summary">
														<span draggable="false">대충 제목<br>대충
															내용어쩌구저쩌구몽이는귀엽다...더보기
														</span>
													</div>
												</div>
											</div>
										</div>
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

#wrapper {
	width: 500px;
	height: 500px;
	background: #aed6e4;
}

#frame {
	width: 400px;
	height: 400px;
	background: #ffffff;
	position: relative;
	top: 50px;
	left: 50px;
}

.img-wrapper {
	width: 195px;
	height: 195px;
	cursor: pointer;
}

.img-wrapper img {
	width: inherit;
	height: inherit;
}

.darkness {
	position: absolute;
	top: 0;
	left: 0;
	width: inherit;
	height: inherit;
	transition: all .6s linear;
}

.btn-summary {
	position: absolute;
	text-align: left;
	margin: 10px;
	color: #ffffff;
	visibility: hidden;
}

.btn-summary span {
	color: #ffffff;
	user-select: none;
}

.img-wrapper:hover .darkness {
	background-color: rgba(0, 0, 0, 0.4);
}

.img-wrapper:hover .btn-summary {
	opacity: 1;
	transform: scale(1);
	visibility: visible;
}
</style>
</body>
</html>