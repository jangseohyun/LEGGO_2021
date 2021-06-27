<%@page import="com.test.MailSend"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.test.*"  %>
 
<%
MailSend ms = new MailSend();
ms.MailSend();
 
out.println("COMPLETE");
%>
