package rss;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public class RssFeed {

 private Collection items = new ArrayList();

  
  public void addItem(RssItem item) {
    items.add(item);
  }

  public Collection getItems() {
    return Collections.unmodifiableCollection(items);
  }

}
