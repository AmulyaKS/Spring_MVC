<%@page import="dto.Adto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="">
<tr>
<th>ID:</th>
<th>NAME:</th>
<th>EMAIL:</th>
<th>PASSWORD:</th>
<th>CONFIRM PASSWORD:</th>
<th>GENDER:</th>
<th>STATE:</th>
<th>COUNTRY:</th>
<th>CHECKBOX:</th>
<th>DELETE:</th>
<th>UPDATE:</th>
</tr>
<% List<Adto> d1=(List<Adto>)request.getAttribute("list"); %>
<%for(Adto l1:d1){%>
<tr>
<td><%=l1.getId()%></td>
<td><%=l1.getName()%></td>
<td><%=l1.getEmail()%></td>
<td><%=l1.getPassword()%></td>
<td><%=l1.getConfirm_password()%></td>
<td><%=l1.getGender()%></td>
<td><%=l1.getState()%></td>
<td><%=l1.getCountry()%></td>
<td><%=l1.getCheckbox()%></td>
<td><a href="delete?id=<%=l1.getId()%>">DELETE</a></td>
<td><a href="update?id=<%=l1.getId()%>">UPDATE</a></td>
</tr>
<%} %>
</table>
</body>
</html>