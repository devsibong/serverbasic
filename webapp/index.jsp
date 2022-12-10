<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//String userid = (String)session.getAttribute("logId");

%>
<div>
	<c:if test="${logId==null || logId==''}">
		<a href="<%=request.getContextPath()%>/member/login.do">로그인</a>
	</c:if>
	<c:if test="${logId!=null && logId!='' }">	
		${logName}<a href="/webMVC/member/logout.do">로그아웃</a>
	</c:if>
	
	<a href="/webMVC/board/boardList.do">게시판</a>
</div>
<h1>MVC패턴을 이용한 홈페이지</h1>
<ol>
	<li>라이브러리 추가 : ojdbc8.jar, jstl.jar, standard.jar</li>
	<li>팩키지 생성 : 자바영역에 com.multi.home생성</li>
	<li>DB연결 클래스 : DBConn클래스를 com.multi.home에 추가</li>
	<li>요청 주소와 해당 클래스 관리하는 properties파일을 생성한다. /WEB-INF/prop/urlMapping.properties를 생성
	<li>톰캣서버에서 web.xml를 /WEB-INF/에 복사한다.</li>
	<li>web.xml매핑주소 등록</li>
</ol>
</body>
</html>