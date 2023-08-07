<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>${data}</h1>
	<table border="1">
		<tr>
			<th>ID:</th>
			<th>NAME:</th>
			<th>EMAIL:</th>
			<th>PASSWORD:</th>
			<th>CONFIRM PASSWORD:</th>
			<th>GENDER:</th>
			<th>COUNTRY:</th>
			<th>STATE:</th>
		</tr>
		<c:forEach var="dto" items="${list}">
			<tr>
				<td>${dto.id}</td>
				<td>${dto.name}</td>
				<td>${dto.email}</td>
				<td>${dto.password}</td>
				<td>${dto.confirm_password}</td>
				<td>${dto.gender}</td>
				<td>${dto.getCountry()}</td>
				<td>${dto.getState()}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>