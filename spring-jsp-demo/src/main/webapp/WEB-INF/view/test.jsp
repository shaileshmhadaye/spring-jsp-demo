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
			<th colspan="2">Action</th>
		</tr>  
		<c:forEach var="table" items="${students}">  
			<tr>  
				<td><c:out value="${table.id}"/></td>  
				<td><c:out value="${table.firstName}"/></td>  
				<td><c:out value="${table.lastName}"/></td>  
				<td><a href="/students/update/${table.id}">update</a></td>
				<td><a href="/students/delete/${table.id}">delete</a></td>
			</tr>  
		</c:forEach>  
	</table>
</body>
</html>