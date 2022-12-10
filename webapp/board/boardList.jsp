<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<link rel="stylesheet" href="/webMVC/css/style.css" type="text/css"/>
<style>
	.head-info>div{
		float:left;
		width:50%;
		height:50px;
		background:#ddd;
		line-height:50px;
	}
	.head-info>div:last-child{
		text-align:right;
	}
	
	.board-list>li{
		float:left;
		width:10%;
		height:40px;
		line-height:40px;
		border-bottom:1px solid #ddd;
	}
	.board-list>li:nth-child(5n+2){
		width:60%;
	}
	
</style>
</head>
<body>
<div class="container">
	<h1>게시판 목록</h1>
	<div class="head-info">
		<div>총레코드수 : ${totalRecord}개</div>
		<div>
			<!-- 로그인되어 있는 경우  -->
			<c:if test="${ logId != null && logId != '' }">
				<a href="/webMVC/board/boardWrite.do">글쓰기</a>
			</c:if>
			<!--  -->
		</div>
	</div>
	<ul class="board-list">
		<li>번호</li>
		<li>제목</li>
		<li>작성자</li>
		<li>조회수</li>
		<li>등록일</li>
		
		<c:forEach var="vo" items="${list}">
			<li>${vo.no}</li>
			<li class="word-cut"><a href="/webMVC/board/boardView.do?no=${vo.no}">${vo.subject }</a></li>
			<li>${vo.userid }</li>
			<li>${vo.hit }</li>
			<li>${vo.writedate }</li>
		</c:forEach>
	</ul>
</div>
</body>
</html>