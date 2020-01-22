<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="2" width="100%">  
		<tr>  
			<th>Student ID</th>  
			<th>First Name</th>  
			<th>Last Name</th>  
		</tr> 
			<tr>  
				<td><c:out value="${student.id}"/></td>  
				<td><c:out value="${student.firstName}"/></td>  
				<td><c:out value="${student.lastName}"/></td>  
			</tr>  
	</table>
	<br>
	<a href="/students">Home</a>
</body>
</html>