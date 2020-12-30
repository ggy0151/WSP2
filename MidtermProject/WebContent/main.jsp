<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Task1</title>
</head>
<body>
<div>
<%@ include file="header.jsp"%>
<%! 
	int hitCount = 0;
	void addCount(){
		hitCount++;
	}
%>
<%
	addCount();
%>
<%
out.println("2.main.jsp : Total number of visits :" + hitCount);
%>
</div>
<br>
<%@ include file="footer.jsp"%>
</body>
</html>