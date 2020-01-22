<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="/students/processUpdate" modelAttribute="student" method="POST">
		<form:label path="id">Id</form:label>
		<form:input path="id" disabled="disabled" alt="${id}"/>
		<form:label path="firstName">First Name</form:label>
		<form:input path="firstName"/><br>
		<form:label path="lastName">Last Name</form:label>
		<form:input path="lastName"/>
		<input type="submit" value="submit">
	</form:form>
</body>
</html>