<html
<body>
<%@ page import="java.io.*,java.util.*,java.text.*,java.awt.*,java.awt.image.BufferedImage,javax.imageio.ImageIO,java.awt.*"%>
<%@ page import="map.*"%>

<%  String city=request.getParameter("city"); 
    int soiltype=0;
    String[] word =new String[3];
    int i=0;
    double logitude;
    double latitude;
    Geocoder geocoder = new Geocoder();		 
    String cor = geocoder.geocode(city);
     StringTokenizer st =new  StringTokenizer(cor,",");
      System.out.println(cor);
     while(st.hasMoreTokens())
	     {
		  word[i]=st.nextToken();
		  i++;     
             }
     DecimalFormat two=new DecimalFormat("#.##");
     logitude = Double.valueOf(two.format(Double.parseDouble(word[0])));
     latitude=  Double.valueOf(two.format(Double.parseDouble(word[1])));
     
     logitude=logitude*100;
     latitude=latitude*100;
     int lat=(int)latitude;
     int lon=(int)logitude;
     System.out.println(lat);
     System.out.println(lon);
     lat=3660-lat;
     lon=lon-6783;
    
      
     Load l=new Load(lon,lat);
     int red=l.red(); 
     int green=l.green();
     int blue=l.blue();
%>


<% if(red>=145 && red<=149 && green>=172 && green<=176 && blue>=183 && blue<=187)
        {out.println("Glacier");
		 response.sendRedirect("soiltype.jsp?val=1");
		 }
     else if(red>=188 && red<=192 && green>=217 && green<=221 && blue>=221 && blue<=225)
         {out.println("Skelletal Soil");
		   response.sendRedirect("soiltype.jsp?val=2");
		   }
     else if(red>=157 && red<=161 && green>=166 && green<=170 && blue>=197 && blue<=201)
       {out.println("Mountain Soil");
	     response.sendRedirect("soiltype.jsp?val=3");
		 }
     else if(red>=185 && red<=189 && green>=194 && green<=198 && blue>=193 && blue<=197)
        {out.println("Sub Mountain Soil");
		 response.sendRedirect("soiltype.jsp?val=4");
		 }
      else if(red>=197 && red<=201 && green>=190 && green<=194 && blue>=84 && blue<=88)
        {out.println("Aluvial Soil");
		  response.sendRedirect("soiltype.jsp?val=5");
		  }
     else if(red>=223 && red<=227 && green>=233 && green<=237 && blue>=22 && blue<=26)
        {out.println("Teral Soil");
		  response.sendRedirect("soiltype.jsp?val=6");
		  }
      else if(red>=235 && red<=239 && green>=211 && green<=215 && blue>=89 && blue<=93)
       { out.println("Red Loamy Soil");
	      response.sendRedirect("soiltype.jsp?val=7");
		  }
      else if(red>=245 && red<=249 && green>=195 && green<=199 && blue>=144 && blue<=148)
        {out.println("Red and yellow soil");
		 response.sendRedirect("soiltype.jsp?val=8");}
       else if(red>=245 && red<=249 && green>=252 && green<=255 && blue>=191 && blue<=195)
       { out.println("Laterite soil");
	      response.sendRedirect("soiltype.jsp?val=9");}
      else if(red>=236 && red<=240 && green>=153 && green<=157 && blue>=161 && blue<=165)
        {out.println("Red Sandy Soil");
		  response.sendRedirect("soiltype.jsp?val=10");}
      else if(red>=239 && red<=243 && green>=152 && green<=156 && blue>=187 && blue<=191)
        {out.println("Grey and Brown Soil");
		 response.sendRedirect("soiltype.jsp?val=11");}
       else if(red>=189 && red<=193 && green>=157 && green<=161 && blue>=96 && blue<=100)
       { out.println("Desert Soil");
	     response.sendRedirect("soiltype.jsp?val=12");}
		 
       else if(red>=185 && red<=189 && green>=136 && green<=140 && blue>=41 && blue<=45)
       { out.println("Black Soil");
	      response.sendRedirect("soiltype.jsp?val=13");}
       else
       {response.sendRedirect("soiltype.jsp?val=14");}      
%>