<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript" src="myjs.js"></script>
<script type="text/javascript" src="jquery-3.3.1.min.js"></script>
<script src="bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="stylesheet.css">



<title>Register Page</title>
<style>
	body{
	  background-repeat: no-repeat;
	  background-position: center;
	  
	  
	}
	#tab1{
	  
	  align: center;
	}
</style>
</head>
<body>

<f:form action="user.job" method="post" modelAttribute="register" class="table">
<div align="center" id="tab1">
<table border = "2" bgcolor=#85C1E9>
<tr> <th colspan="2">Registration(Professional)</th></tr>
<tr>
<td>Email </td>
<td> <f:input path = "email" required> </td>
</tr>

<tr>
<td>Preferred Role</td>
<td> <f:input path = "role"> </td>
</tr>

<tr>
<td>Current Location </td>
<td> <f:input path = "location" required> </td>
</tr>

<tr>
<td>Primary Skill</td>
<td> <f:input path = "skill" required> </td>
</tr>

<tr>
<td>Total Experience </td>
<td> <f:select path = "experience">
<% for(int ex=1; ex<=15; ex++) {%>
<f:option value = "<%=ex %>" <%=ex %></f:option>
<%} %>
</f:select>
 </td>
</tr>

<tr>
<td>Expected Salary </td>
<td> <f:input path = "salary"> </td>
</tr>

<tr>
<th colspan = "2"><input type ="submit" value = "Finish"></th>
</tr>

</table>
</div>
</f:form>
</body>
</html>