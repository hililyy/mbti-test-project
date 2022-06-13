<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="post.css" rel="stylesheet">
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="contents">
		<h1>게시판</h1>
		<div class="list">
			<table class="post-table">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<tr class="post-contents">
						<td class ="post-number">
							1
						</td>
						<td class="post-title">
							<a href="">
								웹프로그래밍02 분반 오픈 채팅방 개설했습니다
							</a>
						</td>
						<td class="post-user">방진숙</td>
						<td class="post-date">2022-03-02</td>
					</tr>
					<tr class="post-contents">
						<td class ="post-number">
							2
						</td>
						<td class="post-title">
							<a href="">
								웹프로그래밍02 분반 오픈 채팅방 개설했습니다
							</a>
						</td>
						<td class="post-user">방진숙</td>
						<td class="post-date">2022-03-02</td>
					</tr>
				</tbody>
			</table>
		</div>
	    <input type="button" value="글 작성">
	</div>
</body>
</html>