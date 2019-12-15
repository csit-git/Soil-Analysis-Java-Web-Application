<%@ page import="chat.*,java.util.*"%>
<% 
  String username=request.getParameter("username");
   application=config.getServletContext();
   HashMap h=(HashMap)application.getAttribute("collection");
   Client c=(Client)h.get(username);
   c.logout();
   System.out.println(username+"logout");
   Client c1=(Client)h.remove(username);
   application.setAttribute("collection",h);
   response.sendRedirect("enter.jsp");
%>