<%@ page import="chat.*,java.util.*"%>
<%String send=request.getParameter("send"); 
  String username=request.getParameter("username");
     application=config.getServletContext();
     HashMap h=(HashMap)application.getAttribute("collection");
     Client c=(Client)h.get(username);
     c.send(send);
     response.sendRedirect("chat1.jsp?username="+username);
%>