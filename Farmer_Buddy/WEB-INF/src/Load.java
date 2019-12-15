package map;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.*;
import javax.imageio.ImageIO;
import javax.swing.JFrame;
import java.awt.*;
import java.awt.event.*;
import java.net.*;
import java.applet.*;

public class Load
{
 static BufferedImage  image;
 int red,green,blue,clr;
  public Load(int log,int lat){
    
     try {
    
 String userdir = System.getProperty("user.dir");
    System.out.println(userdir);
     File input = new File(userdir+"\\webapps\\Far\\map.jpg");
      image = ImageIO.read(input);
       clr=image.getRGB(log,lat); 
       red   = (clr & 0x00ff0000) >> 16;
       green = (clr & 0x0000ff00) >> 8;
       blue  =  clr & 0x000000ff;
     
     System.out.println("Red Color value = "+ red);
     System.out.println("Green Color value = "+ green);
     System.out.println("Blue Color value = "+ blue); 
    } catch (IOException ie) {
      System.out.println("Error:"+ie.getMessage());}
     System.out.println(lat);
     System.out.println(red);
     System.out.println(blue);
     System.out.println(green);
  }

  public int red()
  {
   return red;
  }
  public int blue()
  {
   return blue;
  }
  public int green()
  {
   return green;
  }
}
