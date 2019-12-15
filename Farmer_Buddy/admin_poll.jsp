<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<%	session=request.getSession(false);
    String username=(String)session.getAttribute("id");
	if(username==null)
	{
	 response.sendRedirect("Login.jsp");
	} 
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><META http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <TITLE>Farmers Buddy</TITLE>
           <LINK href="./Sample_files/cssWeb.css" rel="StyleSheet" type="text/css">
     
     
      <link rel="SHORTCUT ICON" href="FB_Files/New Icon.ico">
    
<META name="description" content="Farmers Buddy is a comprehensive agricultural solution which aims at better agricultural practices in the country. ">
<META name="keywords" content="soil analysis, agricultural training, weather forecast, online forum for farmers, agricultural news,
agricultural solutions.">


<SCRIPT type="text/javascript">

// set the description of the service on the page
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
</HEAD><BODY class="MainBGColor2" onload="startTime()">
    <DIV>
        <TABLE width="1034" cellpadding="0" cellspacing="0" class="MasterGeneralTable">
      <TBODY><TR valign="top">
                <TD width="1027">
        <TD width="10" class="SideShadowRight">            </TR>
            <!-- page start -->
             <TR valign="top">
              <TD align="center" class="MainTd"><table border="0" cellspacing="0" cellpadding="0" dir="ltr">
                <!-- logo -->
                <tbody>
                  <tr class="LogoRow">
                    <td colspan="3" align="left" class="LogoRow"><table cellspacing="0" cellpadding="0" width="933">
                        <tbody>
                          <tr>
                            <td colspan="8" align="left"><img src="Sample_files/images/label3_01.gif" alt="logo1" width="933" height="120" /></td>
                          </tr>
                          <tr>
                            <td width="281" align="left"><img src="Sample_files/images/label3_02.gif" alt="logo2" width="281" height="43" /></td>
                            <td width="102" align="left"><a href="Sample.jsp"><img src="Sample_files/images/label3_03.gif" alt="home" width="102" height="43" border="0" /></a></td>
                            <td width="108" align="left"><img src="Sample_files/images/label3_04.gif" alt="agrib" width="108" height="43" /></td>
                            <td width="104" align="left"><img src="Sample_files/images/label3_05.gif" alt="majorcrops" width="104" height="43" /></td>
                            <td width="107" align="left"><img src="Sample_files/images/label3_06.gif" alt="cropmarket" width="107" height="43" /></td>
                            <td width="105" align="left"><img src="Sample_files/images/label3_07.gif" alt="aboutus" width="105" height="43" border="0" /></td>
                            <td width="126" align="left"><img src="Sample_files/images/label3_08.gif" alt="contactus" width="126" height="43" /></td>
                            <td width="4" align="left">&nbsp;</td>
                          </tr>
                        </tbody>
                    </table></td>
                  </tr>
                  <!-- menu -->
                  <tr class="MenuRow">
                    <td width="933" height="35" align="center" bgcolor="#009FFF" id="tdMainMenu1"  ><font color="#FFFFFF" size="+2"><b>Administator</b></font></td>
                  </tr>
                  <tr>
                    <td align="right" ><select class="GrayWriting" id="lstLang" name="lstLang">
                        <option value="--">Language</option>
                        <option>English</option>
                        <option>Hindi</option>
                    </select></td>
                    
                  </tr>
                  <!-- gray line under menu -->
                  <tr>
                    <td colspan="3" class="MenuUnderline"></td>
                  </tr>
                  <!-- white space after menu -->
                                    <!-- main content -->
                  <tr bgcolor="WHITE">
                    <td colspan="3" valign="top">	
                    <script type="text/javascript" language="javascript">
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


              </script>
                        <table width="100&percnt;" cellpadding="0" cellspacing="0" border="0" dir="ltr">
                          <tbody>
                            <tr>
                              <td><div style="width:933px">
                                  <table class="BasicTable" cellspacing="0" border="0" >
                                    <tbody>
                                      
                                      <tr>
                                        <td colspan="2" class="WelcomeNoteSubTitle" align="left"><b>Farmers Buddy: Create Poll&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></td>
                                        <td colspan="2" align="right" class="WelcomeNoteSubTitle"><b>
                                        
                                        Welcome, <%=username%></b><a id="logout" href="signout.jsp"><img src="Sample_files/logout.png" alt="logout" /></a> </td>
                                      </tr>
                                      <tr>
                                        <td colspan="2" class="BasicFont" align="left">&nbsp;</td>
                                        <td width="542" align="left"  class="BasicFont">&nbsp;</td>
                          <td width="160" align="right"  class="BasicFont"> Search: <br />
                                            <input class="BasicFont" size="20px" type="text" id="searchTerm" name="searchTerm" />
                                          &nbsp;</td>
                                      </tr>
                                      <tr>
                                        <td colspan="4" height="15" align="left" class="SmallFont">&nbsp;</td>
                                      </tr>
                                      <tr valign="top">
                                        <td width="189" height="370" valign="top"><table width="100&percnt;" cellpadding="0" cellspacing="0" border="0">
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
                                                          <td width="152" class="BlueBasicFontNoAlign" id="link7" onmouseover="SetDescription(&#39;&nbsp;Use FB email services.#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"><a id="slink7" onmouseover="SetDescription(&#39;&nbsp;Use FB email services.&#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"   href="mail.jsp" class="BlueBasicFont">Mail</a></td>
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
                                                        <td width="152" class="BlueBasicFontNoAlign" id="link14" onmouseover="SetDescription(' Check this bulletin for agricultural news and happenings'); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"><a id="slink14" onmouseover="SetDescription(' Check this bulletin for agricultural news and happenings'); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"   href="myprofile.jsp" class="BlueBasicFont">Bulletin Board</a> </td>
                                                      </tr>
                                                    </tbody>
                                                  </table>
                                                  <table>
                                                    <tbody>
                                                      <tr>
                                                        <td width="152" class="BlueBasicFontNoAlign" id="link14" onmouseover="SetDescription(' Admin creates new polls using this link'); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"><a id="slink14" onmouseover="SetDescription(' Admin creates new polls using this link'); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"   href="admin_poll.jsp" class="BlueBasicFont">Create Poll</a> </td>
                                                      </tr>
                                                    </tbody>
                                                  </table>
                                                  <table>
                                                    <tbody>
                                                      <tr>
                                                        <td width="152" class="BlueBasicFontNoAlign" id="link14" onmouseover="SetDescription(' Admin uploads training data using this link'); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"><a id="slink14" onmouseover="SetDescription(' Admin uploads training data using this link'); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"   href="myprofile.jsp" class="BlueBasicFont">Upload Training Data</a> </td>
                                                      </tr>
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
                                        </table></td>
                                        <td width="34">&nbsp;</td>
                                        <td colspan="2" align="left" valign="top"><table width="722" height="452" border="1" align="center">
                                          <tr>
                                          <script type="text/javascript">
<!--
function checkday(){
var currentTime = new Date()

var sday=document.form1.day.value;
var day = currentTime.getDate();
var smonth=document.form1.month.value;
var syear=document.form1.year.value;
var year = currentTime.getFullYear()

if(syear<year)
{alert("give present or future year");}
var month = currentTime.getMonth() + 1;
if(syear<year && smonth<month)
{alert("give present or future month");}
if(syear<=year && smonth<=month && sday<day)
{alert("give the day after present date");}

 
}
function checkmon(){
var currentTime = new Date()
var smonth=document.form1.month.value;

var syear=document.form1.year.value;
var year = currentTime.getFullYear()
if(syear<year)
{alert("give present or future year");}
var month = currentTime.getMonth() + 1;

if(syear<=year && smonth<month)
{alert("give present or future month");}

}
function checkyr(){
var currentTime = new Date()
var syear=document.form1.year.value;
var year = currentTime.getFullYear()

if(syear<year)
{alert("give present or future year");}

}
//-->
</script>
                                            <td valign="top"><form id="form1" name="form1" method="get" action="a.jsp">
<table width="713" border="1">
<tr><td colspan="2" align="center" bgcolor="#007FFF"><font color="#FFFFFF" size="+2"><b>Create Poll</b></font></td></tr>
  <tr>
    <td width="200" bgcolor="#007FFF" ><font color="#FFFFFF" size="+1"><b>Question for the poll</b></font></td>
    <td width="497">
      <label></label>    <label>
      <input type="text" name="ques" id="ques" width="300"/>
      </label></td>
  </tr>
  <tr>
    <td bgcolor="#007FFF" ><font color="#FFFFFF" size="+1"><b>option 1</b></font></td>
    <td><label>
      <input type="text" name="opt1" id="opt1" />
    </label></td>
  </tr>
  <tr>
    <td bgcolor="#007FFF" ><font color="#FFFFFF" size="+1"><b>option 2</b></font></td>
    <td><label>
      <input type="text" name="opt2" id="opt2" />
    </label></td>
  </tr>
  <tr>
    <td bgcolor="#007FFF" ><font color="#FFFFFF" size="+1"><b>option 3 </b></font></td>
    <td><label>
      <input type="text" name="opt3" id="opt3" />
    </label></td>
  </tr>
  <tr>
    <td bgcolor="#007FFF" ><font color="#FFFFFF" size="+1"><b>date of expire</b></font></td>
    <td><label></label>
      
      <p>
        
          
           year
         <label>
           <select name="year" id="year" onchange="checkyr()">
             <option value="0">year</option>
             <option value="2009">2009</option>
             <option value="2010">2010</option>
             <option value="2011">2011</option>
           </select>
           </label>
           month
           <label>
           <select name="month" id="month" onchange="checkmon()">
             <option value="00">month</option>
             <option value="01">Jan</option>
             <option value="02">Feb</option>
             <option value="03">Mar</option>
             <option value="04">Apl</option>
             <option value="05">May</option>
             <option value="06">Jun</option>
             <option value="07">Jul</option>
             <option value="08">Aug</option>
             <option value="09">Sept</option>
             <option value="10">Oct</option>
             <option value="11">Nov</option>
             <option value="12">Dec</option>
           </select>
           </label>
          
         day
  
          <label>
          <select name="day" id="day" onchange="checkday()">
            <option value="0">day</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="29">28</option>
            <option value="30">30</option>
            <option value="31">31</option>
          </select>
          </label>
           <br />
        <label>
          
        <br />
      <label></label></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="button" id="button" value="create"  /></td>
  </tr>
</table>
</form></td>
                                          </tr>
                                        </table></td>
                                      </tr>
                                    </tbody>
                                  </table>
                              </div></td>
                            </tr>
                          </tbody>
                        </table>
                      
                    </td>
                  </tr>
                  <tr>
                    <td colspan="3"></td>
                  </tr>
                  <!-- gray line after footer -->
                  <tr>
                    <td colspan="3"></td>
                  </tr>
                  <tr>
                    <td colspan="3" valign="top" class="LearnMoreRow" align="left"></td>
                  </tr>
                  <!-- footer -->
                  <tr>
                    <td colspan="3" id="tdFooterLinks1"><table width="910" cellpadding="0" cellspacing="0" border="0" dir="ltr">
                        <tbody>
                          <tr>
                            
                            <td width="505" class="MenuFooterSite" align="right">Copyright &copy; 2010-2050 FarmersBuddy.com All rights reserved</td>
                          </tr>
                        </tbody>
                    </table></td>
                  </tr>
                  <!-- gray line after footer -->
                  <tr>
                    <td height="2" colspan="3" style="height:30px;"></td>
                  </tr>
                  <tr>
                    <td colspan="3" class="BottomShadow1"></td>
                  </tr>
                  <tr>
                    <td colspan="3" class="BottomShadow2"></td>
                  </tr>
                </tbody>
              </table></TD>
              <TD class="SideShadowRight">            </TR>
        </TBODY></TABLE>
</DIV>
    

   

</BODY></HTML>