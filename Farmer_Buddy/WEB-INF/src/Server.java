
package chat;
import java.io.*;
import java.net.*;
import java.util.*;

public class Server
{
  ArrayList al=new ArrayList();
  ArrayList al1=new ArrayList();
  ServerSocket ss;
  Socket s;
 
     public Server()
     {
         try
          {
              ss=new ServerSocket(9100);
              while(true)
                {
                    s=ss.accept();
                    al.add(s);
                    Runnable r = new Mythread(s,al,al1);
                    Thread t=new Thread(r);
                    t.start();
                 }
             }catch(Exception e){}
        }

       
 }

 class Mythread implements Runnable
  {
      Socket s;
      ArrayList al,al1;
        Mythread(Socket s,ArrayList al,ArrayList al1)
          {
             this.s=s;
             this.al=al;
             this.al1=al1;
          }

         public void run()
          {
              String s1,s2,s3;
              int i;
              try
               {   
                      DataInputStream din = new DataInputStream(s.getInputStream());
                      DataOutputStream dout = new DataOutputStream(s.getOutputStream());
                       s1=din.readUTF();
                       al1.add(s1);
                      
                    Iterator   i1=al1.iterator(); 
                      Broadcast("xyz");
                      while(i1.hasNext())
                      {
                          try
                               {
                                  String s4= (String)i1.next();
                                  Broadcast(s4);
                                    
                                }catch(Exception e){e.printStackTrace();}
                         
                     }Broadcast("finish");
                      s3=din.readUTF();
                      Broadcast(s3);   
                         
                               
                        
                   do
                    {
                       s1=din.readUTF();
                       if(s1.equals("logged out"))
                          {
                               s2=din.readUTF();
                              i=al1.indexOf(s2);
                             al1.remove(i);
                              i1=al1.iterator(); 
                             Broadcast("xyz");
                                 while(i1.hasNext())
                                       {
                                         try
                                              {
                                                String s4= (String)i1.next();
                                                Broadcast(s4);
                                                }catch(Exception e){e.printStackTrace();}
                         
                                      }Broadcast("finish");
                                      dout.flush();
                          }
                       
                       if(!s1.equals("stop") && !s1.equals("logged out" ) && !s1.equals("xyz")) 
                       Broadcast(s1);
                      }while(!s1.equals("stop"));
                 }catch(Exception e){e.printStackTrace();}
             }
        public void Broadcast(String s1)
           {
               Iterator i=al.iterator();
                 while(i.hasNext())
                  {
                      try
                          {
                              Socket sl= (Socket)i.next();
                              DataOutputStream dout = new DataOutputStream(sl.getOutputStream());
                               dout.writeUTF(s1);
                                dout.flush();
                                System.out.println("Client");
                            }catch(Exception e){e.printStackTrace();}
                      }
               }
             
 }
                     
 