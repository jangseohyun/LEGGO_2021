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
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
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
		
		$("#processbtn").click(function()
		{
			window.close();  
		});
		
	});
</script>
</head>
<body>

<br>
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
			<td style="text-align: left;" onClick="window.open('https://www.naver.com'); return false;">액티비티의 단양!</td>
			<td>단양마늘JMT</td>
			<td>2021-04-28</td>
			<td>공개</td>
			<td><button type="button" id="blind" style="border: 1px; width: 70px; height: 25px; background-color: #dc3545; color: white;">블라인드</button></td>
		</tr>
	</table>
	
	<hr>
</div>

<div style="background-color: #e6e6e4; width: 100%">
	<table style="width: 100%">
		<tr>
			<th>신고자</th>
			<th>신고사유</th>
			<th>신고일</th>
			<th>처리상태</th>
		</tr>
		<tr>
			<th>저기요.이게최선?</th>
			<th>정보가 부정확함</th>
			<th>2021-06-30 18:32:28</th>
			<th><button type="button" id="blind" style="border: 1px; width: 70px; height: 25px; background-color: #6c757d; color: white;">처리중</button></th>
		</tr>
	</table>
</div>

<br>
<div style="width: 100%;">
	<div style="font-weight: bold;">관리자1</div>
	<textarea style="width:100%; height:100px;">ex) 2021-07.01 관리자1 : 어쩌구 사유로 블라인드 반려</textarea>
</div>

<br>
<div>
	<p style="text-align: center;">
	<button type="button" class="btn" id="processbtn" style="border: 1px; width: 70px; height: 25px; background-color: #2E9AFE; color: white;" >처리완료</button>
	<button type="button"  class="btn" id="closebtn" style="border: 1px; width: 70px; height: 25px; background-color: #6c757d; color: white;">닫기</button>
	</p>
</div>



</body>
</html>