<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="login" class="com.webPro03.UserBean"/>
<jsp:setProperty name="login" property="userId"/>
<jsp:setProperty name="login" property="password"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MBTI TEST</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<%
		out.println(login.signUp().getId());		
	%>
</body>
</html>