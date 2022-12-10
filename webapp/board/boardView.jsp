<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글내용보기</title>
<link rel="stylesheet" href="/webMVC/css/style.css" type="text/css"/>
</head>
<body>
<div class="container">
	<h1>글내용보기</h1>
	<ul>
		<li>번호</li>
		<li>${vo.no}</li>
		<li>작성자</li>
		<li>${vo.userid }</li>
		<li>조회수</li>
		<li>${vo.hit }</li>
		<li>등록일</li>
		<li>${vo.writedate }</li>
		<li>제목</li>
		<li>${vo.subject }</li>
		<li>글내용</li>
		<li>${vo.content }</li>
	</ul>
	<div>
		<c:if test="${logId==vo.userid}">
			수정
			삭제
		</c:if>
	
	</div>
</div>
</body>
</html>