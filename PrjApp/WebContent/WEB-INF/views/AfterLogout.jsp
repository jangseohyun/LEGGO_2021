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

<h4>여기는 로그아웃 이후 도착한 곳</h4>

<div>
</div>

<div>
	<a href="./login.action?command=Logout">로그아웃</a>
</div>

</body>
</html>