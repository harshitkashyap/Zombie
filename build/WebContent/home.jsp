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


<title>Application Landing Page</title>
</head>
<body align="center">

	<%
		if (request.getParameter("logout") != null) {

			session.invalidate();
		}
	%>

	<form action="signin.job" method="post">
		<div align="center" id="tab1">
			<table bgcolor=#85C1E9>

				<%
					if (request.getParameter("invalid") != null) {
				%>
				<tr>
					<th colspan="2">Invalid user ID/password</th>
				</tr>
				<%
					}
				%>
				<tr>
					<td>Email ID:</td>
					<td colspan="30"><input name="email" type="email"
						id="contact_email"></td>

				</tr>
				<tr>
					<td>Password:</td>
					<td colspan="10"><input name="password" type="password"
						required></td>
				</tr>



				<tr>
					<td><input type="reset" value="Reset" class="btn btn-danger">
					</td>
					<td><input type="submit" value="Login" class="btn btn-success">
					</td>
				</tr>

			</table>

			<div class="text-center ">
				<a class="txt1" href="forgetpassword.jsp"> Forgot Password? </a>
			</div>
			
	</form>
	
	<div class="tcontainer-login100-form-btn p-t-20">
				<a href="doRegister.job">Not Yet
					Registered?Join Us</a>
			</div>

</body>
</html>