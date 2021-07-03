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
<title>AdminMemberPlan</title>
<link rel="stylesheet" href="<%=cp %>/css/bootstrap.min.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp %>/js/bootstrap.min.js"></script>
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
		$("#blind").click(function()
		{
			
			if( $(this).html()=="정상" )
			{
				$(this).html("블라인드");
				$(this).css("background-color", "#dc3545" );
			}
			else if( $(this).html()=="블라인드" )
			{
				$(this).html("정상");
				$(this).css("background-color", "#198754");
			}
			
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
		<table style="width: 100%; text-align: center;">
			<tr>
				<th style="text-align: left;">제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>공개여부</th>
				<th>블라인드</th>
			</tr>
			<tr>
				<td style="text-align: left;">액티비티의 단양!</td>
				<td>단양마늘JMT</td>
				<td>2021-04-28</td>
				<td>공개</td>
				<td><button type="button" id="blind" style="border: 1px; width: 70px; height: 25px; background-color: #dc3545; color: white;">블라인드</button></td>
			</tr>
		</table>
		
		<hr>
		<br>
		<!-- <p style="text-align: center;">
			<button type="button" id="blind" style="border: 1px; width: 70px; height: 25px; background-color: #dc3545; color: white;">블라인드</button>
		</p> -->
		
	</div>
	<div class="container">
		<!-- <ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">신고 내역</li>
		</ul> -->
		<div style="font-weight: bold;">신고 내역</div>
		
		<div id="tab-1" class="tab-content current">
			<table style="width: 100%; text-align: center;">
				<tr>
					<th>번호</th>
					<th>신고일</th>
					<th>상태</th>
					<th>처리자</th>
				</tr>
				<tr>
					<td>1</td>
					<td><a href="AdminMemberPlan.jsp" style="color: black; text-decoration: none;" onClick="window.open(this.href, '', 'width=400, height=450'); return false;">2021-06-30</a></td>
					<td><button type="button" id="blind" style="border: 1px; width: 70px; height: 25px; background-color: #6c757d; color: white;">미처리</button></td>
					<td>-</td>
				</tr>
				<tr>
					<td>2</td>
					<td>2021-05-22</td>
					<td><button type="button" id="blind" style="border: 1px; width: 70px; height: 25px; background-color: #dc3545; color: white;">반려</button></td>
					<td>관리자2</td>
				</tr>
				<tr>
					<td>3</td>
					<td>2021-05-02</td>
					<td><button type="button" id="blind" style="border: 1px; width: 70px; height: 25px; background-color: #dc3545; color: white;">반려</button></td>
					<td>관리자2</td>
				</tr>
			</table>
		</div>
		
		<br>
		<div style="width: 100%;">
			<div style="font-weight: bold;">비고</div>
			<textarea style="width:100%; height:100px;">ex) 2021-06-28 관리자1 : 어쩌구 사유로 블라인드 처리</textarea>
		</div>
		
		<br>
		<div>
			<p style="text-align: center;">
			<button type="button" class="btn" style="border: 1px; width: 70px; height: 25px; background-color: #0d6efd; color: white;" >수정</button>
			<button type="button"  class="btn" id="closebtn" style="border: 1px; width: 70px; height: 25px; background-color: #6c757d; color: white;">취소</button>
			</p>
		</div>
	</div>
	
</body>
</html>