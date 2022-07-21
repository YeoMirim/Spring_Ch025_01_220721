<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	여기는 login.jsp 입니다. <br>
	
	<c:if test="${not empty pageContext.request.userPrincipal }">
		<p>로그인 한 상태입니다.</p>
	</c:if>
	
	<c:if test="${empty pageContext.request.userPrincipal }">
		<p>로그아웃 한 상태입니다.</p>
	</c:if>
	
	로그인한 아이디 : ${pageContext.request.userPrincipal.name } <br>
	
	<a href='<c:url value="j_spring_security_logout" />'>logout</a>
</body>
</html>