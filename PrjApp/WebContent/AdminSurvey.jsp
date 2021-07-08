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
<title>Survey - Leggo Admin</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/styles.css">
<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script type="text/javascript">
	
	$(function()
	{
		$(".content").click(function()
		{
			if( $("#QnA").css('display') == 'none')
			{
				$("#QnA").show();
			}
			else
			{
				 $("#QnA").hide();
			}

		});
		
		var inwonchart = $("#inwon-chart");
		var myChart = new Chart(inwonchart,	{
		    type: 'doughnut',
		    data: {
		        labels: ['Red', 'Gray'],
		        datasets: [{
		            label: '# of Votes',
		            data: [58, 180],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(204, 204, 204, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255, 99, 132, 1)',
		                'rgba(204, 204, 204, 1)'
		            ],
		            borderWidth: 1
		        }]
		    },
		     options: {
		        scales: {
		            y: {
		                beginAtZero: true
		            }
		        }
		    } 
		});
				
		var q1chart = $("#q1-chart");
		var myQ1Chart = new Chart(q1chart, {
		    type: 'doughnut',
		    data: {
		        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
		        datasets: [{
		            label: '# of Votes',
		            data: [12, 19, 3, 5, 2, 3],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255, 99, 132, 1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
		                'rgba(153, 102, 255, 1)',
		                'rgba(255, 159, 64, 1)'
		            ],
		            borderWidth: 1
		        }]
		    },
		     options: {
		        scales: {
		            y: {
		                beginAtZero: true
		            }
		        }
		    } 
		});
		
		
		var q2chart = $("#q2-chart");
		var myQ2Chart = new Chart(q2chart, {
		    type: 'doughnut',
		    data: {
		        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
		        datasets: [{
		            label: '# of Votes',
		            data: [12, 19, 3, 5, 2, 3],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255, 99, 132, 1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
		                'rgba(153, 102, 255, 1)',
		                'rgba(255, 159, 64, 1)'
		            ],
		            borderWidth: 1
		        }]
		    },
		     options: {
		        scales: {
		            y: {
		                beginAtZero: true
		            }
		        }
		    } 
		});
		
		var q3chart = $("#q3-chart");
		var myQ3Chart = new Chart(q3chart, {
		    type: 'doughnut',
		    data: {
		        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
		        datasets: [{
		            label: '# of Votes',
		            data: [12, 19, 3, 5, 2, 3],
		            backgroundColor: [
		                'rgba(255, 99, 132, 0.2)',
		                'rgba(54, 162, 235, 0.2)',
		                'rgba(255, 206, 86, 0.2)',
		                'rgba(75, 192, 192, 0.2)',
		                'rgba(153, 102, 255, 0.2)',
		                'rgba(255, 159, 64, 0.2)'
		            ],
		            borderColor: [
		                'rgba(255, 99, 132, 1)',
		                'rgba(54, 162, 235, 1)',
		                'rgba(255, 206, 86, 1)',
		                'rgba(75, 192, 192, 1)',
		                'rgba(153, 102, 255, 1)',
		                'rgba(255, 159, 64, 1)'
		            ],
		            borderWidth: 1
		        }]
		    },
		     options: {
		        scales: {
		            y: {
		                beginAtZero: true
		            }
		        }
		    } 
		});
		

		
	});
	
</script>
</head>
<body class="sb-nav-fixed">
		<!-- 상단 고정 메뉴 -->
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="admin.action"><img src="images/leggo.png" width="130px;"></a>
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
        <!-- 좌측 메뉴 -->
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
                            <a class="nav-link" href="admin.action">
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
                                    <a class="nav-link" href="AdminInquiry.jsp">일대일문의</a>
                                    <a class="nav-link" href="AdminSurvey.jsp" style="background-color: #2E9AFE; color: black;">설문조사 관리</a>
                                </nav>
                            </div>
                            <a class="nav-link" href="plan.action">
                            	<div class="sb-nav-link-icon"><img src="images/calender.png" height="21px;"></div>일정 관리
                            </a>
                            <a class="nav-link" href="trip.action">
                            	<div class="sb-nav-link-icon"><img src="images/paper.png" height="23px;"></div>여행기 관리
                            </a>
                            <a class="nav-link" href="photo.action">
                            	<div class="sb-nav-link-icon"><img src="images/photo.png" height="23px;"></div>사진 관리
                            </a>
                            <a class="nav-link" href="comment.action">
                            	<div class="sb-nav-link-icon"><img src="images/comment.png" height="23px;"></div>댓글 관리
                            </a>
                            <a class="nav-link" href="report.action">
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
                                    <a class="nav-link" href="postStats.action">게시물 통계</a>
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
	                     	<h1 class="mt-4">설문조사 관리</h1>
	                        <ol class="breadcrumb mb-4">
	                            <li class="breadcrumb-item active">Survey</li>
	                        </ol>
	                 </div>
	                    
	                 <br>
	                 
	                 <div style="padding: 0px 0px 0px 93%; text-align: left;">
                  	 	<button type="button" onClick="window.open('AdminSurveyAdd.jsp', '', 'width=400, height=450'); return false;" style="background-color: #e9eae5; height: 26pt; border: 1px;">설문지 등록</button>
                     </div>
	                 <br>
	                 <div class="card mb-4">
	                 	<div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            설문조사 데이터
                        </div>
	                 	
	                 	<div class="card-body">
                        	<table class="table table-striped">
                                	<tr class="content">
                             		<td>1</td>
                                     <td>여행선호도 설문조사</td>
                                     <td>관리자1</td>
                                     <td>2021-02-01</td>
                                	</tr>
                                	
                                	<tr id="QnA" style="display: none;" >
                                		<td colspan="4">
                                			<table class="table"s>
                                				<tr>
                                					<td>질문 1. 선호하는 여행지는?</td>
                                					<td>도시 산 바다 유적</td>
                                				</tr>
                                				<tr>
                                					<td>질문 2. 여행에서 중요하게 생각하는 것은?</td>
                                					<td>맛집 쇼핑 힐링 액티비티</td>
                                				</tr>
                                				<tr>
                                					<td>질문 3. 여행은 주로 누구와 함께?</td>
                                					<td>혼자 친구 가족</td>
                                				</tr>
                                				<tr>
                                					<td colspan="4">
															<button type="submit" class="btn btn-success btn-sm" style="background-color: #2E9AFE; border: 1px;">수정</button>
			                                		</td>
                                				</tr>
                                			</table>
                                			<br>
                                			
                                			<div class="row">
				                            <div class="col-xl-6">
				                                <div class="card mb-4">
				                                    <div class="card-header">
				                                        <i class="fas fa-chart-area me-1"></i>
				                                         응답자 수
				                                    </div>
				                                    <div class="card-body"><canvas id="inwon-chart" width="100%" height="40"></canvas></div>
				                                </div>
				                            </div>
				                            <div class="col-xl-6">
				                                <div class="card mb-4">
				                                    <div class="card-header">
				                                        <i class="fas fa-chart-bar me-1"></i>
				                                        질문1
				                                    </div>
				                                    <div class="card-body"><canvas id="q1-chart" width="100%" height="40"></canvas></div>
				                                </div>
				                            </div>
				                     		</div>
				                     		
				                     		<div class="row">
				                            <div class="col-xl-6">
				                                <div class="card mb-4">
				                                    <div class="card-header">
				                                        <i class="fas fa-chart-area me-1"></i>
				                                         질문2
				                                    </div>
				                                    <div class="card-body"><canvas id="q2-chart" width="100%" height="40"></canvas></div>
				                                </div>
				                            </div>
				                            <div class="col-xl-6">
				                                <div class="card mb-4">
				                                    <div class="card-header">
				                                        <i class="fas fa-chart-bar me-1"></i>
				                                        질문3
				                                    </div>
				                                    <div class="card-body"><canvas id="q3-chart" width="100%" height="40"></canvas></div>
				                                </div>
				                            </div>
				                     		</div>
                                		</td>
                          			</tr>
                          			
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
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" type="text/javascript"></script>
        <script src="js/scripts.js"></script>
        <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script> -->
        <!-- <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script> -->
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>

</body>
</html>