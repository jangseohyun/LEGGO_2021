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
<style type="text/css">
	
	.on
	{
		background-color: #198754; 
		color: white;
	}
	
</style>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/styles.css">
<script src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	$(function()
	{
		$(".nav-menu").click(function()
		{
			/* $( ".nav-menu" ).removeClass( "on" );
			
			
			$(this).addClass("on");  */
			$( ".nav-menu" ).css({"background-color":"#fff", "color":"#6c757d"});
			
			$(this).css({"background-color":"#2E9AFE", "color":"white"});

		});
	});
	
</script>
</head>
<body>
	
	<a href="MenuTest.jsp" class="on nav-menu">
		테스트
	</a>
	
	
	<br>
	<div class="on nav-menu">
		테스트
	</div>
	<br>
	<div class="on nav-menu">
		테스트
	</div>
	<br>
	<div class="on nav-menu">
		테스트
	</div>
	
	
</body>
</html>