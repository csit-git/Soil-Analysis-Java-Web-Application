package rss;

import java.io.InputStream;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.logging.LogFactory;


import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

public class RssReader {

  
  public RssFeed read(String url) {
    RssFeed rssFeed = new RssFeed();

    try {
      HttpClient httpClient = new HttpClient();
      GetMethod getMethod = new GetMethod(url);
      int responseCode = httpClient.executeMethod(getMethod);

      if (responseCode != 200) {
        return rssFeed;
      }

      DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
      factory.setValidating(false);
      factory.setNamespaceAware(true);
      factory.setIgnoringElementContentWhitespace(true);
      factory.setIgnoringComments(true);
      DocumentBuilder builder = factory.newDocumentBuilder();
      builder.setErrorHandler(new ErrorHandler() {
        public void warning(SAXParseException e) throws SAXException {
          System.out.println(e);
          throw e;
        }

        public void error(SAXParseException e) throws SAXException {
          System.out.println(e);
          throw e;
        }

        public void fatalError(SAXParseException e) throws SAXException {
          System.out.println(e);
          throw e;
        }
      });

      InputStream in = getMethod.getResponseBodyAsStream();
      Document doc = builder.parse(in);
      Node root = doc.getDocumentElement();

      
      NodeList channels = doc.getElementsByTagName("channel");
      for (int i = 0; i < channels.getLength(); i++) {
        NodeList nodes = channels.item(i).getChildNodes();
        for (int j = 0; j < nodes.getLength(); j++) {
          Node n = nodes.item(j);

          if (n.getNodeName().equals("item")) {
            RssItem rssItem = loadRssItem(n);
            rssFeed.addItem(rssItem);
          }
        }
      }

      
      NodeList items = doc.getElementsByTagName("item");
      for (int i = 0; i < items.getLength(); i++) {
        RssItem rssItem = loadRssItem(items.item(i));
        rssFeed.addItem(rssItem);
      }
    } catch (Exception e) {
      e.printStackTrace();
    }

    return rssFeed;
  }

  
  private RssItem loadRssItem(Node root) throws Exception {
    String title = null;
    String link = null;
    String discrip = null;

    NodeList nodes = root.getChildNodes();
    for (int i = 0; i < nodes.getLength(); i++) {
      Node n = nodes.item(i);

      if (n.getNodeName().equals("title")) {
        title = getTextValue(n);
      }

      if (n.getNodeName().equals("link")) {
        link = getTextValue(n);
      }
    
	  if (n.getNodeName().equals("description")) {
        discrip = getTextValue(n);
      }
    }

    RssItem item = new RssItem();
    item.setTitle(title);
    item.setLink(link);
    item.setDiscrip(discrip);
    return item;
  }

  
  private String getTextValue(Node node) {
    if (node.hasChildNodes()) {
      return node.getFirstChild().getNodeValue();
    } else {
      return "";
    }
  }

}
