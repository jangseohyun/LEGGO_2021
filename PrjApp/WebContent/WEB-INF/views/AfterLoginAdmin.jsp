<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	// 세션값 가져오기
	if (session.getAttribute("loginId") != null)
	{
		out.print((String)session.getAttribute("loginId"));
	};
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AfterLogin.jsp</title>
</head>
<body>

<h4>여기는 관리자 페이지</h4>

<div>
	<span>${login.mem_nnm}</span><br>
	<span>${login.mem_id}</span><br>
	<span>${login.mem_pw}</span><br>
	<span>${login.admin_cd}</span><br>
</div>

<div>
	<a href="./login.action?command=Logout">로그아웃</a>
</div>

</body>
</html>