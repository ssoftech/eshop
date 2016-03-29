<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/style_login.css" rel='stylesheet' type='text/css'/>
<script type="text/javascript">

function validateEmail()
{
	var email=document.getElementById("email").value;
	var filter=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	var status=false;
   if(email==null || email=="" || !filter.test(email)){  
	   document.getElementById("emailloc").innerHTML=  
	   "<img src='images/Wrong_mark.png'/>";  
	   status=false;
	   }
	   else{  
	   document.getElementById("emailloc").innerHTML="<img src='images/Tick_mark.png'/>";  
	   status=true;
	   } 
 }
 
 function validatePassword()
 {
	 var password=document.getElementById("pass").value;
		var status=false;
		if(password==null||password==""|| password.length<7)
			{
			document.getElementById("passloc").innerHTML="<img src='images/Wrong_mark.png'/>";
			status=false;
			}
		else
			{
			document.getElementById("passloc").innerHTML="<img src='images/Tick_mark.png'/>";
			status=true;
			} 
 }
 
 function validateEmployeeId()
 {
	 var employeeid=document.getElementById("employeeid").value;

		var status=false;
		if(employeeid==null||employeeid=="")
			{
			document.getElementById("employeeidloc").innerHTML="<img src='images/Wrong_mark.png'/>";
			status=false;
			}
		else
			{
			document.getElementById("employeeidloc").innerHTML="<img src='images/Tick_mark.png'/>";
			status=true;
			}
}

function gotoLogin()
{
	 var employeeid=document.getElementById("employeeid").value;
	 var password=document.getElementById("pass").value;
	 var email=document.getElementById("email").value;
	window.location="Login_Retailer?email="+email+"&password="+password+"&empid="+employeeid+"";
}

function gotoRegister()

{
	window.location="Register_Retailer.jsp"
}

function status()
{
	
if("${param.Message}")
	{
	alert("${param.Message}");
	}
}

</script>
</head>
<body class="login" onload="status()">
<form method="post" action="Login_Retailer">
<table  style="width:440px;"class="loginAd" >
<tr><th class="resp-tab-item" colspan="2" style="font-size: 30px; text-shadow: 0px 0px 3px white;">Retailer Login</th></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr><td style="padding-left:14%"><input type="text" name="email" id="email" placeholder="Enter Your Email Id" size="30" onblur="return validateEmail()"></td><td id="emailloc"style="width: 10px; height: 6px;"></td></tr>
<tr><td style="padding-left: 14%"><input type="password" name="password" id="pass" placeholder="Enter your Password" size="30" onblur="return validatePassword()"></td><td id="passloc"></td></tr>
<tr><td style="padding-left: 14%" ><input type="text" name="empid" id="employeeid" placeholder="Enter Your Retailer Id " size="30" onblur="return validateEmployeeId()" ></td><td id="employeeidloc"></td></tr>
<tr><td><input type="submit" id="Login" value="Login"  style="margin-left: 22px;font-family: monospace;"></td></tr>
<tr><td><input type="button" id="Register" value="Register Yourself" onclick="gotoRegister()" style="margin-top: -47px; margin-left: 242px; font-family: monospace;"></td></tr>
</table>
</form>
</body>
</html>