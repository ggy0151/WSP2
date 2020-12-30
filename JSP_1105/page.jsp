<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("euc-kr"); 
	
	String pageInfo = this.getServletInfo();
	//Object page = this
%>
<%= pageInfo %>
