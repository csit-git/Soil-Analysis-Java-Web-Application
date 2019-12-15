<%@ page import="rss.RssReader,
                 rss.RssFeed,
                 java.util.Iterator,
                 rss.RssItem"%>



<%
    
    RssReader reader = new RssReader();
    RssFeed rssFeed = reader.read("http://www.agrifeeds.org//node/1044/xml");
    Iterator it = rssFeed.getItems().iterator();
	int i=0;
    while (it.hasNext()&& i<=7) {
      RssItem rssItem = (RssItem) it.next();
	  i++;
%>
  <a href="<%= rssItem.getLink() %>"><%=i%>. <%= rssItem.getTitle()%></a>
  <br />
<%
    }
%>




