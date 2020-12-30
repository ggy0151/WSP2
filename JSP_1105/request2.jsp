<%@ page contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("euc-kr"); 
	String protocol = request.getProtocol();
	String  serverName = request.getServerName();
	int serverPort = request.getServerPort();
	
	String remoteAddr = request.getRemoteAddr();
	String remoteHost = request.getRemoteHost();
	String method = request.getMethod();
	
	String requestURI = request.getRequestURI();

	
	StringBuffer requestURL = request.getRequestURL();
	String useBrowser = request.getHeader("User-Agent");
	String fileType = request.getHeader("Accept");
%>

protocol : <%= protocol %><br />
server name : <%=serverName%><br />
server port :<%=serverPort%><br />

method : <%=method%><br />
(URL) : <%=requestURL%><br />
(URI) : <%=requestURI%><br />
broswer : <%=useBrowser%><br />
file  type : <%=fileType%>
