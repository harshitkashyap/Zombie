<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
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



<title>Insert title here</title>
<style>
	body{
	  background-image: url("D:/1.jpg");
	  background-repeat: no-repeat;
	  background-position: center;
	  
	  
	}
	#tab1{
	  align: center;
	}
	

</style>
</head>
<body >

<form action="doResume.job" method="post" modelAttribute="register" >
<div align="center" id="tab1">
<table border = "2" bgcolor=#85C1E9>
<tr>
<th colspan="2">Registration (Personal)</th>
</tr>

<tr>
<td>Email </td>
<td> <f:input path = "email" required=true/> </td>
</tr>

<tr>
<td> Password:</td>
<td> <f:input path = "password" type = "password" required=true /> </td>
</tr>

<tr>
<td>Name </td>
<td> <f:input path = "name" type= "text" /> </td>
</tr>

<tr>
<td> Gender:</td>
<td> <f:radiobutton path="gender"value="male" checked label="Male"/>
<f:radiobutton path="gender"value="female" /> </td>
</tr>

<tr>
<td>Age: </td>
<td><f:select path = "age">
<% for(int a=18; a<=50; a++){ %>
	<f:option value = "<%=a %>">
	 <%=a %> </f:option>
	<% } %>
</f:select></td>
</tr>

<tr>
<td>City</td>
<td><f:select path = "city">
<%String[] cities={"Mumbai","Pune","Indore","Chennai","Bangalore"};
 for(String ct: cities){ %>
	<f:option value = "<%=ct %>" >
	<%=ct %></f:option>
	<% } %>
</f:select>
</td>
</tr>

<tr>
<td>Phone</td>
<td><f:input path = "phone" required=true>
</td>
</tr>
<tr><th colspan = "2">
<input type = "submit" value = "next"></th>
</tr>

</table>
</div>
</form>

</body>
</html>