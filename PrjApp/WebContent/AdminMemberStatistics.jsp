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
<title>MemberStatistics - Leggo Admin</title>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/styles.css">
<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.25/datatables.min.css"/>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.25/datatables.min.js"></script>
<script type="text/javascript">
	
		$(function()
		{
			var mychart = $("#bar-chart");
			var myBarChart = new Chart(mychart, {
			    type: 'bar',
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
			
			var mychart2 = $("#line-chart");
			var myLineChart = new Chart(mychart2, {
			    type: 'line',
			    data: {
			        labels: ['1', '2', '3', '4', '5', '6', '7'],
			        datasets: [{
			            label: '테스트 데이터셋',
			            data: [
			                10,
			                3,
			                30,
			                23,
			                10,
			                5,
			                50
			            ],
			            borderColor: "rgba(255, 201, 14, 1)",
			            backgroundColor: "rgba(255, 201, 14, 0.5)",
			            fill: true,
			            lineTension: 0
			        }]
			    },
			    options: {
			        responsive: true,
			        title: {
			            display: true,
			            text: '라인 차트 테스트'
			        },
			        tooltips: {
			            mode: 'index',
			            intersect: false,
			        },
			        hover: {
			            mode: 'nearest',
			            intersect: true
			        },
			        scales: {
			            xAxes: [{
			                display: true,
			                scaleLabel: {
			                    display: true,
			                    labelString: 'x축'
			                }
			            }],
			            yAxes: [{
			                display: true,
			                ticks: {
			                    suggestedMin: 0,
			                },
			                scaleLabel: {
			                    display: true,
			                    labelString: 'y축'
			                }
			            }]
			        }
			    }
			});
			
			
			$('#datatables').dataTable( {
		        lengthMenu : [5, 10, 15, 20, 25],
				pageLength : 10,
				language: {
						lengthMenu : "_MENU_ entries per page",
		                searchPlaceholder: "Search...",
		                search: "_INPUT_"
		        },
		        order: [ [ 0, "desc" ] ]
			
		    } );
		});
	
</script>
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
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link" href="memberlist.action">회원 목록</a>
                                    <a class="nav-link" href="AdminInquiry.jsp">일대일문의</a>
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
                            <div class="collapse show" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="connectStat.action">접속자 통계</a>
                                    <a class="nav-link" href="AdminMemberStatistics.jsp" style="background-color: #2E9AFE; color: black;">회원 통계</a>
                                    <a class="nav-link" href="AdminPostStatistics.jsp">게시물 통계</a>
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
                     	<h1 class="mt-4">회원 통계</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Member Statistics</li>
                        </ol>
                     </div>
                 
                     <br>
                   	 <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                         신규 회원(가입방식) 통계
                                    </div>
                                    <div class="card-body"><canvas id="bar-chart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        신규 회원 통계
                                    </div>
                                    <div class="card-body"><canvas id="line-chart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                     </div>
                     <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                신규 회원 데이터
                            </div>
                            <div class="card-body">
                            	<table id="datatablesSimple" style="text-align: center;">
                                    <thead>
                                    	<tr>
                                    		<th rowspan="2" style="text-align: center; vertical-align: middle;">번호</th>
                                            <th rowspan="2" style="text-align: center; vertical-align: middle;"">가입자 수</th>
                                            <th rowspan="2" style="text-align: center; vertical-align: middle;"">가입일</th>
                                            <th colspan="4" style="text-align: center; vertical-align: middle;"">가입방식</th>
                                    	</tr>
                                    	<tr>
                                    		<th style="text-align: center;">LEGGO</th>
                                    		<th style="text-align: center;">NAVER</th>
                                    		<th style="text-align: center;">KAKAO</th>
                                    		<th style="text-align: center;">GOOGLE</th>
                                    	</tr>
                                    </thead>
                                    <tbody>
                                    	<tr>
                                    		<td>2</td>
                                            <td>8</td>
                                            <td>2021-07-05</td>
                                            <td>1</td>
                                            <td>2</td>
                                            <td>3</td>
                                            <td>2</td>
                                    	</tr>
                                    	<tr>
                                    		<td>1</td>
                                            <td>1</td>
                                            <td>2021-07-04</td>
                                            <td>0</td>
                                            <td>0</td>
                                            <td>1</td>
                                            <td>0</td>
                                    	</tr> 
                                    </tbody>
                                 </table>
                            </div>
                     </div>
                     
                     <br>
                     <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                         탈퇴 회원(사유) 통계
                                    </div>
                                    <div class="card-body"><canvas id="bar-chart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        탈퇴 회원 통계
                                    </div>
                                    <div class="card-body"><canvas id="line-chart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                     </div>
                     <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                탈퇴회원 데이터
                            </div>
                            <div class="card-body">
                            	<table id="datatables" style="border: 0.5px solid #EAEAEA; text-align: center;">
                                    <thead>
                                    	<tr>
                                    		<th rowspan="2" style="border: 1px solid #EAEAEA; font-size: 14px;">번호</th>
                                            <th rowspan="2" style="border: 1px solid #EAEAEA; font-size: 14px;">탈퇴회원 수</th>
                                            <th rowspan="2" style="border: 1px solid #EAEAEA; font-size: 14px;">탈퇴일</th>
                                            <th colspan="5" style="border: 1px solid #EAEAEA; font-size: 14px;">탈퇴사유</th>
                                    	</tr>
                                    	<tr>
                                    		<th style="border: 1px solid #EAEAEA; font-size: 14px;">이용빈도 낮음</th>
                                    		<th style="border: 1px solid #EAEAEA; font-size: 14px;">재가입</th>
                                    		<th style="border: 1px solid #EAEAEA; font-size: 14px;">콘텐츠 부족</th>
                                    		<th style="border: 1px solid #EAEAEA; font-size: 14px;">개인정보 보호</th>
                                    		<th style="border: 1px solid #EAEAEA; font-size: 14px;">기타</th>
                                    	</tr>
                                    </thead>
                                    <tbody>
                                    	<tr>
                                    		<td style="border: 1px solid #EAEAEA; font-size: 14px;">2</td>
                                            <td style="border: 1px solid #EAEAEA; font-size: 14px;">0</td>
                                            <td style="border: 1px solid #EAEAEA; font-size: 14px;">2021-07-05</td>
                                            <td style="border: 1px solid #EAEAEA; font-size: 14px;">0</td>
                                            <td style="border: 1px solid #EAEAEA; font-size: 14px;">0</td>
                                            <td style="border: 1px solid #EAEAEA; font-size: 14px;">0</td>
                                            <td style="border: 1px solid #EAEAEA; font-size: 14px;">0</td>
                                            <td style="border: 1px solid #EAEAEA; font-size: 14px;">0</td>
                                    	</tr>
                                    	<tr>
                                    		<td style="border: 1px solid #EAEAEA; font-size: 14px;">1</td>
                                            <td style="border: 1px solid #EAEAEA; font-size: 14px;">1</td>
                                            <td style="border: 1px solid #EAEAEA; font-size: 14px;">2021-07-04</td>
                                            <td style="border: 1px solid #EAEAEA; font-size: 14px;">0</td>
                                            <td style="border: 1px solid #EAEAEA; font-size: 14px;">0</td>
                                            <td style="border: 1px solid #EAEAEA; font-size: 14px;">1</td>
                                            <td style="border: 1px solid #EAEAEA; font-size: 14px;">0</td>
                                            <td style="border: 1px solid #EAEAEA; font-size: 14px;">0</td>
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
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
</body>
</html>