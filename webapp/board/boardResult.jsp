<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${result==0}">
	<!-- 글등록실패 -->
	<script>
		alert("글등록실패하였습니다.");
		history.go(-1);
	</script>
</c:if>
<c:if test="${result==1}">
	<!-- 등록성공 location, sendRedirect,  -->
	<script>
		location.href = "/webMVC/board/boardList.do";
	</script>
</c:if>