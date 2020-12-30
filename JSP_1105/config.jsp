<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("euc-kr"); 

	String sevletName = config.getServletName();
	Enumeration <String> e = config.getInitParameterNames();

	while(e.hasMoreElements()){
		String s = e.nextElement();
		out.print(s+ ":" + config.getInitParameter(s) + "<br />");
	}
%>
<%= sevletName %>
