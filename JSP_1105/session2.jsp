<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("euc-kr");
	String season = request.getParameter("season");
	String fruit = request.getParameter("fruit");
	
	String id = (String)session.getAttribute("idKey");
	String sessionId = session.getId();
	int intelvalTime = session.getMaxInactiveInterval();

	if(id!=null) {
%>
	<strong><%=id %></strong> love this season and fruit
	<strong><%=season %>, <%=fruit %></strong><br />
	session ID : <%=sessionId %><br />
	session time : <%=intelvalTime %><br />
	out.println("<a href='session2.jsp'>logout</a>");
	
<%		
	} else {
		out.println("login fail");
		out.println("<a href='session1.html'>login</a>");
	}
%>

