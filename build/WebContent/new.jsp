<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="banner.html"%>
	<form action = "User.job">
		<table border="2">
			<tr>
				<th colspan="2">FORGET PASSWORD</th>
			</tr>
			<tr>
				<td>Email</td>
				<td><input name="email" type="email"></td>
			</tr>

			
			<tr>
				<td>Age</td>
				<td><input name="age"></td>
			</tr>

			<tr>
				<th colspan="2">	
						<input type="submit" value="next">
					</th>
			</tr>
		</table>
	</form>
</body>
</html>


