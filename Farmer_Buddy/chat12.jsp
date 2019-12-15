<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<% String username=request.getParameter("username");%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><META http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <TITLE>Farmers Buddy</TITLE>
           <LINK href="./Sample_files/cssWeb.css" rel="StyleSheet" type="text/css">
           <link rel="SHORTCUT ICON" href="FB_Files/New Icon.ico">
           <META name="description" content="Farmers Buddy is a comprehensive agricultural solution which aims at better agricultural practices in the country. ">
<META name="keywords" content="soil analysis, agricultural training, weather forecast, online forum for farmers, agricultural news,
agricultural solutions.">

           
           
           
     
        
    



<SCRIPT type="text/javascript">

// set the description of the template on the page
function SetDescription(desc)
{

    var elem = document.getElementById('dvDescription');
    elem.innerHTML = desc;
    elem = null;
}


</SCRIPT>

<style type="text/css">
<!--
.style1 {
	font-size: 13px
}
-->
</style>
<style href>a {text-decoration: none} </style>
</HEAD><BODY class="MainBGColor2" background="New Folder/diving_1024x768.jpg" onload="startTime()">
    <DIV>
        <TABLE class="MasterGeneralTable" cellspacing="0" cellpadding="0">
            <TBODY><TR valign="top">
                <TD>
                <TD class="SideShadowRight">            </TR>
            <!-- page start -->
             <TR valign="top">
              <TD align="center" class="MainTd"> 
                    <TABLE border="0" cellspacing="0" cellpadding="0" dir="ltr">
                        <!-- logo -->
                        <TBODY><TR class="LogoRow">
                            <TD colspan="3" align="left" class="LogoRow">
                                <TABLE cellspacing="0" cellpadding="0" width="933">
                                    <TBODY><TR>
                                        <TD colspan="8" align="left"><img src="Sample_files/images/label3_01.gif" alt="logo1" width="933" height="120" /></TD>
          </TR>
                                      <TR>
                                        <TD width="278" align="left"><img src="Sample_files/images/label3_02.gif" alt="logo2" width="281" height="43" /></TD>
                                        <TD width="102" align="left"><a href="Sample.jsp"><img src="Sample_files/images/label3_03.gif" alt="home" width="102" height="43" border="0" /></a></TD>
                                        <TD width="105" align="left"><img src="Sample_files/images/label3_04.gif" alt="agrib" width="108" height="43" /></TD>
                                        <TD width="104" align="left"><img src="Sample_files/images/label3_05.gif" alt="majorcrops" width="104" height="43" /></TD>
                                        <TD width="104" align="left"><img src="Sample_files/images/label3_06.gif" alt="cropmarket" width="107" height="43" /></TD>
                                        <TD width="105" align="left"><img src="Sample_files/images/label3_07.gif" alt="aboutus" width="110" height="43" border="0" /></TD>
                                        <TD width="115" align="left"><img src="Sample_files/images/label3_08.gif" alt="contactus" width="126" height="43" /></TD>
                                        
                                      </TR>
                          </TBODY></TABLE>                            </TD>
                            </TR>
                        <!-- menu -->
                        <tr class="MenuRow">
                    <td width="933" align="left" id="tdMainMenu1" ><iframe height="50" src ="http://www.nmce.com/top_test.jsp" width="933"></iframe></td>
                  </tr>
                  <tr>
                    <td colspan="2" align="right" ><select class="GrayWriting" id="lstLang" name="lstLang" onchange="NavigateToHomePage(this);">
                        <option value="--">Language</option>
                        <option>English</option>
                        <option>Hindi</option>
                    </select></td>
                    
                  </tr>
                        <!-- gray line under menu -->
                        <TR>
                          <TD colspan="3" class="MenuUnderline">                        </TR>
                        
                        
                        <!-- white space after menu -->
                         <TR bgcolor="WHITE">
                            <TD colspan="3" class="AfterMenuWhiteSpace">                            </TD>
                         </TR>
                         <!-- main content -->
                        <TR bgcolor="WHITE">
                           <TD colspan="3" valign="top">
                                

<SCRIPT type="text/javascript">
    
    
	function startTime()
    {
     var today=new Date();
     var h=today.getHours();
     var m=today.getMinutes();
     var s=today.getSeconds();
     // add a zero in front of numbers<10
     m=checkTime(m);
     s=checkTime(s);
     document.getElementById('txt').innerHTML=h+":"+m+":"+s;
     t=setTimeout('startTime()',500);
    }
	
	function changeBGC1(id)
    {
	 var a=id;
     document.getElementById(a).style.backgroundColor ="#2f669c";
	 document.getElementById(a).style.color ="white";
	}
	function changeBGC2(id)
    {
	 var a=id; 
     document.getElementById(a).style.backgroundColor ="white";
	 document.getElementById(a).style.color ="#2f669c";
    }

function checkTime(i)
{
if (i<10)
  {
  i="0" + i;
  }
return i;
}


    
</SCRIPT>
 
<TABLE width="100&percnt;" cellpadding="0" cellspacing="0" border="0" dir="ltr">
<TBODY><TR>
<TD>
<DIV>
    <TABLE class="BasicTable" cellspacing="0" border="0">
        <TBODY><TR>
            <TD colspan="4" class="HSpace15" style="width:850px;">
<div id="txt"></div>            </TD>
        </TR>
        <TR>
            <TD colspan="2" class="WelcomeNoteSubTitle" align="left"><B>Farmers Buddy:Chat &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </B></TD>
            <td colspan="3" align="right" class="WelcomeNoteSubTitle"><b>
                                        
                                        Welcome, <%=username%></b><a id="logout" href="signout.jsp"><img src="Sample_files/logout.png" alt="logout" /></a> </td>
        </TR>
         
        
         <TR>
            <TD colspan="2" class="BasicFont" align="left"><img src="Sample_files/chat_icon.jpg" alt="chat_ico" width="107" height="91" /></TD>
            <TD width="472" align="left" valign="middle" bgcolor="f8f8fa" class="BlueMsgWriting">Farmers Buddy also provides its users with the facility of public chatting. The agricultural officers can also join the chat room and thus solve the problems and queries of the farmers , agricultural officers and other users like the general public. It is a useful FB service.</TD>
            <TD width="210" align="left"  class="BasicFont"> Search: <br />
              <input class="BasicFont" type="text" id="searchTerm" name="searchTerm" onkeypress="return noenter()" />
              &nbsp;<a href="javascript:var i=DoSearch()"><img src="./Sample_files/SearchGoButton.gif" alt="Search" border="0" /></a></TD>
         </TR>
         <TR>
            <TD colspan="4" height="15" align="left" class="SmallFont">&nbsp;</TD>
        </TR>
        <TR valign="top">
            <TD width="164" height="370" valign="top">
                <table width="100&percnt;" cellpadding="0" cellspacing="0" border="0">
                                            <tbody>
                                              <tr valign="top">
                                                <td align="left" class="GrayWriting"><div id="dvTemplateList" style="height:250px; width:162px; overflow:auto;border:1px; border-color:#BBBBBB; border-style:solid;">
                                                    <table>
                                                      <tbody>
                                                        <tr>
                                                          <td width="152" bordercolor="0" id="link1" class="BlueBasicFont" onmouseover="SetDescription(&#39;&nbsp;Edit and update your profile information&#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);" ><a id="slink1" onmouseover="SetDescription(&#39;&nbsp;Edit and update your profile information&#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"   href="myprofile.jsp" class="BlueBasicFont">My  Profile</a></td>
                                                        </tr>
                                                      </tbody>
                                                    </table>
                                                  <table width="160">
                                                      <tbody>
                                                        <tr>
                                                          <td width="152" class="BlueBasicFontNoAlign" id="link2" onmouseover="SetDescription(&#39;&nbsp;Enter your location and get the soil details, the type of crops grown and fertilizers to be used&#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"><a id="slink2" onmouseover="SetDescription(&#39;&nbsp;Enter your location and get the soil details, the type of crops grown and fertilizers to be used&#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"   href="soilana.jsp" class="BlueBasicFont">Soil Analysis</a></td>
                                                        </tr>
                                                      </tbody>
                                                  </table>
                                                  <table>
                                                    <tbody>
                                                      <tr>
                                                          <td width="152" class="BlueBasicFontNoAlign" id="link4" onmouseover="SetDescription(&#39;&nbsp;Post query either to the genral public or directed to an officer&#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"><a id="slink3" onmouseover="SetDescription(&#39;&nbsp;Post query either to the genral public or directed to an officer&#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"   href="myprofile.jsp" class="BlueBasicFont">Online Query</a></td>
                                                      </tr>
                                                    </tbody>
                                                  </table>
                                                  <table>
                                                    <tbody>
                                                      <tr>
                                                          <td width="152" class="BlueBasicFontNoAlign" id="link5" onmouseover="SetDescription(&#39;&nbsp;Go for the Agricultural Officer help through trainings&#39;);changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"><a id="slink5" onmouseover="SetDescription(&#39;&nbsp;Go for the Agricultural Officer help through trainings&#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"  href="training.jsp" class="BlueBasicFont">Trainings</a></td>
                                                      </tr>
                                                    </tbody>
                                                  </table>
                                                  <table>
                                                    <tbody>
                                                      <tr>
                                                          <td width="152" class="BlueBasicFontNoAlign" id="link6" onmouseover="SetDescription(&#39;&nbsp;Post your problems,get responses and have disscussions&#39;);changeBGC1(this.id); " onmouseout="changeBGC2(this.id);" ><a id="slink6" onmouseover="SetDescription(&#39;&nbsp;Post your problems,get responses and have disscussions&#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"   href="forum.jsp" class="BlueBasicFont">Forum</a></td>
                                                      </tr>
                                                    </tbody>
                                                  </table>
                                                  <table>
                                                    <tbody>
                                                      <tr>
                                                          <td width="152" class="BlueBasicFontNoAlign" id="link7" onmouseover="SetDescription(&#39;&nbsp;Use FB email services.#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"><a id="slink7" onmouseover="SetDescription(&#39;&nbsp;Use FB email services&#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"   href="mail.jsp" class="BlueBasicFont">Mail</a></td>
                                                      </tr>
                                                    </tbody>
                                                  </table>
                                                  <table>
                                                    <tbody>
                                                      <tr>
                                                          <td width="154" class="BlueBasicFontNoAlign" id="link10" onmouseover="SetDescription(&#39;&nbsp;Check for the new agricultural tools and solutions&#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"><a id="slink10" onmouseover="SetDescription(&#39;&nbsp;Check for the new agricultural tools and solutions&#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"   href="myprofile.jsp" class="BlueBasicFont">Tools And Solutions</a></td>
                                                      </tr>
                                                    </tbody>
                                                  </table>
                                                  <table>
                                                    <tbody>
                                                      <tr>
                                                          <td width="152" class="BlueBasicFontNoAlign" id="link13" onmouseover="SetDescription(&#39;&nbsp;Know the weather of your city by using the FB weather forecast service&#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"><a id="slink13" onmouseover="SetDescription(&#39;&nbsp;Know the weather of your city by using the FB weather forecast service&#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"   href="weather.jsp" class="BlueBasicFont">Weather Forecast</a></td>
                                                      </tr>
                                                    </tbody>
                                                  </table>
                                                  <table>
                                                    <tbody>
                                                      <tr>
                                                          <td width="152" class="BlueBasicFontNoAlign" id="link14" onmouseover="SetDescription(&#39;&nbsp;Check this bulletin for agricultural news and happenings&#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"><a id="slink14" onmouseover="SetDescription(&#39;&nbsp;Check this bulletin for agricultural news and happenings&#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"   href="myprofile.jsp" class="BlueBasicFont">Bulletin Board</a> </td>
                                                      </tr>
                                                    </tbody>
                                                  </table>
                                                  <table>
                                                    <tbody>
                                                      <tr></tr>
                                                    </tbody>
                                                  </table>
                                                  <table>
                                                    <tbody>
                                                      <tr></tr>
                                                    </tbody>
                                                  </table>
                                                  <table>
                                                    <tbody>
                                                      <tr></tr>
                                                    </tbody>
                                                  </table>
                                                  <table>
                                                    <tbody>
                                                      <tr></tr>
                                                    </tbody>
                                                  </table>
                                                  <table>
                                                    <tbody>
                                                      <tr></tr>
                                                    </tbody>
                                                  </table>
                                                  <table>
                                                    <tbody>
                                                      <tr></tr>
                                                    </tbody>
                                                  </table>
                                                </div></td>
                                              </tr>
                                              <tr>
                                                <td style="height:7px;" class="SmallFont" align="left">&nbsp;</td>
                                              </tr>
                                              <tr>
                                                <td class="GrayWriting" align="left"><u><b>Description:</b></u></td>
                                              </tr>
                                              <tr>
                                                <td style="height:7px;" class="SmallFont" align="left">&nbsp;</td>
                                              </tr>
                                              <tr>
                                                <td align="left" class="GrayWriting"><div id="dvDescription" style="height:46px; width:158px; overflow:auto;border:1px; border-color:#BBBBBB; border-style:solid;">&nbsp;A form for choosing a christmas gift</div></td>
                                              </tr>
                                            </tbody>
                                        </table>            </TD>
            <TD width="1">&nbsp;</TD>
            <TD colspan="2" align="center" valign="top">
                <DIV id="htmlContent" style="position: relative; height: 370px; width: 670px; overflow-x: auto; overflow-y: auto; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-style: initial; border-color: initial; border-top-color: rgb(187, 187, 187); border-right-color: rgb(187, 187, 187); border-bottom-color: rgb(187, 187, 187); border-left-color: rgb(187, 187, 187); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; visibility: visible; ">
                  <iframe src="chat.jsp?username=<%=username%>" width="650" height="350"></iframe>
                </DIV></TD>
        </TR>
    </TBODY></TABLE>
</DIV></TD>
</TR>
</TBODY></TABLE>



                            </TD>
</TR>
                        <TR>
                          <TD colspan="3">                        </TR>
                        
                        <!-- gray line after footer -->
                        <TR>
                          <TD colspan="3">                        </TR>
                        <TR>
                           <TD colspan="3" valign="top" class="LearnMoreRow" align="left">                            </TD>
</TR>
                        
                         
        
                        <!-- footer -->
                        <TR>
                           <TD colspan="3" id="tdFooterLinks1">
                               <TABLE width="910" cellpadding="0" cellspacing="0" border="0" dir="ltr">
                                   <TBODY><TR>
                                      
                                      <TD width="505" class="MenuFooterSite" align="right">Copyright &copy; 2010 Farmers Buddy All rights reserved</TD>
                                    </TR>
                               </TBODY></TABLE>                            </TD>
</TR>
                        <!-- gray line after footer -->
                        <TR>
                          <TD colspan="3" style="height:30px;">                        </TR>
                        <TR>
                          <TD colspan="3" class="BottomShadow1">                        </TR>
                        <TR>
                          <TD colspan="3" class="BottomShadow2">                        </TR>
                  </TBODY></TABLE>               </TD>
              <TD class="SideShadowRight">            </TR>
        </TBODY></TABLE>
</DIV>
    

   
    
          



</BODY></HTML>