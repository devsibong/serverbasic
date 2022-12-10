<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 로그인 안된 경우 로그인페이지로 보내기 -->
<c:if test="${logId==null || logId=='' }">
	<script>
		location.href="/webMVC/member/login.do";
	</script>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기</title>
<link rel="stylesheet" href="/webMVC/css/style.css" type="text/css"/>
<style>
	#subject{
	 	width:100%;
	}
	#content{
		width:100%;
		height:200px;
	}
</style>
<script>
	function boardFormCheck(){
		//폼의 버튼 클릭하면 호출되는 함수
		var dom = document.getElementById("subject");
		if(dom.value==""){
			alert("제목을 입력하세요..");
			dom.focus();
			return;//함수실행종료
		}
		
		var content = document.getElementById("content");
		if(content.value==""){
			alert("글내용을 입력하세요.");
			content.focus();
			return;
		}
		
		//제목과 글내용이 입력된 경우
		var frm = document.getElementById("boardFrm");
		frm.action= "/webMVC/board/boardWriteOk.do";
		frm.submit();//폼을 submit발생시면  action으로 접속한다.
	}
</script>
</head>
<body>
<div class="container">
	<h1>게시판 글쓰기 폼</h1>
	<form method="post" id="boardFrm">
		<ul>
			<li>제목</li>
			<li><input type="text" name="subject" id="subject"/></li>
			<li>글내용</li>
			<li>
				<textarea name="content" id="content"></textarea>
			</li> 
			<li>
				<input type="button" value="글등록" onclick="boardFormCheck()"/>
			</li>
		</ul>
	</form>
</div>
</body>
</html>