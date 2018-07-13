<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body align="center">
	<div align="center" style="color: white; background-color: black;">
		<h1>Daemon job portal</h1>
		<br>
		<p>
			<b>Your path to great job opportunities</b>
		</p>
		<%
			String name = (String) session.getAttribute("Name");
		%>

		<div>
			Hello
			<%=name%>
			| <a href="home.jsp?logout=yes">Logout</a> | <a href="profile.jsp">Profile</a>
		</div>
		<hr>
	</div>
</body>
</html>