
<%@ page import="java.sql.*,java.io.*" %>
<jsp:useBean id="dbConn" scope="application" class="my.DBConnection"/>
<%
   String ques=request.getParameter("ques");
   String opt1=request.getParameter("opt1");
   String opt2=request.getParameter("opt2");
   String opt3=request.getParameter("opt3");
   
   String day=request.getParameter("day");String  month=request.getParameter("month");String year=request.getParameter("year");
   String date;
       date=year+"-"+month+"-"+day;	 
	
     try{
	   Connection c=dbConn.getDBConnection();
	  PreparedStatement  ps=c.prepareStatement("insert into shekhar.poll(ques,opt1,opt2,opt3,date) values(?,?,?,?,?)");
	  ps.setString(1,ques);ps.setString(2,opt1);ps.setString(3,opt2);ps.setString(4,opt3);ps.setString(5,date);
	  int x=ps.executeUpdate();
	  }catch(Exception e){out.println(e);}
	  response.sendRedirect("admin_pollist.jsp");
    %>
  

