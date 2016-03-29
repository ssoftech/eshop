<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/style_loginotp.css" rel='stylesheet' type='text/css'/>



<% String EmployeeId=request.getParameter("EmployeeId"); 
 String  email_id=request.getParameter("Email_id");
 int  count=Integer.parseInt(request.getParameter("count"));
%>
<script type="text/javascript">

function checkCount()
{
	var email=document.getElementById("email").value;
}

</script>

</head>
<body onload="checkCount()">
<form action="Otp_Verify" method="post">
<table  style="width:440px;"class="login" >
<tr><th class="resp-tab-item">OTP!</th></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr><td> </td></tr>
<tr><td style="padding-left: 14%"><input type="text" name="Otp" id="Otp" placeholder="Enter OTP sent to your registered email" size="30" onblur="return validatePassword()"></td><td id="passloc"></td></tr>
<tr><td><input type="hidden" name="empid" value="<%=EmployeeId%>">
<input type="hidden" name="email" id="email" value="<%=email_id%>">
<input type="hidden" name="count" value="<%=count%>"></td></tr>
<tr><td align="center"><input type="submit" id="Login" value="Verify"/></td><td></td></tr>
</table>
 
</form>
</body>
</html>