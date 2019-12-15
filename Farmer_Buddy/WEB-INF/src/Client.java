package chat;
import java.io.*;
import java.net.*;
import java.util.*;

public class Client 
{
         Socket s;
         DataInputStream din;
         public static DataOutputStream dout;
         public String t3;
         public String t4;
         ReadThread rt;
         public  String username;
         
         
       public Client(String usname)
       { 
              
              username=usname;
            try
              {
         
           
               s=new Socket("LocalHost",11100);
               din = new DataInputStream(s.getInputStream());
               dout=new DataOutputStream(s.getOutputStream());
               dout.writeUTF(username);
               dout.flush();
              dout.writeUTF(username+":"+"logged in");
               dout.flush();
               
              
               read();
               }catch(Exception e){}
         }
         
        public void dip()
        {
         System.out.println(username+""+"object is running");
        }

       public void send(String send)
       { 
             
            try
              {
               
               dout.writeUTF(username+":"+send);
               dout.flush();
               }catch(Exception e){}
         }

       public void logout()
       {
          try
             {
              dout.writeUTF("logged out");
              dout.flush();
              dout.writeUTF(username);
              dout.flush();
              dout.writeUTF(username+":"+"logged out");
              dout.flush();
            
             }catch(Exception e){}
       }

      public void read()throws IOException
      {
           rt=new ReadThread(dout,din,username,t3,t4);
           Thread t= new Thread(rt);
           t.start();
      }

      public void set()
      {
        t3=rt.t3;
        t4=rt.t4;
      }

    
   
}

class ReadThread implements Runnable
 {
    DataInputStream din;
    
    String username;
    String t3;
    String t4;
    DataOutputStream dout;
    
    ReadThread(DataOutputStream dout,DataInputStream din,String username,String t3,String t4)
    {
       this.din=din;
       this.dout=dout;
       
       this.username=username;
       this.t3=t3;
       this.t4=t4;
       
     }

   public void run()
    {
          
      try
     { 
       String s3="";
         String s4;
        String t1="";
        String t2="";         
        do
        {
           
                 s3=din.readUTF();
                if(s3.equals("xyz"))
                 { t2="";
                    do
                      {
                         s4=din.readUTF();
         
                          if(!s4.equals("finish"))
                          t2=t2+"\n"+s4;
                       
                       }while(!s4.equals("finish"));
                     t4=t2;
                    }
                     
                     if(!s3.equals("xyz"))
                    { t1=t1+"\n"+s3;
                     t3=t1;}
              
          }while(!s3.equals(username+":"+"logged out"));
           System.out.println(username+":"+"logged out");
         }catch(Exception e){}
     }
}