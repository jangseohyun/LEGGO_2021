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
<title>MemberProfile - Leggo Admin</title>
<style type="text/css">

div.left 
{
    width: 35%;
    height: 120px;
    float: left;
    box-sizing: border-box;
    
    /* background: #ff0; */
}
div.right 
{
    width: 65%;
    height: 120px;
    float: right;
    box-sizing: border-box;
    
    /* background: #0ff; */
}
body{
	margin-top: 100px;
	line-height: 1.6
}
.container{
	width: 95%;
	margin: 0 auto;
}



ul.tabs{
	margin: 0px;
	padding: 0px;
	list-style: none;
}
ul.tabs li{
	background: none;
	color: #222;
	display: inline-block;
	padding: 10px 15px;
	cursor: pointer;
}

ul.tabs li.current{
	background: #ededed;
	color: #222;
}

.tab-content{
	display: none;
	background: #ededed;
	padding: 15px;
}

.tab-content.current{
	display: inherit;
}

.btn:hover
{
	font-weight: bold;
}

.member-con
{
	text-align: center;
}

</style>
<link rel="stylesheet" href="css/bootstrap.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	
	$(function()
		{

			$("#grade").click(function()
			{
				
				if( $(this).html()=="관리자" )
				{
					$(this).html("사용자");
					$(this).css("background-color", "#2E9AFE");
				}
				else
				{
					$(this).html("관리자");
					$(this).css("background-color", "#dc3545");
				}
				
			});
			
			$("#state").click(function()
			{
				
				if( $(this).html()=="정상" )
				{
					$(this).html("차단");
					$(this).css("background-color", "#dc3545" );
				}
				else if( $(this).html()=="차단" )
				{
					$(this).html("탈퇴");
					$(this).css("background-color", "#6c757d");
				}
				else
				{
					$(this).html("정상");
					$(this).css("background-color", "#198754");
				}
				
			});
			
			$('ul.tabs li').click(function(){
				var tab_id = $(this).attr('data-tab');

				$('ul.tabs li').removeClass('current');
				$('.tab-content').removeClass('current');

				$(this).addClass('current');
				$("#"+tab_id).addClass('current');
			});
			
			
			$("#closebtn").click(function()
			{

				window.close();  	

			});
			
		});
</script>
</head>
<body>



<div>
	<p style="text-align: center;"><img src="images/member.png" style="width: 120px;"></p>
</div>

<div>
	<p style="text-align: center;">2021leggo@gmail.com</p>
	<p style="text-align: center;">관리자1</p>
	<p style="text-align: center;">
		<button type="button" id="grade" style="border: 1px; width: 70px; height: 25px; background-color: #dc3545; color: white;">관리자</button>
		<button type="button" id="state" style="border: 1px; width: 70px; height: 25px; background-color: #198754; color: white;">정상</button>
	</p>
	<hr>
</div>

<div class="container">

	<ul class="tabs">
		<li class="tab-link current" data-tab="tab-1">회원 정보</li>
		<li class="tab-link" data-tab="tab-2">회원 작성 글</li>
		<li class="tab-link" data-tab="tab-3">신고 내역</li>
	</ul>

	<div id="tab-1" class="tab-content current">
		<div style="font-weight: bold;">활동 기록</div>
		가입일 : 2021-02-01<br>
		탈퇴일 : 2021-08-01 
	</div>
	<div id="tab-2" class="tab-content">
		<table style="width: 100%;" class="table member-con">
			<tr>
				<th style="width: 15%;">카테고리</th>
				<th style="width: 35%;">제목</th>
				<th style="width: 15%;">작성일</th>
				<th style="width: 10%;">공개</th>
				<th style="width: 10%;">신고수</th>
				<th>상태</th>
				<th style="width: 10%;">관리</th>
			</tr>
			<tr>
				<td>[일정]</td>
				<td style="text-align: left;">제주 한달</td>
				<td>2021-06-30</td>
				<td>공개</td>
				<td>0</td>
				<td><button type="button" id="blind" style="border: 1px; width: 70px; height: 25px; background-color: #198754; color: white;">정상</button></td>
				<td><a href=".jsp" onClick="window.open(this.href, '', 'width=400, height=450'); return false;"><img src="images/menu.png" height="18px;"></a></td>
			</tr>
			<tr>
				<td>[여행기]</td>
				<td style="text-align: left;">호캉스 후기</td>
				<td>2021-06-27</td>
				<td>공개</td>
				<td>1</td>
				<td><button type="button" id="blind" style="border: 1px; width: 70px; height: 25px; background-color: #dc3545; color: white;">차단</button></td>
				<td><a href=".jsp" onClick="window.open(this.href, '', 'width=400, height=450'); return false;"><img src="images/menu.png" height="18px;"></a></td>
			</tr>
		</table>
	</div>
	<div id="tab-3" class="tab-content">
		<table style="width: 200px; text-align: center;">
			<tr>
				<th>신고</th>
				<th>오신고</th>
				<th>피신고</th>
				<th>총 합</th>
			</tr>
			<tr>
				<td>15</td>
				<td>9</td>
				<td>1</td>
				<td>25</td>
			</tr>
		</table>
		<br>
		<table style="width: 100%;" class="table member-rep">
			<tr>
				<th>카테고리</th>
				<th>제목</th>
				<th>신고일</th>
				<th>상태</th>
			</tr>
			<tr>
				<td>[여행기]</td>
				<td>호텔의 모든 것</td>
				<td>2021-06-30</td>
				<td><button type="button" id="blind" style="border: 1px; width: 70px; height: 25px; background-color: #dc3545; color: white;">오신고</button></td>
			</tr>
			<tr>
				<td>[일정]</td>
				<td>어쩌고</td>
				<td>2021-06-30</td>
				<td><button type="button" id="blind" style="border: 1px; width: 70px; height: 25px; background-color: #6c757d; color: white;">신고</button></td>
			</tr>
			<tr>
				<td>[일정]</td>
				<td>제주 한달</td>
				<td>2021-06-30</td>
				<td><button type="button" id="blind" style="border: 1px; width: 70px; height: 25px; background-color: #6c757d; color: white;">피신고</button></td>
			</tr>
		</table>
	</div>
	
	<br>
	
	<div style="width: 100%;">
		<div style="font-weight: bold;">비고</div>
		<textarea style="width:100%; height:100px;">ex) 2021-02-01 ADMIN : 관리자 임명</textarea>
	</div>
	
	<br>
	<div>
		<p style="text-align: center;">
		<button type="button" class="btn" style="border: 1px; width: 70px; height: 25px; background-color: #dc3545; color: white;" >수정</button>
		<button type="button"  class="btn" id="closebtn" style="border: 1px; width: 70px; height: 25px; background-color: #6c757d; color: white;">취소</button>
		</p>
	</div>
</div>


</body>
</html>