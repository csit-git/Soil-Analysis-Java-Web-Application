<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="error.jsp" %>
<jsp:useBean id="dbConn" scope="application" class="my.DBConnection"/>
<% try
   {
    String usertype=request.getParameter("usertype");
	int type=Integer.parseInt(usertype);
    String username=request.getParameter("username");
	String password=request.getParameter("password");
	String secques=request.getParameter("secques");
	String sectext=request.getParameter("sectext");
	if(secques.equals("4"))
	{
	 secques=sectext;
	}
	String answer=request.getParameter("secanswer");
	String name=request.getParameter("Name");
	String gender=request.getParameter("Gender");
	String year=request.getParameter("year");
	String month=request.getParameter("month");
	String date=request.getParameter("date");
	String occupation=request.getParameter("occupation");
	String address=request.getParameter("address");
	String city=request.getParameter("city");
	String country=request.getParameter("country");
	String email=request.getParameter("emailId");
	String phone=request.getParameter("areacode")+request.getParameter("number");
	String mobile=request.getParameter("mobile");
	String faxno=request.getParameter("areafax")+request.getParameter("numberfax");
	String agritype=request.getParameter("agritype");
	String villname=request.getParameter("villname");
	String land=request.getParameter("land");
	String income=request.getParameter("income");
	String crops=request.getParameter("crops");
	String fertilizers=request.getParameter("fertilizers");
	String coursename=request.getParameter("coursename");
	String yr=request.getParameter("yr");
	String clgname=request.getParameter("clgname");
	String university=request.getParameter("university");
	String specialization=request.getParameter("specialization");
	String organization=request.getParameter("org");
	String location=request.getParameter("location");
	String website=request.getParameter("website");
	out.println("Welcome, "+username);
    Connection conn=dbConn.getDBConnection();
    PreparedStatement ps1=conn.prepareStatement("insert into gari.login_details(username,password,ques,ans) values(?,?,?,?)");
    ps1.setString(1,username);
	ps1.setString(2,password);
	ps1.setString(3,secques);
	ps1.setString(4,answer);
    int x1=ps1.executeUpdate();
	PreparedStatement ps2=conn.prepareStatement("insert into            gari.personal_details(user_id,name,gender,dob,contact_address,country,telephone,email,mobile,fax,occupation) values(?,?,?,?,?,?,?,?,?,?,?)");
	String dob=date+"/"+month+"/"+year;
	String faddress=address+","+city+","+country;
    ps2.setString(1,username);
	ps2.setString(2,name);
	ps2.setString(3,gender);
	ps2.setString(4,dob);
	ps2.setString(5,faddress);
	ps2.setString(6,country);
	ps2.setString(7,phone);
	ps2.setString(8,email);
	ps2.setString(9,mobile);
	ps2.setString(10,faxno);
	ps2.setString(11,occupation);
    int x2=ps2.executeUpdate();
	
	if(type==2)
	{
	  PreparedStatement ps3=conn.prepareStatement("insert into gari.farmer_details(user_id,name,land_acquired,crops_grown,agriculture_type,village_name,fertilizers_used,annual_income) values(?,?,?,?,?,?,?,?)");
	ps3.setString(1,username);
	ps3.setString(2,name);
	ps3.setString(3,land);
	ps3.setString(4,crops);
	ps3.setString(5,agritype);
	ps3.setString(6,villname);
	ps3.setString(7,fertilizers);
	ps3.setString(8,income);
	int x3=ps3.executeUpdate();
	}
	
	if(type==3)
	{
	  PreparedStatement ps4=conn.prepareStatement("insert into gari.academic_details(user_id,name,course,year,college_name,university) values(?,?,?,?,?,?)");
	ps4.setString(1,username);
	ps4.setString(2,name);
	ps4.setString(3,coursename);
	ps4.setString(4,yr);
	ps4.setString(5,clgname);
	ps4.setString(6,university);
	int x4=ps4.executeUpdate();
	}
	
	if(type==4)
	{
	  PreparedStatement ps5=conn.prepareStatement("insert into gari.agriculture_officer_details(user_id,name,specialization,working_location,organization,website) values(?,?,?,?,?,?)");
	ps5.setString(1,username);
	ps5.setString(2,name);
	ps5.setString(3,specialization);
	ps5.setString(4,location);
	ps5.setString(5,organization);
	ps5.setString(6,website);
	int x5=ps5.executeUpdate();
	}
   }catch(Exception e){}
   response.sendRedirect("Login.jsp");  
  %> 	
	
