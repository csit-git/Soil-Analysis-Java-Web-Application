
<%@ page import="chat.*,java.util.*" %>
<% String username=request.getParameter("username"); 
        application=config.getServletContext();
        HashMap h=(HashMap)application.getAttribute("collection");
        
        if(h==null)
        {
         HashMap h2 = new HashMap();
         application.setAttribute("collection",h2);
        }     
        HashMap h1=(HashMap)application.getAttribute("collection");
        if(h1.containsKey(username))
           {
            response.sendRedirect("err.jsp");
           }
        else
        {
        Client c=new Client(username);
        h1.put(username,c);
        
        application.setAttribute("collection",h1);
        System.out.println("client started"+" "+username);
        response.sendRedirect("chat1.jsp?username="+username);
        }
%>
