// JavaScript Document
function chkPass
{
	if(document.reg.getElementById("password").value==document.getElementById("cnfrm").value)
	
	{
	}
	else
	{
		document.reg.getElementById("label1").innerHTML="Passwords do not match";
	}
}