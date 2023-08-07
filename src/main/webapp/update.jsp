<%@page import="dto.Adto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="merge">
<%Adto adto=(Adto)request.getAttribute("obj"); %>
ID:<input type="number" name="id" value="<%=adto.getId()%>"><br><br>
NAME:<input type="text" name="name" value="<%=adto.getName()%>"><br><br>
Email:<input type="text" name="email" value="<%=adto.getEmail()%>"><br><br>
Password:<input type="text" name="password" value="<%=adto.getPassword()%>"><br><br>
Confirm-Password:<input type="text" name="confirm_password" value="<%=adto.getPassword()%>"><br><br>
Gender:<input type="text" name="gender" value="<%=adto.getGender()%>"><br><br>
Country:<input type="text" name="country" value="<%=adto.getCountry()%>"><br><br>
State:<input type="text" name="state" value="<%=adto.getState()%>"><br><br>
Checkbox:<input type="text" name="checkbox" value="<%=adto.getCheckbox()%>"> 
<button type="submit">UPDATE</button>
 <script>
  function validatePassword() {
      var password = document.getElementById("password").value;
      var confirmPassword = document.getElementById("confirm_password").value;

      if (password != confirmPassword) {
        alert("Passwords do not match.");
        return false;
      }
      return true;
    }
  </script>
</form>
</body>
</html>