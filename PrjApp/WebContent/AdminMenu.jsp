<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminMenu.jsp</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/styles.css">
<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
<script type="text/javascript">

	$(function()
	{
		$(".nav-menu").click(function()
		{
			$(".nav-menu").remvoceClass("menusel");
			$(this).addClass("menusel");
		});
	});
	
</script>
</head>
<body>
	 <div id="layoutSidenav_nav">
	 <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                        	<a class="nav-link" href="" style="font-size: 8pt;">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                사용자 페이지 열기 >>
                            </a>
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link nav-menu" href="Test.jsp">
                                <div class="sb-nav-link-icon"><img src="images/board.png" height="21px;"></div>대시보드
                            </a>
                            
                            <div class="sb-sidenav-menu-heading">Interface</div>
                            <!-- <a class="nav-link" href="AdminMember.jsp">
                            	<div class="sb-nav-link-icon"><img src="images/member.png" height="23px;"></div>회원 관리
                            </a> -->
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><img src="images/member.png" height="23px;"></div>
                                회원 관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link nav-menu" href="Test.jsp">회원 목록</a>
                                    <a class="nav-link" href="AdminInquiry.jsp">일대일문의</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">설문조사 관리</a>
                                </nav>
                            </div>
                            <a class="nav-link" href="AdminPlan.jsp">
                            	<div class="sb-nav-link-icon"><img src="images/calender.png" height="21px;"></div>일정 관리
                            </a>
                            <a class="nav-link" href="AdminTrip.jsp">
                            	<div class="sb-nav-link-icon"><img src="images/paper.png" height="23px;"></div>여행기 관리
                            </a>
                            <a class="nav-link" href="AdminPhoto.jsp">
                            	<div class="sb-nav-link-icon"><img src="images/photo.png" height="23px;"></div>사진 관리
                            </a>
                            <a class="nav-link" href="AdminComment.jsp">
                            	<div class="sb-nav-link-icon"><img src="images/comment.png" height="23px;"></div>댓글 관리
                            </a>
                            <a class="nav-link" href="AdminReport.jsp">
                            	<div class="sb-nav-link-icon"><img src="images/report.png" height="23px;"></div>신고관리
                            </a>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><img src="images/chart.png" height="23px;"></div>
                                통계 관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="layout-static.html">접속자 통계</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">회원 통계</a>
                                    <a class="nav-link" href="layout-sidenav-light.html">게시물 통계</a>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        관리자 페이지
                    </div>
                </nav>
            </div>

	
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
       <!--  <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script> -->
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
	
</body>
</html>