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

<style type="text/css">

.dropbtn {
	  background-color: Silver;
	  color: white;
	  padding: 16px;
	  font-size: 16px;
	  border: none;
	}

	.dropdown {
	  position: relative;
	  display: inline-block;
	}

	.dropdown-content {
	  display: none;
	  position: absolute;
	  background-color: #f1f1f1;
	  min-width: 160px;
	  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	  z-index: 1;
	}

	.dropdown-content a {
	  color: black;
	  padding: 12px 16px;
	  text-decoration: none;
	  display: block;
	}

	.dropdown-content a:hover {background-color: #ddd;}

	.dropdown:hover .dropdown-content {display: block;}

	.dropdown:hover .dropbtn {background-color: black;}

</style>

<script type="text/javascript">
const GetList = function(currentPage)
{
	console.log("inGetList"+currentPage);
}


</script>
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
			
			<!-- 필터링 -->
			<div class="dropdown">
                 <button class="dropbtn" style="width: 70px; height: 35px; font-size: 11px; padding: 0.0em 1.5em;">정렬▼</button>
                 <div class="dropdown-content">
                   <a href="#">인기순</a>
                   <a href="#">최신순</a>
                 </div>
            </div>
            
            <!-- 전체 글 수 -->
			<table>
				<tr>
					<td>전체 글 5,290</td>
				</tr>
			</table>
		</div>
	</div>
	
	
	<!-- 사진 게시글 리스트 -->
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
	
	<!-- Footer -->
	<footer>
		<c:import url="Footer.jsp"></c:import>
	</footer>

</body>
</html>