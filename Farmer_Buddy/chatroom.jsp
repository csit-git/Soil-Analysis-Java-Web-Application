<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%      
	
	session=request.getSession(false);
    String username=(String)session.getAttribute("id");
	if(username==null)
	{
	 response.sendRedirect("Login.jsp");
	} 
	else
	{
	response.sendRedirect("chat.jsp?username="+username);
	}
%>
