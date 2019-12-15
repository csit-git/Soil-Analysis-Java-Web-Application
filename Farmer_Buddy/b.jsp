<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<%@ page import="java.sql.*,java.io.*" %>
<jsp:useBean id="dbConn" scope="application" class="my.DBConnection"/>
<%
   
try{
      Connection c=dbConn.getDBConnection();
	  Statement  s=c.createStatement();
	  ResultSet rs=s.executeQuery("select pid,ques,date from shekhar.poll");%>
      <table  border="0">

   <tr valign="top">
      <td><table>
         <tr><td></td></tr>
         </table>
      </td>
   </tr>

  <tr>
   
    <th>poll</th>
    <th>end date</th>
  </tr><%while(rs.next())
	  {%>
  <tr>
    <td>&nbsp;&nbsp;<%out.println("<a href='c.jsp?id="+rs.getString(1)+"'>"+rs.getString(2)+"</a>");%></td>
    <td>&nbsp;&nbsp;<%=rs.getString(3)%></td>
  </tr><%
       }	
	  }catch(Exception e){out.println(e);}
    %>
  
</table>

	  
	    
        
        
        
	   
</body>
</html>
