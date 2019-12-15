<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.security.Security" errorPage="" %>
<% String senderemail=request.getParameter("senderemail");
   String host=request.getParameter("radio");
   String hostname="";
   if(host.equals("gmail")) 
   {
    hostname="smtp.gmail.com";
   }	
   System.out.println(hostname); 
   String recemail=request.getParameter("recemail");
   String password=request.getParameter("password");
   String subject=request.getParameter("subject");
   String message=request.getParameter("message");
   
  try
  { 
   Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
   new mailtome.SendMail(hostname,password).sendSSLMessage(recemail,subject,message,senderemail);
   response.sendRedirect("mail.jsp?val=1");
  }catch(Exception e)
   {
    System.out.println(e);
    response.sendRedirect("mail.jsp?val=0");
	out.println("Mail not sent");
	}
  
 %> 

