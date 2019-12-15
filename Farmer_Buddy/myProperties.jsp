<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="dbConn" scope="application" class="my.DBConnection"/>
<%
    Connection conn=dbConn.getDBConnection();
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select * from gari.forum");
%>
<html>
<head>
<title>properties file database connectivity</title>
</head>
<body>
<%
while(rs.next())
{
 out.println(rs.getString(1));    
}
%>
</body>
</html>
<%
  if(conn!=null)
    conn.close();
%>
