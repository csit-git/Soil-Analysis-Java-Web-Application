package map;

import java.io.InputStream;

import javax.xml.stream.XMLEventReader;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.events.XMLEvent;

public class YahooXmlReader {
        private static  String cord;
	private YahooXmlReader() {
		
	}
        
	public static String readConfig(InputStream in) {
		
		try {

			
			XMLInputFactory inputFactory = XMLInputFactory.newInstance();
			
			XMLEventReader eventReader = inputFactory.createXMLEventReader(in);
			
			while (eventReader.hasNext()) {
				XMLEvent event = eventReader.nextEvent();
                                
				if (event.isStartElement()) {
                                        
                                        
					if (event.asStartElement().getName().getLocalPart() == ("coordinates")) {
						event = eventReader.nextEvent();
                                                cord=event.asCharacters().getData();
						
					}
					
				}
			}
		} catch (XMLStreamException e) {
			e.printStackTrace();
		}return cord;
		
	}   
}
