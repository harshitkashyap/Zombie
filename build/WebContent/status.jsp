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



<title>Status page</title>
</head>
<body>
	<jsp:include page="banner.jsp" />

	<%
		String status = request.getParameter("job");
		if (status.equals("success")) {
	%>
	<font size="5" color="blue">Job application submitted
		successfully</font>
	<%
		} else {
	%>
	<font size="5" color="red">Job application already exist, try
		another</font>
	<%
		}
	%>
	
</body>
</html>