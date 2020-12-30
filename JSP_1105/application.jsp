
<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("euc-kr"); 

	application.setAttribute("myKey", "key111");
	String serverInfo = application.getServerInfo();
	String mineType = application.getMimeType("reqeust1.html");
	String realPath = application.getRealPath("/");
	
	application.log("application ");
%>

serverInfo : <%= serverInfo %><br />
mineType : <%= mineType %><br />
realPath : <%= realPath %><br />
