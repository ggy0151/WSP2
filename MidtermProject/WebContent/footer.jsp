<%@ page import="java.lang.Math"%>

<div id = "squared">
<%
int num = 5;
double squared = Math.pow(num, 2);
out.println("3.footer.jsp : square of "+ num + ": " + squared + "\n");
%>
</div>