<html>
<body>
<%@ page import="java.sql.*,java.io.*" %>
<jsp:useBean id="dbConn" scope="application" class="my.DBConnection"/>
<% 
try{
String username=request.getParameter("username");
  String ques=request.getParameter("ques");
String email=request.getParameter("emailid"); 
String val=request.getParameter("val");





Connection c=dbConn.getDBConnection();
if(val.equals("1"))
{
Statement s=c.createStatement();
ResultSet rs=s.executeQuery("Select day(current_date),month(current_date),year(current_date) from sysibm.sysdummy1");
String date="",day="",month="",year="";

while(rs.next())
{
day=rs.getString(1);
month=rs.getString(2);
year=rs.getString(3);
}
if(ques.equals(null))
date=null;
else
date=year+"-"+month+"-"+day;

PreparedStatement ps=c.prepareStatement("insert into gari.forum(username,ques,date,emailid) values(?,?,?,?)");
ps.setString(1,username);ps.setString(2,ques);ps.setString(3,date);ps.setString(4,email);
int x=ps.executeUpdate();
}}catch(Exception e){}
%><table width="364" border="1" cellspacing="0" cellpadding="0">
  <tr>
    <td width="360" bgcolor="#00CCFF"><font color="#FFFFFF" size="+2"><b>Discussion Forum</b></font></td>
  </tr>
  <tr>
    <td height="185" valign="top">Your Topic is Posted</td>
  </tr>
</table>

<h1>&nbsp;</h1>

</body>
</html>

   