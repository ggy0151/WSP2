<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("euc-kr"); 


	session.removeAttribute("idKey");
	

	session.invalidate();
	response.sendRedirect("session1.html");
%>
