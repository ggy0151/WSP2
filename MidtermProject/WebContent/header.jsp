<%@ page pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date"%>
<%@ page language="java" %>
<html>
<head>
<title>header</title>
</head>
<body>
<div id="Date">
	<%
		Date day = new java.util.Date();
		out.println("1.header.jsp-current time 1 (expression) : " + day);
	%>
	<p>
	1.header.jsp-current time 2 (scriptlet) : <%= new java.util.Date() %>
	</p>
</div>

	
</body>
</html>