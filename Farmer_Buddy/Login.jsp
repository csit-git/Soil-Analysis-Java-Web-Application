<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

    
     

<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html style="position: static;" xmlns="http://www.w3.org/1999/xhtml"><head>




    <title>FarmersBuddy-Login</title>
           <link href="FB_Files/cssWeb.css" rel="StyleSheet" type="text/css">
           
           <link rel="SHORTCUT ICON" href="FB_Files/New Icon.ico">
     
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
    <META name="description" content="Farmers Buddy is a comprehensive agricultural solution which aims at better agricultural practices in the country. ">
<META name="keywords" content="soil analysis, agricultural training, weather forecast, online forum for farmers, agricultural news,
agricultural solutions.">

<style type="text/css">
h1 {font-family:Century Gothic,Tahoma;font-size:30px;margin-bottom:-1px;margin-top:0px;color:#ffffff;}
h2 {
font-size:11px;
margin-bottom:-1px;
margin-top:1px;
font-weight:bold;
      }
</style>

    
</head><body class="MainBGColor2" background="New Folder/diving_1024x768.jpg">
    <div>
        <table class="MasterGeneralTable" cellpadding="0" cellspacing="0">
            <tbody><tr valign="top">
                <td></td>
                <td class="SideShadowRight"></td>
            </tr>
            <!-- page start -->
             <tr valign="top">
                <td class="MainTd" align="center"> 
                    <table dir="ltr" border="0" cellpadding="0" cellspacing="0">
                        <!-- logo -->
          <tbody><tr class="LogoRow">
                            <td class="WhiteSpaces"></td>
                            <td colspan="2" align="left" valign="top" class="LogoRow"><table cellspacing="0" cellpadding="0" width="933">
                              <tbody>
                                <tr>
                                  <td colspan="8" align="left"><img src="Sample_files/label2_01.gif" alt="logo1" width="933" height="114" /></td>
                                </tr>
                                <tr>
                                  <td width="278" align="left"><img src="Sample_files/label2_02.gif" alt="logo2" width="278" height="49" /></td>
                                  <td width="108" align="left"><a title="Farmers Buddy Home" href="index.jsp"><img src="Sample_files/label2_03.gif" alt="home" width="108" height="49" border="0" /></a></td>
                                  <td width="105" align="left"><a title="Farmers Buddy Bulletin Board" href="index.jsp"><img src="Sample_files/label2_04.gif" alt="agriboard" width="105" height="49" border="0" /></a></td>
                                  <td width="108" align="left"><a title="Farmers Buddy User Registration" href="register.html"><img src="Sample_files/label2_05.gif" alt="register" width="108" height="49" border="0" /></a></td>
                                  <td width="104" align="left"><a title="Farmers Buddy Login" href="Login.jsp" ><img src="Sample_files/label2_06.gif" alt="login" width="104" height="49" border="0" /></a></td>
                                  <td width="105" align="left"><a title="About Farmers Buddy"><img src="Sample_files/label2_07.gif" alt="aboutus" width="105" height="49" border="0" /></a></td>
                                  <td width="115" align="left"><a title="Contact Farmers Buddy" href="index.jsp"><img src="Sample_files/label2_08.gif" alt="contactus" width="117" height="49" border="0" /></a></td>
                                  <td width="43" align="left"><img src="Sample_files/label2_09.gif" alt="logo4" width="8" height="49" /></td>
                                </tr>
                              </tbody>
                            </table></td>
                    <td class="WhiteSpaces"></td>
                        </tr>
                        <!-- menu -->
                        
                        <!-- gray line under menu -->
                        <tr>
                            <td colspan="4" class="MenuUnderline"></td>
                        </tr>
                        
                        
                        <!-- white space after menu -->
                         <tr bgcolor="WHITE">
                            <td colspan="4" class="AfterMenuWhiteSpace">                            </td>
                         </tr>
                         <!-- main content -->
                        <tr bgcolor="WHITE">
                           <td class="WhiteSpaces"></td>
                            <td colspan="2" align="center" valign="top">
                             <table style="width: 100%;" border="0" cellpadding="0" cellspacing="0">
         <tbody><tr>
            <td colspan="3" style="height: 10px;">&nbsp;</td>
        </tr>
        <tr style="height: 288px;" valign="middle">
             <td>&nbsp;&nbsp;</td> 
             <td style="width: 255px; height: 288px; background-color: rgb(186, 198, 201);" align="center"><img src="FB_Files/Login_Pic.jpg" alt="login" width="255" height="249" /></td>
            <td style="height: 288px; background-color: rgb(186, 198, 201);" align="left"> 
                
    
    

                  <table style="border: 1px solid Gray; background-color: rgb(255, 255, 255);" dir="ltr" border="0" cellpadding="0" cellspacing="0">
         <tbody><tr>
            <td colspan="4" style="height: 14px;" align="right"></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 5px;"></td>
        </tr>
        <tr valign="top">
            <td style="width: 10px;"></td>
            <td colspan="2" style="width: 170px;">
            <% try
    		   {
			    Cookie c[]=request.getCookies();
                  if(c[0].getName().equals("username"))
					 {	    
			%>	
                
                 
            <form id="loginform" name="loginform" method="post" action="loginchk.jsp">
                <table class="RegisteredUserLoginTable" border="0" cellpadding="1" cellspacing="0">
                    <tbody><tr>
                        <td style="width: 10px;"></td>
                        <td style="width: 150px;" align="left"><span id="ctl00_ContentPlaceHolderMainArea_lblLoginHeader" class="RegisteredUserLoginTitle">PLEASE LOGIN</span>                        </td>
                        <td style="width: 10px;"></td>
                    </tr>
                     <tr>
                        <td colspan="3" style="width: 128px; height: 1px; background-color: rgb(161, 159, 172);"></td>
                    </tr>
                     <tr>
                        <td colspan="3" style="width: 128px; height: 5px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10px;"></td>
                        <td class="GrayWriting" align="left"> <span id="ctl00_ContentPlaceHolderMainArea_lblUserName">User Name</span>                        </td>
                        <td style="width: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10px;"></td>
                        <td align="left">
                          <label>
                            <input type="text" name="username" id="username" value="<%=c[0].getValue()%>" />
                            </label>
                        
                        </td>
                        <td syle="width: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10px;"></td>
                        <td class="GrayWriting" align="left"><span id="ctl00_ContentPlaceHolderMainArea_lblPassword">Password:</span>                        </td>
                        <td style="width: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10px;"></td>
                        <td align="left">
                          <label>
                            <input type="password" name="password" id="password" value="<%=c[1].getValue()%>" />
                            </label>
							                   
                        </td>
                        <td style="width: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10px;"></td>
                        <td>                        </td>
                        <td style="width: 10px;"></td>
                    </tr>
                    <tr valign="middle">
                        <td style="width: 10px;"></td>
                        <td class="GrayWriting" align="left"><input id="cbAutoLogin" name="cbAutoLogin" type="checkbox" value="1"><span id="ctl00_ContentPlaceHolderMainArea_lblRemember">Remember me</span></td>
                        <td style="width: 10px;"></td>
                    </tr>
                     <tr>
                        <td colspan="3" style="width: 128px; height: 5px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10px;"></td>
                        <td>
                          <input type="submit" name="submit" value="Login" /></td>
                        <td style="width: 10px;"><div id="errmsg" class="Error404SubTitle" >
                                      <%      
	                                     String val=request.getParameter("val");
										 if(val!=null)
										 {
										 if(val.equals("1"))
										 {
										 %>
                                         Wrong ID or Password
                                         <% }
										 else
										 {
										 %>
                                         
                                         <%}}%>
                                         </div></td>
                    </tr>
                     <tr>
                        <td colspan="3" style="width: 128px; height: 5px;"></td>
                    </tr>
                </tbody></table> </form></td>              
                <% } 
				   else
                  {
				 %>
                 
                 
            <form id="loginform" name="loginform" method="post" action="loginchk.jsp">
                <table class="RegisteredUserLoginTable" border="0" cellpadding="1" cellspacing="0">
                    <tbody><tr>
                        <td style="width: 10px;"></td>
                        <td style="width: 150px;" align="left"><span id="ctl00_ContentPlaceHolderMainArea_lblLoginHeader" class="RegisteredUserLoginTitle">PLEASE LOGIN</span>                        </td>
                        <td style="width: 10px;"></td>
                    </tr>
                     <tr>
                        <td colspan="3" style="width: 128px; height: 1px; background-color: rgb(161, 159, 172);"></td>
                    </tr>
                     <tr>
                        <td colspan="3" style="width: 128px; height: 5px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10px;"></td>
                        <td class="GrayWriting" align="left"> <span id="ctl00_ContentPlaceHolderMainArea_lblUserName">User Name</span>                        </td>
                        <td style="width: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10px;"></td>
                        <td align="left">
                          <label>
                            <input type="text" name="username" id="username"  />
                            </label>
                        
                        </td>
                        <td syle="width: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10px;"></td>
                        <td class="GrayWriting" align="left"><span id="ctl00_ContentPlaceHolderMainArea_lblPassword">Password:</span>                        </td>
                        <td style="width: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10px;"></td>
                        <td align="left">
                          <label>
                            <input type="password" name="password" id="password" />
                            </label>
							                   
                        </td>
                        <td style="width: 10px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10px;"></td>
                        <td>                        </td>
                        <td style="width: 10px;"></td>
                    </tr>
                    <tr valign="middle">
                        <td style="width: 10px;"></td>
                        <td class="GrayWriting" align="left"><input id="cbAutoLogin" name="cbAutoLogin" type="checkbox" value="1"><span id="ctl00_ContentPlaceHolderMainArea_lblRemember">Remember me</span></td>
                        <td style="width: 10px;"></td>
                    </tr>
                     <tr>
                        <td colspan="3" style="width: 128px; height: 5px;"></td>
                    </tr>
                    <tr>
                        <td style="width: 10px;"></td>
                        <td>
                          <input type="submit" name="submit" value="Login" /></td>
                        <td style="width: 10px;"><div class="RedWriting" id="errmsg">
                                      <%      
	                                     String val=request.getParameter("val");
										 if(val!=null)
										 {
										 if(val.equals("1"))
										 {
										 %>
                                         Wrong ID or Password
                                         <% }
										 else
										 {
										 %>
                                         
                                <%}}%>
                            </div></td>
                    </tr>
                     <tr>
                        <td colspan="3" style="width: 128px; height: 5px;"></td>
                    </tr>
                </tbody></table> </form></td>
                <% }
				  }catch(Exception e){}%> 
                  				
             <td style="width: 10px;"></td>
        </tr>
         <tr>
            <td style="width: 10px; height: 40px;"></td>
             <td align="left">&nbsp;</td>
            <td align="left"><span id="errorMsg" class="LoginError"></span>            </td>
            <td style="width: 10px;"></td>
        </tr>
        <tr>
             <td style="width: 10px; height: 1px;"></td>
             <td colspan="2" style="width: 170px; height: 1px; background-color: rgb(161, 159, 172);"></td>
             <td style="width: 10px; height: 1px;"></td>
        </tr>
         <tr>
            <td style="width: 10px; height: 14px;"></td>
            <td align="left">&nbsp;<img src="FB_Files/GrayLinkArrow.gif" alt="image1"></td>
            <td align="left"><a class="GrayLink" href="passwordrecovery.html">Forgot Your Password?</a></td>
            <td style="width: 10px;"></td>
        </tr>
        
        <tr valign="middle">
            <td style="width: 10px; height: 14px;"></td>
            <td align="left">&nbsp;<img src="FB_Files/GrayLinkArrow.gif" alt="image2"></td>
            <td align="left"><a class="GrayLink" href="register.htm">New user?</a></td>
            <td style="width: 10px;"></td>
        </tr>
        <tr>
            <td colspan="4" style="height: 10px;" class="SmallFont">&nbsp;</td>
        </tr>
    </tbody></table>            </td>
            <td style="width: 20px;">            </td>
            </tr>
        <tr>
            <td colspan="3" style="height: 50px;">&nbsp;</td>
        </tr>
    </tbody></table>   

                            </td>
                          <td class="WhiteSpaces"></td>
                        </tr>
                        <tr>
                            <td colspan="4"></td>
                        </tr>
                        
                        <!-- gray line after footer -->
                        <tr>
                            <td colspan="4"></td>
                        </tr>
                        <tr>
                           <td class="WhiteSpaces"></td>
                            <td colspan="2" class="LearnMoreRow" align="left" valign="top">
                                
 <table width="100%">
    <tbody>
     <tr> <td class="HSpace5"></td></tr>
    <tr>
        <td class="HDottedLine">        </td>
    </tr>
 </tbody></table>                            </td>
                            <td class="WhiteSpaces"></td>
                        </tr>
                        <tr>
                            <td colspan="4" style="height: 30px;"></td>
                        </tr>
                         
        
                        <!-- footer -->
                        <tr>
                           <td class="WhiteSpaces"></td>
                            <td colspan="2" align="left" valign="top" id="tdFooterLinks1">
                  <table dir="ltr" border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tbody><tr>
                                       
                                       <td class="MenuFooterSite" width="45%" align="right">Copyright © 2010 Farmers Buddy. All rights reserved</td>
                                    </tr>
                                </tbody></table>                            </td>
                          <td class="WhiteSpaces"></td>
                        </tr>
                        <!-- gray line after footer -->
                        <tr>
                            <td colspan="4" style="height: 30px;"></td>
                        </tr>
                        <tr>
                            <td colspan="4" class="BottomShadow1"></td>
                        </tr>
                        <tr>
                            <td colspan="4" class="BottomShadow2"></td>
                        </tr>
                    </tbody></table>               </td>
                <td class="SideShadowRight"></td>
            </tr>
        </tbody></table>
</div>
</body>
</html>