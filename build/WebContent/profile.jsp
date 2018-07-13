<%@page import="lti.daemon.bean.ProfileBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript" src="myjs.js"></script>
<script type="text/javascript" src="jquery-3.3.1.min.js"></script>
<script src="bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="stylesheet.css">




<title>Profile page</title>
<style>
body {
	background-color: lavender;
}

#tab1 {
	align: center;
}
</style>
</head>
<body>
	<jsp:include file="banner.jsp" />

	<table border="2" bgcolor=#85C1E9>
		<tr>
			<th colspan="2">Your Professional Details</th>
		</tr>

		<tr>
			<td>Preferred Role</td>
			<td>${User.role}</td>
		</tr>

		<tr>
			<td>Current Location</td>
			<td>${User.location}</td>
		</tr>

		<tr>
			<td>Primary skill</td>
			<td>${User.skill}</td>
		</tr>

		<tr>
			<td>Total Experience</td>
			<td>${User.experience}</td>
		</tr>

		<tr>
			<td>Expected salary</td>
			<td>${User.salary}</td>
		</tr>


	</table>
	<form action="search.job">
		Search job based on your skills <input name="skill" list="${skills}">
<select name="skill">
<c:forEach var="skl" items="${skills}">
<option value="${skl}"> ${skl}</option>
</c:forEach>


</select>


		<input type="submit" value="Search Job">
	</form>

</body>
</html>