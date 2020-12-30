<!-- viewCookie.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%

Cookie[] cookie = request.getCookies();

if(cookie != null){
    for(int i=0; i<cookie.length; i++){
        if(cookie[i].getName().equals("name")){
        %>
          <h2> cookie name is <%= cookie[i].getValue() %></h2>
        <%
        }
    }
}
%>


