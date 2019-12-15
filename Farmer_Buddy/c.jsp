<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<%@ page import="java.sql.*,java.io.*" %>
<jsp:useBean id="dbConn" scope="application" class="my.DBConnection"/>

<% String id=request.getParameter("id");
    try{
      Connection c=dbConn.getDBConnection();
	  Statement  s=c.createStatement();
	  ResultSet rs=s.executeQuery("select ques,opt1,opt2,opt3 from shekhar.poll where pid="+id);%>
      <table  border="1">
      <%while(rs.next()){%>
   <form id='form1' name='form1' method='get' action='r.jsp'>
  <p>
    
  <tr> <td><%=rs.getString(1)%></td>   </tr>
  <tr>
    <td><label><input type="radio" name="voteop" value="1" id="voteop_0" />
      <%=rs.getString(2)%></label></td>
  </tr>
   <input type="hidden" name="id" value="<%=id%>" />
   <input type="hidden" name="ques" value="<%=rs.getString(1)%>" />
   <input type="hidden" name="op1" value="<%=rs.getString(2)%>" />
   <input type="hidden" name="op2" value="<%=rs.getString(3)%>" />
   <input type="hidden" name="op3" value="<%=rs.getString(4)%>" />
   
  <tr>
    <td><label>
      <input type="radio" name="voteop" value="2" id="voteop_1" />
      <%=rs.getString(3)%></label></td>
  </tr>
  <tr>
    <td><label>
      <input type="radio" name="voteop" value="3" id="voteop_2" />
      <%=rs.getString(4)%></label></td>
  </tr>
  <tr><td><input name="vote" type="submit" value="vote"/></td></tr>
  </form>
</table>
<%}}catch(Exception e){%>
<%out.println(e);%>
                    <%}%>
</body>

      
   
</html>
