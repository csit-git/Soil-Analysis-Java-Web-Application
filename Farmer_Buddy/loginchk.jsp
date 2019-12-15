<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="dbConn" scope="application" class="my.DBConnection"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<% try
   {
    Connection conn=dbConn.getDBConnection();
   String username=request.getParameter("username");
   String password=request.getParameter("password");
   String chk=request.getParameter("cbAutoLogin");
   Statement s=conn.createStatement();
   ResultSet rs=s.executeQuery("select username,password from gari.login_details");
   while(rs.next())
   {
    if(chk!=null && username.equals(rs.getString(1)) && password.equals(rs.getString(2)) )
	{
	 Cookie c1=new Cookie("username",username);
     Cookie c2=new Cookie("password",password);
     response.addCookie(c1);
     response.addCookie(c2);
	 
	 //response.sendRedirect("Sample.jsp?name="+username);
	}
	if(username.equals(rs.getString(1)) && password.equals(rs.getString(2)) )
	{
	 if(username.equals("admin")&& password.equals("admin"))
	 {
	  session=request.getSession(true);
	  session.setAttribute("id",username);
	  response.sendRedirect("admin.jsp?name="+username);
	 }
	 else
	 {
	  session=request.getSession(true);
	  session.setAttribute("id",username);
	  response.sendRedirect("Sample.jsp?name="+username);
	 }
	}
   }
   response.sendRedirect("Login.jsp?val=1");
   }catch(Exception e)
    {System.out.print(e);
	}	 
%>
   
<body>
</body>
</html>
