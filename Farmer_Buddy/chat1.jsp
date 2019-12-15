<% String username=request.getParameter("username"); %>
<html>
<head>
<script language="JavaScript" type="text/javascript">
function fetch()
{
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
  document.getElementById("msg").innerHTML=xmlhttp.responseText;
  }
}
xmlhttp.open("GET","chat4.jsp?username=<%=username%>",true);
xmlhttp.send(null);
setTimeout("fetch()", 50);  
}

function gfetch()
{
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
  document.getElementById("chatRoom").innerHTML=xmlhttp.responseText;
  }
}
xmlhttp.open("GET","chat5.jsp?username=<%=username%>",true);
xmlhttp.send(null);
setTimeout("gfetch()", 50);  
}
</script>

</head>
<body onLoad="fetch(),gfetch();">
<table width="370" height="200" border="1" align="left">
 <tr><td width="450" height="56" align="center" bgcolor="#00CCFF"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+2"><b>Messages</b></font></td>
 <td width="204" align="center" bgcolor="#00CCFF"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+2"><b>Chat Room</b></font></td>
 </tr>
  <tr>
    <td height="214" align="left" valign="top"><label>
      <div id="msg" align=""></div></label></td>
    <td align="left" valign="top"><label>
    <div id="chatRoom"></div>
    </label></td>
  </tr>
  
  <form id="form1" name="form1" method="post" action="chat2.jsp?username=<%=username%>">
  <tr>
    <td height="39" colspan="2">
      <label>
      <textarea name="send" id="send" cols="73" rows="2"></textarea>
      </label>    </td>
    </tr>
  <tr>
    <td width="450" height="29"><label>
      <input type="submit" name="submit" id="submit" value="  Send  " />
    </label></td>
    <td width="204"><a href="chat3.jsp?username=<%=username%>" />Logout</a> </td>
  </form>
    


</table>

</body>
</html>