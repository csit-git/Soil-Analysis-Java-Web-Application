<%@ page import="chat.*,java.util.*"%>
<%
     String username=request.getParameter("username");
     application=config.getServletContext();
     HashMap h=(HashMap)application.getAttribute("collection");
     Client c=(Client)h.get(username);
     c.set();
     out.println(c.t4);
     
%>
