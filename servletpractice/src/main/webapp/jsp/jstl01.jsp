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
n�� 0�� �����ϴ�.<br>
</c:if>
<c:if test="${n == 10}">
n�� 10�� �����ϴ�.<br>
</c:if>
<c:if test="${m == 0}">
m�� 0�� �����ϴ�.<br>
</c:if>
<c:if test="${m == 9}">
m�� 9�� �����ϴ�.<br>
</c:if>
<c:choose>
    <c:when test="${score >=90 }">
    A�����Դϴ�.<br>
    </c:when>
    <c:when test="${score >=80 }">
    B�����Դϴ�.<br>
    </c:when>
    <c:when test="${score >=70 }">
    C�����Դϴ�.<br>
    </c:when>
    <c:when test="${score >=60 }">
    D�����Դϴ�.<br>
    </c:when>
    <c:otherwise>
    F�����Դϴ�.<br>
    </c:otherwise>            
</c:choose>
</body>
</html>