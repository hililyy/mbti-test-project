<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.webPro03.*, java.util.*" %>

<jsp:useBean id="login" class="com.webPro03.UserBean"/>
<jsp:setProperty name="login" property="userId"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="./css/defalt.css">
<link rel="stylesheet" href="./css/result.css">

</head>
<body>
<div align=center class="container">
	<section id="main" class="section">
	   	<h1>나의 결과는?</h1>
	   	<% 
		    Map<String,String> mbti = new HashMap<String, String>();
		    mbti.put("userId",(String)request.getAttribute("userId"));
		    mbti.put("MBTI", (String)request.getParameter("result"));
		    /* login.setMBTI(mbti);  */
	    %>
	    <div id="myMbti" class="resultname">
			
	    </div>
	    <div id="resultImg">
	
	    </div>
	    <div class="resultDesc">
	    	
	    </div>
	</section>
<script src="./js/data.js" charset="utf-8"></script>
<script src="./js/start.js" charset="utf-8"></script>
</div>
<script>
	const initialize = () => {
		const myMbti = document.getElementById('myMbti');
		const result = localStorage.getItem('result');
		myMbti.innerText = result;
		console.log("result : "+result);
	};
	window.onload = () => initialize();
</script>
</body>
</html>