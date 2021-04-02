<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet 요청하기</title>
</head>
<body>
	<h3>servlet 요청</h3>
	<h3>getContextPath</h3>
	<%= request.getContextPath() %><hr>
	
	<a href =  "<%=request.getContextPath() %>/simple">simple 요청하기</a>
	<br>
	<a href =  "<%=request.getContextPath() %>/simple?type=date">날짜요청하기</a>
	<br>
	<a href =  "<%=request.getContextPath() %>/simple?type=abcd">비정상요청하기</a>
	<hr>
	<h3>FrontServletController</h3>
	<a href =  "<%=request.getContextPath() %>/action.do?cmd=greeting">요청하기</a>
	<br>
	
	<h3>ForntBoardController</h3>
	<a href =  "<%=request.getContextPath() %>/board?cmd=boardlist">게시판 목록보기</a>
	<br>
	<a href =  "<%=request.getContextPath() %>/board?cmd=boardwrite">게시판 글쓰기</a>
	<br>
	<a href =  "<%=request.getContextPath() %>/board?">cmd null Error</a>
	<br>
	<a href =  "<%=request.getContextPath() %>/board?cmd=boarddelete">게시판 삭제</a>
	<br>
	<a href =  "<%=request.getContextPath() %>/board?cmd=login">보안페이지 로그인 보여주기</a>
	<br>
	<a href = "${pageContext.request.contextPath }/board?cmd=login">보안페이지로그인</a>
	<br>
	EL 사용: ${pageContext.request.contextPath}<br>
</body>
</html>