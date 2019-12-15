<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%@ page import="rss.RssReader,
                 rss.RssFeed,
                 java.util.Iterator,
                 rss.RssItem"%>
<%@ taglib uri="/WEB-INF/rss.tld" prefix="rss"  %>


<%
    String id=request.getParameter("id");
    RssReader reader = new RssReader();
    
    RssFeed rssFeed = reader.read("http://weather.yahooapis.com/forecastrss?p="+id+"&u=c");
    Iterator it = rssFeed.getItems().iterator();
    //while (it.hasNext()) {
      RssItem rssItem = (RssItem) it.next();
%>
 <b><font color="#0000FF"><%= rssItem.getTitle() %></font></b><br/>
  <%=rssItem.getDiscrip() %>
  <br />
<%
    
%>


<br /><br />
<%--<%String id=request.getParameter("id"); 
  String url="http://weather.yahooapis.com/forecastrss?p="+id+"&u=c";%>
<rss:rssFeed url="url">
  <a href="<%= rssItem.getLink() %>"><%= rssItem.getTitle() %></a>
  <br />
  <%=rssItem.getDiscrip() %>
  <br />
</rss:rssFeed>--%>
</body>
</html>