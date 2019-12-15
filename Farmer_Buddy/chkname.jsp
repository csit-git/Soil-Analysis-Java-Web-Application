<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="dbConn" scope="application" class="my.DBConnection"/>
<html>
<body>
<%
    String name=request.getParameter("name");
    Connection conn=dbConn.getDBConnection();
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select username from gari.Login_Details");
	int i=0;
	while(rs.next())
	{
	 if(name.equals(rs.getString(1)))
	 {
	  i=1;
	  %>
      <b><font  style="color:#FF0000" >Username already exist</font></b>
      <%
     }
    }
     if(i==0)
	 {%>
      <b><font color="#00CC00">Success</font></b>
      <%     
     }
%>
</body>
</html>