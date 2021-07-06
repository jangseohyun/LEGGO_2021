<%@page import="com.leggo.login.MemberLoginDTO"%>
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
<%
	// 이미 로그인된 사용자가 Main.jsp로 넘어오면 쿠키로 사용자를 찾아 세션으로 주입
	// 쿠키값을 세션으로 주입해 , 대신하여 로그인과정을 진행한다.
	Cookie[] cookies = request.getCookies();
	
	if (cookies != null)
	{
		for (Cookie cookie : cookies)
		{
			if (cookie.getName().equals("id"))
			{
				session.setAttribute("id", cookie.getValue());
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AfterLogin.jsp</title>
</head>
<body>

	<h4>여기는 그냥...페이지</h4>

	<div>
		<span>${login.mem_nnm}</span><br> <span>${login.mem_id}</span><br>
		<span>${login.mem_pw}</span><br> <span>${login.admin_cd}</span><br>
	</div>

	<div>
		<a href="logout.action">로그아웃</a>
	</div>
	<div>
		<a href="loginpage.action">로그인페이지로</a>
	</div>

</body>
</html>