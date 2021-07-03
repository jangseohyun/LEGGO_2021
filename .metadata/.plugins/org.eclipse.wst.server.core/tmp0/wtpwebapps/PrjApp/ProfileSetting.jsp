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
<title>ProfileSetting.jsp</title>
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
<script type="text/javascript">

	$(function()
	{
		$('textarea.content').keyup(function(){
			bytesHandler(this);
		});
	});
	
	function getTextLength(str)
	{
		var len = 0;
	
		for (var i = 0; i < str.length; i++)
		{
			if (escape(str.charAt(i)).length == 6)
			{
				len++;
			}
			len++;
		}
		
		return len;
	}
	
	function bytesHandler(obj)
	{
		var text = $(obj).val();
		$('p.bytes').text(getTextLength(text));
	}

</script>
<body>

<!-- 헤더 -->
<header>
	<div style="background-color: white;">
		<c:import url="Header.jsp"></c:import>
	</div>
</header>

	<div class="container">
		<div class="main-body">

			<!-- 상단 메뉴 -->
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

			<!-- 프로필 설정 -->
			<div class="card mb-3">
				<div class="card-body">
					<h4 style="display: inline-block; font-weight: bold; padding: 5px;">프로필 설정</h4>
					<a style="display: inline-block; float: right; color: #a6a6a6; text-decoration: underline; padding: 5px;" href="/PrjApp/Quit.jsp">탈퇴하기</a>
					<div class="album py-5 bg-light">
						<div class="container">
							<table>
								<tr>
									<th>프로필 사진</th>
									<td><img id="img__wrap" class="rounded-circle" width="170"
										onerror=""
										src="https://i2.wp.com/novocom.top/image/aWNvbYXJ5Li1saWJyYXJ5LmNvbQ==/images/no-profile-picture-icon/no-profile-picture-icon-15.jpg" />
										<br> <br> <input type="file" name="userProfile"
										id="img__preview" /></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<th>별명</th>
									<td><input type="text" class="form-control" ></td>
								</tr>
								<tr style="text-align: right;">
									<td></td>
									<td class="textlimit"><p class="bytes">0</p>/20</td>
								</tr>
								<tr>
									<th>비밀번호</th>
									<td><input type="password" class="form-control"></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<th>비밀번호 확인&nbsp;&nbsp;</th>
									<td><input type="password" class="form-control"></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<th>자기소개
									</th>
									<td><textarea class="form-control content" style="width: 300px; height: 100px;"></textarea></td>
								</tr>
								<tr style="text-align: right;">
									<td></td>
									<td class="textlimit"><p class="bytes">0</p>/500</td>
								</tr>
							</table>
							<br><br>
							<div class="row justify-content-center">
								<button type="submit" class="btn btn-primary center submit "
									style="width: 45%; font-family: 'Noto Sans KR', sans-serif;">수정</button>
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

html, body {
	margin: 0;
	padding: 0;
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

.textlimit {
	width: 65px;
	vertical-align: bottom;
	text-align: right;
	color: #a6a6a6;
	font-size: 15px;
	display: inline-block;
}

.bytes {
	display: inline-block;
}
</style>
</body>
</html>