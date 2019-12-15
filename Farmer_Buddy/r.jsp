<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<%@ page import="java.sql.*,java.io.*" %>
<jsp:useBean id="dbConn" scope="application" class="my.DBConnection"/>

<body>
<%
 String op=request.getParameter("voteop");
 String id=request.getParameter("id");
 String ques=request.getParameter("ques");
 String op1=request.getParameter("op1");
 String op2=request.getParameter("op2");
 String op3=request.getParameter("op3");
 
 int opt1=0;int opt2=0;int opt3=0;
 int i=Integer.parseInt(id);
 int j=Integer.parseInt(op);
 
 if(j==1)
  {opt1=1;opt2=0;opt3=0;}
  if(j==2)
  {opt1=0;opt2=1;opt3=0;}
  if(j==3)
  {opt1=0;opt2=0;opt3=1;}
 try{
      
      Connection c=dbConn.getDBConnection();
          
	  PreparedStatement ps=c.prepareStatement("insert into shekhar.pollres(pid,opt1,opt2,opt3) values(?,?,?,?)");
	  ps.setInt(1,i);ps.setInt(2,opt1);ps.setInt(3,opt2);ps.setInt(4,opt3);
          
	  int x=ps.executeUpdate();
         
           
	  Statement  s=c.createStatement();
	  ResultSet rs=s.executeQuery("select sum(opt1),sum(opt2),sum(opt3) from shekhar.pollres where pid="+id);
	  while(rs.next()){
%>
<table  border="1">
 <tr><td><b>POLL RESULT</b></td></tr>
  <tr> 
    <td><b><%=ques%></b></td>
  </tr>
  <tr>
    <td><%=op1%></td>
    <td width="65"><%=rs.getString(1)%></td>
  </tr>
  <tr>
    <td><%=op2%></td>
    <td><%=rs.getString(2)%></td>
  </tr>
  <tr>
    <td><%=op3%></td>
    <td><%=rs.getString(3)%></td>
  </tr>
</table>
<%}}catch(Exception e){}%>
<form method="post" action="b.jsp">
<input name="back " type="submit" value="back to polls" />
</form>
</body>
</html>
