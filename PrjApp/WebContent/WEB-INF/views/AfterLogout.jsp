<%@page import="com.leggo.login.MemberLoginDTO"%>
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
<title>AfterLogin.jsp</title>
</head>
<body>

	<h4>여기는 그냥...페이지</h4>

	<div>
		<a href="loginpage.action">로그인페이지로</a>
	</div>

</body>
</html>