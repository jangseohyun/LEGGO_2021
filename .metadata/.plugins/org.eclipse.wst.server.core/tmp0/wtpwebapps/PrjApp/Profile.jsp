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
<title>Profile.jsp</title>
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
</head>
<body>
	<div class="container">
		<div class="main-body">

			<!-- 상단 메뉴 -->
			<nav aria-label="breadcrumb" class="main-breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item" aria-current="page">마이 페이지</li>
					<li class="breadcrumb-item"><a href="/PrjApp/MyPlan.jsp">내 일정</a></li>
					<li class="breadcrumb-item"><a href="">내 여행기</a></li>
					<li class="breadcrumb-item"><a href="">내 사진</a></li>
					<li class="breadcrumb-item"><a href="">내 댓글</a></li>
					<li class="breadcrumb-item"><a href="">스크랩북</a></li>
					<li class="breadcrumb-item"><a href="">일대일 문의</a></li>
				</ol>
			</nav>

			<div class="row gutters-sm">
				<div class="col-md-4 mb-3">

					<!-- 프로필 -->
					<div class="card w-90">
						<div class="card-body"><br>
							<div class="d-flex flex-column align-items-center text-center">
								<img src="https://i2.wp.com/novocom.top/image/aWNvbYXJ5Li1saWJyYXJ5LmNvbQ==/images/no-profile-picture-icon/no-profile-picture-icon-15.jpg" alt="Admin"
									class="rounded-circle" width="150">
								<div class="mt-3">
									<h4>Romi</h4>
									<p class="text-secondary mb-1" style="font-size: 13px;">팔로잉
										3 | 팔로워 300,000</p>
									<br>
									<p class="text-secondary mb-1">대충 자기소개라는 뜻</p>
									<br>
									<!-- <button class="btn btn-primary">팔로우</button> -->
								</div>
							</div>
						</div>
					</div>

					<!-- 프로필 버튼 -->
					<div class="card mt-3 w-90">
						<ul class="list-group list-group-flush">
							<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
								<h6 class="mb-0">
									<a href="/PrjApp/ProfileSetting.jsp" style="color: black; text-decoration:none;">
									&nbsp;<img
										src="https://image.flaticon.com/icons/png/512/3524/3524752.png"
										width="24" height="24">&nbsp;&nbsp;&nbsp;프로필 설정</a>
								</h6>
							</li>
							<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
								<h6 class="mb-0">
									<a href="/PrjApp/PwdSetting.jsp" style="color: black; text-decoration:none;">
									&nbsp;<img
										src="https://image.flaticon.com/icons/png/512/1782/1782728.png"
										width="24" height="24">&nbsp;&nbsp;&nbsp;비밀번호 변경</a>
								</h6>
							</li>
						</ul>
					</div>
				</div>

				<!-- 일정 -->
				<div class="col-md-8">
					<div class="card mb-3">
						<div class="card-body">
							<h4 style="font-weight: bold;">일정</h4>
							<div class="album py-5 bg-light">
								<div class="container">

									<div class="row">
										<div class="col-md-4">
											<div class="card mb-4 box-shadow">
												<img class="card-img-top"
													data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
													alt="Thumbnail [100%x225]"
													style="height: 100%; width: 100%; display: block;"
													src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_17a52b45abe%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_17a52b45abe%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.7109375%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
													data-holder-rendered="true">
												<div class="card-body">
													<p class="card-text"></p>
													<div
														class="d-flex justify-content-between align-items-center">
														<div class="btn-group">
															<button type="button"
																class="btn btn-sm btn-outline-secondary">View</button>
															<button type="button"
																class="btn btn-sm btn-outline-secondary">Edit</button>
														</div>
														<small class="text-muted">9 mins</small>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-4">
											<div class="card mb-4 box-shadow">
												<img class="card-img-top"
													data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
													alt="Thumbnail [100%x225]"
													src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_17a52b45ac1%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_17a52b45ac1%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.7109375%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
													data-holder-rendered="true"
													style="height: 100%; width: 100%; display: block;">
												<div class="card-body">
													<p class="card-text"></p>
													<div
														class="d-flex justify-content-between align-items-center">
														<div class="btn-group">
															<button type="button"
																class="btn btn-sm btn-outline-secondary">View</button>
															<button type="button"
																class="btn btn-sm btn-outline-secondary">Edit</button>
														</div>
														<small class="text-muted">9 mins</small>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-4">
											<div class="card mb-4 box-shadow">
												<img class="card-img-top"
													data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
													alt="Thumbnail [100%x225]"
													src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_17a52b45ac3%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_17a52b45ac3%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.7109375%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
													data-holder-rendered="true"
													style="height: 100%; width: 100%; display: block;">
												<div class="card-body">
													<p class="card-text"></p>
													<div
														class="d-flex justify-content-between align-items-center">
														<div class="btn-group">
															<button type="button"
																class="btn btn-sm btn-outline-secondary">View</button>
															<button type="button"
																class="btn btn-sm btn-outline-secondary">Edit</button>
														</div>
														<small class="text-muted">9 mins</small>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- 여행기 -->
					<div class="card mb-3">
						<div class="card-body">
							<h4 style="font-weight: bold;">여행기</h4>
							<div class="album py-5 bg-light">
								<div class="container">

									<div class="row">
										<div class="col-md-4">
											<div class="card mb-4 box-shadow">
												<img class="card-img-top"
													data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
													alt="Thumbnail [100%x225]"
													style="height: 100%; width: 100%; display: block;"
													src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_17a52b45abe%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_17a52b45abe%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.7109375%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
													data-holder-rendered="true">
												<div class="card-body">
													<p class="card-text"></p>
													<div
														class="d-flex justify-content-between align-items-center">
														<div class="btn-group">
															<button type="button"
																class="btn btn-sm btn-outline-secondary">View</button>
															<button type="button"
																class="btn btn-sm btn-outline-secondary">Edit</button>
														</div>
														<small class="text-muted">9 mins</small>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-4">
											<div class="card mb-4 box-shadow">
												<img class="card-img-top"
													data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
													alt="Thumbnail [100%x225]"
													src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_17a52b45ac1%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_17a52b45ac1%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.7109375%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
													data-holder-rendered="true"
													style="height: 100%; width: 100%; display: block;">
												<div class="card-body">
													<p class="card-text"></p>
													<div
														class="d-flex justify-content-between align-items-center">
														<div class="btn-group">
															<button type="button"
																class="btn btn-sm btn-outline-secondary">View</button>
															<button type="button"
																class="btn btn-sm btn-outline-secondary">Edit</button>
														</div>
														<small class="text-muted">9 mins</small>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-4">
											<div class="card mb-4 box-shadow">
												<img class="card-img-top"
													data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
													alt="Thumbnail [100%x225]"
													src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_17a52b45ac3%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_17a52b45ac3%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.7109375%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
													data-holder-rendered="true"
													style="height: 100%; width: 100%; display: block;">
												<div class="card-body">
													<p class="card-text"></p>
													<div
														class="d-flex justify-content-between align-items-center">
														<div class="btn-group">
															<button type="button"
																class="btn btn-sm btn-outline-secondary">View</button>
															<button type="button"
																class="btn btn-sm btn-outline-secondary">Edit</button>
														</div>
														<small class="text-muted">9 mins</small>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- 사진 -->
					<div class="card mb-3">
						<div class="card-body">
							<h4 style="font-weight: bold;">사진</h4>
							<div class="album py-5 bg-light">
								<div class="container">

									<div class="row">
										<div class="col-md-4">
											<div class="card mb-4 box-shadow">
												<img class="card-img-top"
													data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
													alt="Thumbnail [100%x225]"
													style="height: 100%; width: 100%; display: block;"
													src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_17a52b45abe%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_17a52b45abe%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.7109375%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
													data-holder-rendered="true">
												<div class="card-body">
													<p class="card-text"></p>
													<div
														class="d-flex justify-content-between align-items-center">
														<div class="btn-group">
															<button type="button"
																class="btn btn-sm btn-outline-secondary">View</button>
															<button type="button"
																class="btn btn-sm btn-outline-secondary">Edit</button>
														</div>
														<small class="text-muted">9 mins</small>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-4">
											<div class="card mb-4 box-shadow">
												<img class="card-img-top"
													data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
													alt="Thumbnail [100%x225]"
													src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_17a52b45ac1%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_17a52b45ac1%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.7109375%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
													data-holder-rendered="true"
													style="height: 100%; width: 100%; display: block;">
												<div class="card-body">
													<p class="card-text"></p>
													<div
														class="d-flex justify-content-between align-items-center">
														<div class="btn-group">
															<button type="button"
																class="btn btn-sm btn-outline-secondary">View</button>
															<button type="button"
																class="btn btn-sm btn-outline-secondary">Edit</button>
														</div>
														<small class="text-muted">9 mins</small>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-4">
											<div class="card mb-4 box-shadow">
												<img class="card-img-top"
													data-src="holder.js/100px225?theme=thumb&amp;bg=55595c&amp;fg=eceeef&amp;text=Thumbnail"
													alt="Thumbnail [100%x225]"
													src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%22348%22%20height%3D%22226%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20348%20226%22%20preserveAspectRatio%3D%22none%22%3E%3Cdefs%3E%3Cstyle%20type%3D%22text%2Fcss%22%3E%23holder_17a52b45ac3%20text%20%7B%20fill%3A%23eceeef%3Bfont-weight%3Abold%3Bfont-family%3AArial%2C%20Helvetica%2C%20Open%20Sans%2C%20sans-serif%2C%20monospace%3Bfont-size%3A17pt%20%7D%20%3C%2Fstyle%3E%3C%2Fdefs%3E%3Cg%20id%3D%22holder_17a52b45ac3%22%3E%3Crect%20width%3D%22348%22%20height%3D%22226%22%20fill%3D%22%2355595c%22%3E%3C%2Frect%3E%3Cg%3E%3Ctext%20x%3D%22116.7109375%22%20y%3D%22120.65%22%3EThumbnail%3C%2Ftext%3E%3C%2Fg%3E%3C%2Fg%3E%3C%2Fsvg%3E"
													data-holder-rendered="true"
													style="height: 100%; width: 100%; display: block;">
												<div class="card-body">
													<p class="card-text"></p>
													<div
														class="d-flex justify-content-between align-items-center">
														<div class="btn-group">
															<button type="button"
																class="btn btn-sm btn-outline-secondary">View</button>
															<button type="button"
																class="btn btn-sm btn-outline-secondary">Edit</button>
														</div>
														<small class="text-muted">9 mins</small>
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
</style>

				<script type="text/javascript">
					
				</script>
</body>
</html>