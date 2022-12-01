<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="java.util.*" %>
<%
	request.setAttribute("n", 10);
	request.setAttribute("score", 83);
%>
<c:set var="m" scope="request" value="9"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:if test="${n == 0}">
n은 0과 같습니다.<br>
</c:if>
<c:if test="${n == 10}">
n은 10과 같습니다.<br>
</c:if>
<c:if test="${m == 0}">
m은 0과 같습니다.<br>
</c:if>
<c:if test="${m == 9}">
m은 9와 같습니다.<br>
</c:if>
<c:choose>
    <c:when test="${score >=90 }">
    A학점입니다.<br>
    </c:when>
    <c:when test="${score >=80 }">
    B학점입니다.<br>
    </c:when>
    <c:when test="${score >=70 }">
    C학점입니다.<br>
    </c:when>
    <c:when test="${score >=60 }">
    D학점입니다.<br>
    </c:when>
    <c:otherwise>
    F학점입니다.<br>
    </c:otherwise>            
</c:choose>
</body>
</html>