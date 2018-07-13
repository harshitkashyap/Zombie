<%@page import="lti.daemon.bean.RequirementBean"%>
<%@page import="java.util.List"%>
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



<title>Results Page</title>
</head>
<body>
	<jsp:include page="banner.jsp" />

	<%
		List<RequirementBean> results = (List) request.getAttribute("Results");
	%>
	<table border="2" align="center">
		<tr>
			<th colspan="7">Jobs results for you</th>
		</tr>
		<%
			if (results.size() == 0) {
		%>
		<tr>
			<td colspan="7"><b>Sorry, no results matching your profile</b></td>
		</tr>
		<%
			} else
				for (RequirementBean bean : results) {
		%>
		<tr>
			
			<td><%=bean.getCompany()%></td>
			<td><%=bean.getType()%></td>
			<td><%=bean.getLocation()%></td>
			<td><%=bean.getSkill()%></td>
			<td><%=bean.getExperience()%></td>
			<td><%=bean.getSalary()%></td>
			<td><a href="Daemon.job?jobid=<%=bean.getId()%>">Apply</a></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>