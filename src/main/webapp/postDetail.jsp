<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.well {
	background-color: pink;
	width: 50%;
	border-radius: 20px;
	padding : 20px 10px 10px 10px;
	margin : 0 auto;
}
.writer {
	width:40%;
	float: left;
	text-align:left;
	margin-left:20px;
	margin: 15px 0px 25px 20px;
	
} 
.date {
	width:40%;
	float: right;
	text-align:right;
	margin: 15px 20px 25px 0px;
} 
.info {
	height:50px;
	border: solid white;
	border-width: 3px 0px;
	
}
.post-contents{
	background-color: white;
	width: 90%;
	text-align: left;
	border-radius: 20px;
	padding : 15px 20px 20px 20px;
	margin : 40px auto;
	
}
.home input{
	background-color: white;
	border-radius: 50rem;
    border-color: white;
    border: 1px solid transparent;
    padding: 10px 40px 10px 40px;
    margin-bottom: 50px;
    margin-top: 10px;
}
.button-group {
	display: flex;
	flex-direction: row-reverse;
	width: 100%;
}
.button-group > input {
	display: inline-block;
	background-color: white;
	border-radius: 50rem;
    border-color: white;
    border: 1px solid transparent;
    padding: 10px 40px 10px 40px;
    margin-top: 10px;
}
.well:after {
	display: block;
	content: " ";
	clear: both;
}
.home input:hover, .home input:focus, .button-group input:hover, .button-group input:focus{
   background-color: white;
   color: pink;
}
</style>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="well">
		<div class="subject">
			<h1>웹프로그래밍02 분반 오픈 채팅방 개설했습니다</h1>
		</div>
		<div class="info">
			<div class="writer" style="display:inline-block;">
				<span class="title"><b>작성자: </b></span>
				방진숙
			</div>
			<div class="date" style="display:inline-block;">
				<span class="title"><b>작성일: </b></span>
				2022-03-02
			</div>
		</div>
		<div class="button-group">
			<input type="button" value="수정"/>
		</div>	    
		<div class="post-contents" id="">
			<div><p>웹프로그래밍02 분반 오픈 채팅방 개설했습니다</p><p>본인 성함으로 가입해 주세요 ^^</p></div>
		</div>
		<div class="home">
	        <input type="button" value="홈으로" onclick="location.href='home.jsp'">
	    </div>
	</div>
</body>
</html>