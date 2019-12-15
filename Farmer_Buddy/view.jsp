<%@ page import="java.io.*" %>
<html><body>

<%  String movie="";
   String type[]=new String[]{"Audio","Video","DOC","PDF","PPT"};
   for(int j=0;j<=4;j++)
  {
   String userdir = System.getProperty("user.dir");
   File folder = new File(userdir+"\\webapps\\Far\\data\\"+type[j]);
    File[] listOfFiles = folder.listFiles();
%>
<b><font color="#2f669c" size="+2"><%=type[j]%></font></b>
<hr>
<%
   
    for (int i = 0; i < listOfFiles.length; i++) 
    {
      if (listOfFiles[i].isFile()) 
      {
       String name=listOfFiles[i].getName();
       
     
      
%>

<UL>
<LI><%=name%>&nbsp;&nbsp;&nbsp;&nbsp;<a href="/Far/data/<%=type[j]%>/<%=name%>">download</a></li>
<% if(type[j].equals("video"))
   {
   %>
    <a href="play.jsp?name=<%=name%>">view</a>
<%}%>
      
<%}}%> 
</ul>
<%}%>

</body>
</html>