package map;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;



public class Geocoder {
	private String cord;
	private final static String YAHOOURL = "http://maps.google.com/maps/geo?q=";
	
	

	public String geocode(String address) {
		
		String web = YAHOOURL +address+",india"+"&output=xml&oe=utf8&sensor=true_or_false&key="+"ABQIAAAALxvMlWf9El-rlUho9rQ3sRTLnPuXTsGLOU3NIZz6g3SrdDSa3BR9tXBrQxyImrwgWFiH9pMJZ2wVIw"; 
		URL url;
		try {
			url = new URL(web);
			
			InputStream in = url.openStream();
                        
			 cord= YahooXmlReader.readConfig(in);
                        
			in.close();
                        
                       
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return cord;
	}

	/*private String createLocation(Address address) {
		String s = "";

		s += address.getStreet() != null ? address.getStreet() + "+" : "";
		s = address.getCity() != null ? address.getCity() + "+" : "";
		s += address.getPostalCode() != null ? address.getPostalCode() + "+"
				: "";
		s += address.getCountry() != null ? address.getCountry() + "+" : "";
		if (s.endsWith("+")) {
			s = s.substring(0, s.length() - 1);
		}
		s = s.replace(" ", "+");
		return s;
	}*/
}

