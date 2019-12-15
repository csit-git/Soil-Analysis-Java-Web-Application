<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%      
	
	session=request.getSession(false);
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
	
function change(val)
{
var cid=val;

var xmlhttp;
if (window.XMLHttpRequest)
  {
  // code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else if (window.ActiveXObject)
  {
  // code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
else
  {
  alert("Your browser does not support XMLHTTP!");
  }
xmlhttp.onreadystatechange=function()
{
if(xmlhttp.readyState==4)
  {
  document.getElementById("get").innerHTML=xmlhttp.responseText;
  }
}
xmlhttp.open("GET","weather1.jsp?id="+cid,true);
xmlhttp.send(null);
}


</SCRIPT>
 




<SCRIPT type="text/javascript">
function SetDescription(desc)
{
    // remove ' chars
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
                                        <TD width="105" align="left"><img src="Sample_files/images/label3_07.gif" alt="aboutus" width="105" height="43" border="0" /></TD>
                                        <TD width="115" align="left"><img src="Sample_files/images/label3_08.gif" alt="contactus" width="126" height="43" /></TD>
                                        
                                      </TR>
                          </TBODY></TABLE>                            </TD>
                            </TR>
                        <!-- menu -->
                        <tr class="MenuRow">
                    <td width="933" align="left" id="tdMainMenu1" ><iframe height="50" src ="http://www.nmce.com/top_test.jsp" width="933"></iframe></td>
                  </tr>
                  <tr>
                    <td colspan="2" align="right" ><select class="GrayWriting" id="lstLang" name="lstLang">
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
<style href>a {text-decoration: none} </style>
 
<TABLE width="100&percnt;" cellpadding="0" cellspacing="0" border="0" dir="ltr">
<TBODY><TR>
<TD width="933">
<DIV style="width:933px">
    <TABLE class="BasicTable" cellspacing="0" border="0">
        <TBODY><TR>
            <TD colspan="4" class="HSpace15" style="width:850px;">
<div id="txt"></div>            </TD>
        </TR>
        <TR>
            <TD colspan="2" class="WelcomeNoteSubTitle" align="left"><B>Farmers Buddy:Weather Forecasting &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </B></TD>
            <td colspan="3" align="right" class="WelcomeNoteSubTitle"><b>
                                        
                                        Welcome, <%=username%></b><a id="logout" href="signout.jsp"><img src="Sample_files/logout.png" alt="logout" /></a> </td>
        </TR>
         
        
         <TR>
            <TD colspan="2" class="BasicFont" align="left"><img src="Sample_files/weather symbol.jpg" alt="homeico" width="107" height="91" /></TD>
            <TD width="550" align="left" bgcolor="f8f8fa" class="BlueMsgWriting"><p>Weather is an important issue regarding farming in India. Farmers Buddy has proved its stone in letting its users gain knowledge regarding the weather of their region. This knowledge will further help the farmers to cultivate their crops accordingly. It covers around 200 cities of the country. </p>
              <p>Enjoy Farming!</p></TD>
            <TD width="210" align="left"  class="BasicFont"> Search: <br />
              <input class="BasicFont" type="text" id="searchTerm" name="searchTerm" onkeypress="return noenter()" />
              &nbsp;<a href="javascript:var i=DoSearch()"><img src="./Sample_files/SearchGoButton.gif" alt="Search" border="0" /></a> </TD>
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
                                                          <td width="152" class="BlueBasicFontNoAlign" id="link14" onmouseover="SetDescription(&#39;&nbsp;Check this bulletin for agricultural news and happenings&#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"><a id="slink14" onmouseover="SetDescription(&#39;&nbsp;Check this bulletin for agricultural news and happenings&#39;); changeBGC1(this.id); " onmouseout="changeBGC2(this.id);"   href="myprofile.jsp" class="BlueBasicFont">Bulletin Board</a> </td>
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
                                                <td align="left" class="GrayWriting"><div id="dvDescription" style="height:46px; width:158px; overflow:auto;border:1px; border-color:#BBBBBB; border-style:solid;"></div></td>
                                              </tr>
                                            </tbody>
                                        </table>            </TD>
            <TD width="1">&nbsp;</TD>
            <TD colspan="2" align="center" valign="top">
                <DIV id="htmlContent" style="position: relative; height: 370px; width: 760px; overflow-x: auto; overflow-y: auto; border-top-width: 1px; border-right-width: 1px; border-bottom-width: 1px; border-left-width: 1px; border-style: initial; border-color: initial; border-top-color: rgb(187, 187, 187); border-right-color: rgb(187, 187, 187); border-bottom-color: rgb(187, 187, 187); border-left-color: rgb(187, 187, 187); border-top-style: solid; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; visibility: visible; "><table width="758" height="368" border="1">
  <tr>
    <td valign="top" width="238"><label>
      <select name="city" id="city" onchange="change(this.value)">
        <option value="0">select Your nearest city</option>
        <option value="INXX0153">Agartala</option>
        <option value="INXX0203">Agra</option>
        <option value="INXX0001">Ahmadabad</option>
        <option value="INXX0183">Ahmednagar</option>
        <option value="INXX0200">Aizwal</option>
        <option value="INXX0002">Ajmer</option>
        <option value="INXX0160">Akola</option>
        <option value="INXX0003">Allahabad</option>
        <option value="INXX0004">Alleppey</option>
        <option value="INXX0005">Amer</option>
        <option value="INXX0006">Amravati</option>
        <option value="INXX0007">Amritsar</option>
        <option value="INXX0008">Anakapalle</option>
        <option value="INXX0174">Anantapur</option>
        <option value="INXX0009">Ara</option>
        <option value="INXX0010">Aruppukkottai</option>
        <option value="INXX0184">Aurangabad</option>
        <option value="INXX0162">Aurangabad Chikalthan Aerodrome</option>
        <option value="INXX0158">Balasore</option>
        <option value="INXX0012">Bangalore</option>
        <option value="INXX0013">Barddhaman</option>
        <option value="INXX0014">Basirhat</option>
        <option value="INXX0015">Batala</option>
        <option value="INXX0170">Belgaum/Sambra</option>
        <option value="INXX0016">Benares</option>
        <option value="INXX0017">Bhandara</option>
        <option value="INXX0018">Bhatkal</option>
        <option value="INXX0019">Bhatpara</option>
        <option value="INXX0020">Bhiwandi</option>
        <option value="INXX0022">Bhongir</option>
        <option value="INXX0023">Bhopal</option>
        <option value="INXX0024">Bhubhaneshwar</option>
        <option value="INXX0150">Bhuj-Rudramata</option>
        <option value="INXX0025">Bihar</option>
        <option value="INXX0141">Bikaner</option>
        <option value="INXX0026">Bombay</option>
        <option value="INXX0027">Bulandshahar</option>
        <option value="INXX0028">Calcutta</option>
        <option value="INXX0185">Chandigarh</option>
        <option value="INXX0029">Chavakkad</option>
        <option value="INXX0202">Chennai</option>
        <option value="INXX0030">Chhapra</option>
        <option value="INXX0173">Chitradurga</option>
        <option value="INXX0031">Chittoor</option>
        <option value="INXX0032">Cochin</option>
        <option value="INXX0177">Coimbatore/Peelamedu</option>
        <option value="INXX0178">Cuddalore</option>
        <option value="INXX0033">Cuttack</option>
        <option value="INXX0034">Daman</option>
        <option value="INXX0035">Daosa</option>
        <option value="INXX0036">Darjiling</option>
        <option value="INXX0037">Daund</option>
        <option value="INXX0140">Dehradun</option>
        <option value="INXX0038">Delhi</option>
        <option value="INXX0039">Dewas</option>
        <option value="INXX0143">Dibrugarh/Mohanbari</option>
        <option value="INXX0040">Dindigul</option>
        <option value="INXX0187">Dispur</option>
        <option value="INXX0041">Dod Ballapur</option>
        <option value="INXX0042">Duraha</option>
        <option value="INXX0043">Elamanchili</option>
        <option value="INXX0044">Etawah</option>
        <option value="INXX0045">Faizabad</option>
        <option value="INXX0046">Faridabad</option>
        <option value="INXX0047">Fatehpur</option>
        <option value="INXX0171">Gadag</option>
        <option value="INXX0048">Gandhinagar</option>
        <option value="INXX0049">Gangtok</option>
        <option value="INXX0147">Gauhati</option>
        <option value="INXX0050">Gaya</option>
        <option value="INXX0051">Ghaziabad</option>
        <option value="INXX0052">Ghazipur</option>
        <option value="INXX0169">Goa/Panjim</option>
        <option value="INXX0053">Godhra</option>
        <option value="INXX0188">Guwahati</option>
        <option value="INXX0146">Gwalior</option>
        <option value="INXX0054">Haora</option>
        <option value="INXX0055">Hisar</option>
        <option value="INXX0056">Hoshiarpur</option>
        <option value="INXX0057">Hyderabad</option>
        <option value="INXX0189">Imphal</option>
        <option value="INXX0058">Indore</option>
        <option value="INXX0190">Itanagar</option>
        <option value="INXX0151">Jabalpur</option>
        <option value="INXX0163">Jagdalpur</option>
        <option value="INXX0059">Jaipur</option>
        <option value="INXX0144">Jaisalmer</option>
        <option value="INXX0060">Jalandhar</option>
        <option value="INXX0156">Jamshedpur</option>
        <option value="INXX0061">Jatni</option>
        <option value="INXX0062">Jaunpur</option>
        <option value="INXX0063">Jharsuguda</option>
        <option value="INXX0145">Jodhpur</option>
        <option value="INXX0168">Kakinada</option>
        <option value="INXX0064">Kalimpang</option>
        <option value="INXX0065">Kalyan</option>
        <option value="INXX0066">Kamthi</option>
        <option value="INXX0067">Kanpur</option>
        <option value="INXX0068">Kasaragod</option>
        <option value="INXX0201">Kerala</option>
        <option value="INXX0069">Khadki</option>
        <option value="INXX0070">Khammam</option>
        <option value="INXX0071">Kharagpur</option>
        <option value="INXX0191">Kohima</option>
        <option value="INXX0072">Kolar</option>
        <option value="INXX0192">Kolhapur</option>
        <option value="INXX0073">Koregaon</option>
        <option value="INXX0176">Kozhikode</option>
        <option value="INXX0172">Kurnool</option>
        <option value="INXX0074">Lucknow</option>
        <option value="INXX0193">Ludhiana</option>
        <option value="INXX0152">M.O.Ranchi</option>
        <option value="INXX0167">Machilipatnam</option>
        <option value="INXX0075">Madras</option>
        <option value="INXX0076">Madurai</option>
        <option value="INXX0077">Mahbubnagar</option>
        <option value="INXX0078">Mahesana</option>
        <option value="INXX0079">Malegaon</option>
        <option value="INXX0080">Mandya</option>
        <option value="INXX0081">Mangalore</option>
        <option value="INXX0082">Medinipur</option>
        <option value="INXX0083">Meerut</option>
        <option value="INXX0084">Mhow</option>
        <option value="INXX0181">Minicopy</option>
        <option value="INXX0085">Mirzapur</option>
        <option value="INXX0086">Moga</option>
        <option value="INXX0087">Mumbai</option>
        <option value="INXX0088">Murud</option>
        <option value="INXX0089">Muzaffarnagar</option>
        <option value="INXX0090">Muzaffarpur</option>
        <option value="INXX0091">Nadiad</option>
        <option value="INXX0092">Nagercoil</option>
        <option value="INXX0093">Nagpur</option>
        <option value="INXX0194">Nasik</option>
        <option value="INXX0094">Nawabganj</option>
        <option value="INXX0095">Nellore</option>
        <option value="INXX0096">New Delhi</option>
        <option value="INXX0142">New Delhi/Safdarjang</option>
        <option value="INXX0097">Neyyattinkar</option>
        <option value="INXX0098">Nizamabad</option>
        <option value="INXX0099">Panvel</option>
        <option value="INXX0139">Patiala</option>
        <option value="INXX0100">Patna</option>
        <option value="INXX0155">Pendra Road</option>
        <option value="INXX0101">Pondicherry</option>
        <option value="INXX0164">Poona</option>
        <option value="INXX0179">Port Blair</option>
        <option value="INXX0102">Pune</option>
        <option value="INXX0103">Puri</option>
        <option value="INXX0104">Quilon</option>
        <option value="INXX0105">Rae Bareilly</option>
        <option value="INXX0106">Raigarh</option>
        <option value="INXX0107">Rajapalaiyam</option>
        <option value="INXX0154">Rajkot</option>
        <option value="INXX0165">Ratnagiri</option>
        <option value="INXX0108">Rohtak</option>
        <option value="INXX0109">Sambalpur</option>
        <option value="INXX0110">Sanwer</option>
        <option value="INXX0111">Saraipali</option>
        <option value="INXX0112">Satara</option>
        <option value="INXX0149">Satna</option>
        <option value="INXX0113">Sehore</option>
        <option value="INXX0114">Shertallai</option>
        <option value="INXX0196">Shillong</option>
        <option value="INXX0195">Shimla</option>
        <option value="INXX0166">Sholapur</option>
        <option value="INXX0115">Sitapur</option>
        <option value="INXX0116">Sivakasi</option>
        <option value="INXX0117">Solapur</option>
        <option value="INXX0118">Sonipat</option>
        <option value="INXX0119">Srikakulam</option>
        <option value="INXX0197">Srinagar</option>
        <option value="INXX0157">Surat</option>
        <option value="INXX0120">Tambaram</option>
        <option value="INXX0148">Tezpur</option>
        <option value="INXX0121">Thana</option>
        <option value="INXX0198">Thiruvan</option>
        <option value="INXX0180">Tiruchchirapalli</option>
        <option value="INXX0122">Tirupati</option>
        <option value="INXX0123">Tiruvottiyur</option>
        <option value="INXX0124">Tonk</option>
        <option value="INXX0125">Trivandrum</option>
        <option value="INXX0126">Tumkur</option>
        <option value="INXX0127">Udupi</option>
        <option value="INXX0128">Ulhasnagar</option>
        <option value="INXX0129">Unnao</option>
        <option value="INXX0130">Vadodara</option>
        <option value="INXX0199">Varanasi</option>
        <option value="INXX0131">Vellore</option>
        <option value="INXX0159">Veraval</option>
        <option value="INXX0132">Vidisha</option>
        <option value="INXX0133">Virudunagar</option>
        <option value="INXX0134">Vishakhapatnam</option>
        <option value="INXX0135">Vizianagaram</option>
        <option value="INXX0136">Warangal</option>
        <option value="INXX0137">Wardha</option>
        <option value="INXX0138">Zahirabad</option>
        <option value="INXX0205">Kovur</option>
        <option value="INXX0206">Bankura</option>
        <option value="INXX0212">Honavar</option>
        <option value="INXX0220">Bagdogra</option>
        <option value="INXX0221">Bhavnagar</option>
        <option value="INXX0222">Jammu</option>
        <option value="INXX0223">Jamnagar</option>
        <option value="INXX0224">Jorhat</option>
        <option value="INXX0225">Khajuraho</option>
        <option value="INXX0227">Porbandar</option>
        <option value="INXX0228">Raipur</option>
        <option value="INXX0229">Udaipur</option>
      </select>
    </label></td>
    <td height="352" width="492"><div id="get" ></div></td>
  </tr>
</table>
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
                                     <TD width="505" class="MenuFooterSite" align="right">Copyright &copy; 2010 Farmers Buddy  All rights reserved</TD>
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