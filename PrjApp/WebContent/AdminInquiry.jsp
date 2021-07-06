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
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Member - Leggo Admin</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/styles.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="AdminDashboard.jsp"><img src="images/leggo.png" width="130px;"></a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="AdminChange.jsp" onClick="window.open(this.href, '', 'width=400, height=310'); return false;">정보변경</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">로그아웃</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
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
                            <a class="nav-link" href="AdminDashboard.jsp">
                                <div class="sb-nav-link-icon"><img src="images/board.png" height="21px;"></div>대시보드
                            </a>
                            
                            <div class="sb-sidenav-menu-heading">Interface</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><img src="images/member.png" height="23px;"></div>
                                회원 관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse show" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link" href="memberlist.action">회원 목록</a>
                                    <a class="nav-link" href="AdminInquiry.jsp" style="background-color: #2E9AFE; color: black;">일대일문의</a>
                                    <a class="nav-link" href="AdminSurvey.jsp">설문조사 관리</a>
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
                                    <a class="nav-link" href="connectStats.action">접속자 통계</a>
                                    <a class="nav-link" href="memberStats.action">회원 통계</a>
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
            
            <!-- 메인페이지 -->
            <div id="layoutSidenav_content">
                <main>
                     <div class="container-fluid px-4">
                     	<h1 class="mt-4">일대일문의</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Inquiry</li>
                        </ol>
                     </div>
                 
                     <br>
                     <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                댓글 데이터
                            </div>
                            <div class="card-body">
                            	<table id="datatablesSimple"">
                                    <thead>
                                    	<tr>
                                    		<th>번호</th>
                                            <th>카테고리</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                            <th>작성일</th>
                                            <th>상태</th>
                                    	</tr>
                                    </thead>
                                    <tbody>
                                    	<tr onClick="window.open('AdminAnswer.jsp', '', 'width=400, height=450'); return false;">
                                    		<td>11</td>
                                            <td>[일정]</td>
                                            <td>문의드립니다.</td>
                                            <td>프로 제주살이</td>
                                            <td>2021-06-28</td>
                                            <td><button type="button" disabled="disabled" style="background: gray; color: white; width: 50pt; border: 1px;">미처리</button></td>
                                    	</tr>
                                    	<tr>
                                    		<td>10</td>
                                            <td>[일정]</td>
                                            <td>문의드립니다.</td>
                                            <td>단양마늘JMT</td>
                                            <td>2021-06-28</td>
                                            <td><button type="button" disabled="disabled" style="background: gray; color: white; width: 50pt; border: 1px;">미처리</button></td>
                                    	</tr>
                                    	<tr>
                                    		<td>9</td>
                                            <td>[사진]</td>
                                            <td>문의입니다.</td>
                                            <td>작성자 저쩌구</td>
                                            <td>2021-06-27</td>
                                            <td><button type="button" disabled="disabled" style="background: #2E9AFE; color: white; width: 50pt; border: 1px;">완료</button></td>
                                    	</tr>
                                    	<tr>
                                    		<td>8</td>
                                            <td>[여행기]</td>
                                            <td>문의...</td>
                                            <td>작성자 저쩌구</td>
                                            <td>2021-06-27</td>
                                            <td><button type="button" disabled="disabled" style="background: #2E9AFE; color: white; width: 50pt; border: 1px;">완료</button></td>
                                    	</tr>
                                    	<tr>
                                    		<td>7</td>
                                            <td>[일정]</td>
                                            <td>문의 어쩌고</td>
                                            <td>작성자 저쩌구</td>
                                            <td>2021-06-27</td>
                                            <td><button type="button" disabled="disabled" style="background: #2E9AFE; color: white; width: 50pt; border: 1px;">완료</button></td>
                                    	</tr>
                                    	<tr>
                                    		<td>6</td>
                                            <td>[일정]</td>
                                            <td>문의 어쩌고</td>
                                            <td>작성자 저쩌구</td>
                                            <td>2021-06-27</td>
                                            <td><button type="button" disabled="disabled" style="background: #2E9AFE; color: white; width: 50pt; border: 1px;">완료</button></td>
                                    	</tr>
                                    	<tr>
                                    		<td>5</td>
                                            <td>[사진]</td>
                                            <td>문의 어쩌고</td>
                                            <td>작성자 저쩌구</td>
                                            <td>2021-06-27</td>
                                            <td><button type="button" disabled="disabled" style="background: #2E9AFE; color: white; width: 50pt; border: 1px;">완료</button></td>
                                    	</tr>
                                    	<tr>
                                    		<td>4</td>
                                            <td>[계정]</td>
                                            <td>문의 어쩌고</td>
                                            <td>작성자 저쩌구</td>
                                            <td>2021-06-27</td>
                                            <td><button type="button" disabled="disabled" style="background: #2E9AFE; color: white; width: 50pt; border: 1px;">완료</button></td>
                                    	</tr>
                                    	<tr>
                                    		<td>3</td>
                                            <td>[계정]</td>
                                            <td>문의 어쩌고</td>
                                            <td>작성자 저쩌구</td>
                                            <td>2021-06-27</td>
                                            <td><button type="button" disabled="disabled" style="background: #2E9AFE; color: white; width: 50pt; border: 1px;">완료</button></td>
                                    	</tr>
                                    	<tr>
                                    		<td>2</td>
                                            <td>[일정]</td>
                                            <td>문의 어쩌고</td>
                                            <td>작성자 저쩌구</td>
                                            <td>2021-06-26</td>
                                            <td><button type="button" disabled="disabled" style="background: #2E9AFE; color: white; width: 50pt; border: 1px;">완료</button></td>
                                    	</tr>
                                    	<tr>
                                    		<td>1</td>
                                            <td>[일정]</td>
                                            <td>문의 어쩌고</td>
                                            <td>작성자 저쩌구</td>
                                            <td>2021-06-26</td>
                                            <td><button type="button" disabled="disabled" style="background: #2E9AFE; color: white; width: 50pt; border: 1px;">완료</button></td>
                                    	</tr>
                                    </tbody>
                                 </table>
                            </div>
                     </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
</body>
</html>