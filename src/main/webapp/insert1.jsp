<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inserting data</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    padding: 20px;
  }

  form {
    max-width: 400px;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }

 <%-- input[type="number"],
  input[type="text"] {
    width: 100%;
    padding: 5px;
    margin-bottom: 10px;
    border-radius: 3px;
    border: 1px solid #ccc;
  }--%>

  button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
  }

  button:hover {
    background-color: #45a049;
  }
  .container h1 {
      text-align: center;
    }
</style>
</head>
<body>
<pre>
<div class="container"><h1>SIGN-UP</h1></div>
<form action="insert" onsubmit="return validatePassword()">
ID:<input type="text" name="id"><br>
NAME:<input type="text" name="name"><br>
EMAIL:<input tpe="email" name="email"><br>
PASSWORD:<input type="password" id="password" name="password" required><br>
COMFIRM PASSWORD:<input type="password" id="confirm_password" name="confirm_password" required><br>
MALE:<input type="radio" name="gender" value="male"><br>
FEMALE:<input type="radio" name="gender" value="female"><br>
Country:<select id="country" onchange="populateStates()" name="country">
    <option value="">Select a country</option>
    <option value="india">India</option>
    <option value="usa">USA</option>
    <option value="canada">Canada</option>

  </select><br>
 State:<select id="state" name="state">
    <option value="">Select a state</option>
  </select>
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

    function populateStates() {
      var country = document.getElementById("country").value;
      var stateDropdown = document.getElementById("state");
      stateDropdown.innerHTML="";


      if (country === "india") {
        var usStates = ["karnataka", "Andra Pradesh", "Tamil Nadu", "punjab"];
        for (var i = 0; i < usStates.length; i++) {
          var option = document.createElement("option");
          option.text = usStates[i];
          stateDropdown.add(option);
        }
    }
     else if (country === "usa") {
        var usStates = ["California", "Florida", "New York", "Texas"];
        for (var i = 0; i < usStates.length; i++) {
          var option = document.createElement("option");
          option.text = usStates[i];
          stateDropdown.add(option);
        }
      } else if (country === "canada") {
        var canadianProvinces = ["Alberta", "Ontario", "Quebec", "British Columbia"];
        for (var j = 0; j < canadianProvinces.length; j++) {
          var option = document.createElement("option");
          option.text = canadianProvinces[j];
          stateDropdown.add(option);
        }}}
  </script>
Accepted all terms and condition:<input type="checkbox" name="checkbox" value="accepted"><br>
<button type="submit">Submit</button> <button type="reset">Reset</button>

</form>
</pre>

</body>
</html>