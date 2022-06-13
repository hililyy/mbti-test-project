<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="user" class="com.webPro03.UserBean"/>
<jsp:setProperty name="user" property="userId"/>

<!DOCTYPE html>
<html>
<link href="writePostForm.css" rel="stylesheet" />
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="contents">
    <form method="post" action="writePost.jsp">
	    <table>
	        <tr>
	            <td class="post-title">제목</td>
	            <td><input type="text" name="title"></td>
	        </tr>
	        <tr>
	            <td class="post-contents">내용</td>
	            <td>
	                <textarea cols="50" name="content"></textarea> 
	            </td>
	        </tr>
	    </table>
	    <input name="userId" type="hidden" 
					        value="<%= user.getUserId() %>" >
	    <input class="write" type="submit" value="글쓰기">
    </form>
    </div>
</body>

</html>