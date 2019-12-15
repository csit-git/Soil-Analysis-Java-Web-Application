<html>
<body>
<%@ page import="java.sql.*,java.io.*" %>
<jsp:useBean id="dbConn" scope="application" class="my.DBConnection"/>
<% try{
Connection c=dbConn.getDBConnection();
String val=request.getParameter("val");
String qd=request.getParameter("qid");
String val1=request.getParameter("val1");
String username=request.getParameter("username");
String ans=request.getParameter("ans");
String email=request.getParameter("emailid"); 
String quid=request.getParameter("quid");
if(val.equals("0"))
{
Statement s2=c.createStatement();
ResultSet rs2=s2.executeQuery("Select day(current_date),month(current_date),year(current_date) from sysibm.sysdummy1");
String date="",day="",month="",year="";

while(rs2.next())
{
day=rs2.getString(1);
month=rs2.getString(2);
year=rs2.getString(3);
}

date=year+"-"+month+"-"+day;

PreparedStatement ps=c.prepareStatement("insert into gari.response(qid,ans,date,emailid,username) values(?,?,?,?,?)");
ps.setString(1,quid);ps.setString(2,ans);ps.setString(3,date);ps.setString(4,email);
ps.setString(5,username);
int x=ps.executeUpdate();
response.sendRedirect("forum_ins.jsp?val=6");
}


if(val.equals("1"))
{
Statement s=c.createStatement();
ResultSet rs=s.executeQuery("Select username,ans,date from gari.response where qid="+qd);
Statement s1=c.createStatement();
ResultSet rs1=s1.executeQuery("Select ques,username,date from gari.forum where qid="+qd);
%>
<table border="1">
<% while(rs1.next())
{%>
<tr>
<td><b>USERNAME</b>
<%=rs1.getString(2)%>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td><b>DATE</b>
<%=rs1.getString(3)%>
</td>
</tr>
<tr>
<td><b>QUES:</b>
<%=rs1.getString(1)%>
</td>
</tr>

<%}%>
<tr></tr>
<tr>
<td><b>RESPONSE:</b></td></tr>
<%
while(rs.next())
{
%>
<tr>
<td><b>Sent by</b>
<%=rs.getString(1)%>
</td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<td><b>DATE</b>
<%=rs.getString(3)%>
</td></tr>
<tr>
<td><b>ANSWER:</b>
<%=rs.getString(2)%>
</td>
</tr>
<%}
}
if(val.equals("2"))
{%>
<form method="get" action="ans.jsp">
enter username : <input type="text" name="username" ><br>
enter email-id : <input type="text" name="emailid" ><br>
Enter your Response:<br>
<textarea rows="15" cols="70" name="ans" ></textarea><br>
<input type="hidden" name="val" value="0">

<input type="hidden" name="quid" value="<%=qd%>">
<input type="submit" value="Create" ><br>
</form>
<%}
}
catch(Exception e){out.println(e);}
%>
</body>
</html>







