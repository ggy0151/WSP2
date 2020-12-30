<%@ page import="java.util.Date"%>
<%@ page import="java.lang.Math"%>
<html>
<head>
<title>Practice1008</title>
</head>
<body>
<div id="date">
<% 
Date day = new java.util.Date();
out.println("current date: " + day + "\n");
%>
</div>
<div id = "squared">
<%
int num = 5;
double squared = Math.pow(num, 2);
out.println("square of "+ num + ": " + squared + "\n");
%>
</div>
</body>
</html>


