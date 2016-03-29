<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/style_register.css" rel='stylesheet' type='text/css' />
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<script type="text/javascript">
//AUTOMATICALLY APPEAR +91
$(document).ready(function(){
   
    $("#phoneno").keyup(function(){

    	 if( this.value.indexOf("+91-") != 0 )
      this.value="+91-"+this.value; 
    	
        
    });
});

function validateFirstName()
{
	
    var fname=document.getElementById("uname").value;
    var status=false;
   
   
   if(fname==null||fname==""){  
   document.getElementById("unameloc").innerHTML=  
   "<img src='images/Wrong_mark.png'/>";  
   status=false;
   }
   else{  
   document.getElementById("unameloc").innerHTML="<img src='images/Tick_mark.png'/>";  
   status=true;
   }  
   
  
}

function validateLastName()
{
	var lname=document.getElementById("lname").value;
	var status=false;
   if(lname==null||lname==""){  
	   document.getElementById("lnameloc").innerHTML=  
	   "<img src='images/Wrong_mark.png'/>";  
	   status=false;
	   }
	   else{  
	   document.getElementById("lnameloc").innerHTML="<img src='images/Tick_mark.png'/>";  
	   status=true;
	   } 
     
} 

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

function validateCnfPassword()
{
	var password=document.getElementById("pass").value
	var cnfpassword=document.getElementById("cnfpass").value;
	var status=false;
	if(cnfpassword==null||cnfpassword==""|| password!=cnfpassword)
		{
		document.getElementById("cnfpassloc").innerHTML="<img src='images/Wrong_mark.png'/>";
		status=false;
		}
	else
		{
		document.getElementById("cnfpassloc").innerHTML="<img src='images/Tick_mark.png'/>";
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

function validateDateOfBirth()
{
	var dateofbirth=document.getElementById("dateofbirth").value;
	var status=false;
	if(dateofbirth==null||dateofbirth=="")
		{
		document.getElementById("dateofbirthloc").innerHTML="<img src='images/Wrong_mark.png'/>";
		status=false;
		}
	else
		{
		document.getElementById("dateofbirthloc").innerHTML="<img src='images/Tick_mark.png'/>";
		status=true;
		}
}


function validatePhoneNo()
{
	var phoneno=document.getElementById("phoneno").value
	if(phoneno==null||phoneno==""||(phoneno.length<14 || phoneno.length>14))
		{
		document.getElementById("phoneloc").innerHTML="<img src='images/Wrong_mark.png'/>";
		status=false;
		}
	else
		{
		document.getElementById("phoneloc").innerHTML="<img src='images/Tick_mark.png'/>";
		status=true;
		}
}

function validateImage()
{
	var image=document.getElementById("image").value;
	var status=false;
	if(image==null||image=="")
		{
		document.getElementById("imageloc").innerHTML="<img src='images/Wrong_mark.png'/>";
		status=false;
		}
	else
		{
		document.getElementById("imageloc").innerHTML="<img src='images/Tick_mark.png'/>";
		status=true;
		}
}
//jquerry for auto slash
function addSlashes(input) {
    var v = input.value;
    if (v.match(/^\d{2}$/) !== null) {
        input.value = v + '/';
    } else if (v.match(/^\d{2}\/\d{2}$/) !== null) {
        input.value = v + '/';
    }
}


//alert message from servlet
function showmessage()
{
	
if("${param.Message}")
	{
	alert("${param.Message}")
	}
}

</script>

</head>
<body onload="showmessage()">
	<h1 class="header">Register here</h1>
	
	<form  action="Register_Admin" method="post" enctype="multipart/form-data">
	<table align="center" 
		style="width: 500px; border-style: inset; border-color: activeborder;">
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>

		<tr>
			<td class="a">Firstname</td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>

		<tr>
			<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"
				name="uname" id="uname"  placeholder="my first name" size="50" 
				style="height: 30px;" onblur="return validateFirstName()"></td>
			<td id="unameloc"></td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td class="a">LastName</td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"
				name="lname" id="lname" placeholder="enter your last name" size="50"
				style="height: 30px" onblur="return validateLastName()"></td>
				<td id="lnameloc"></td>
			</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td class="a">Employee Id</td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"
				name="employeeid" id="employeeid" placeholder="enter your employee id" size="50"
				style="height: 30px" onblur="return validateEmployeeId()"></td>
			<td id="employeeidloc"></td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td class="a">Phone No</td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"
				name="phoneno" id="phoneno"
				placeholder="enter your phone number "
				size="50" style="height: 30px" onblur="return validatePhoneNo()"></td>
			<td id="phoneloc"></td>
		</tr>
		
		<tr>
			<td class="a">Email</td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"
				name="email" id="email"
				placeholder="enter your valid email id "
				size="50" style="height: 30px" onblur="return validateEmail()"></td>
			<td id="emailloc"></td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td class="a">Password</td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="password"
				name="pass" id="pass" placeholder="enter your password(should contain minimum 7 characters) " size="50"
				style="height: 30px"onblur="return validatePassword()"></td>
			<td id="passloc"></td>
		</tr>
		<tr>
			<td class="a">Confirn Password</td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="password"
				name="cnfpass" id="cnfpass" placeholder="confirm your password" size="50"
				style="height: 30px" onblur="return validateCnfPassword()"></td>
			<td id="cnfpassloc"></td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td class="a">Date of Birth</td>
	
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"
				name="dateofbirth" id="dateofbirth" placeholder="enter your date of birth"
				size="50" style="height: 30px" onblur="return validateDateOfBirth()" onkeyup="addSlashes(this)"></td>
			<td id="dateofbirthloc"></td>
		</tr>
		<tr></tr>
		<tr></tr>
		<tr>
			<td class="a">Choose your profile pic</td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="file"
				name="image" id="image" placeholder="Choose your profile pic"
				size="50" style="height: 30px" onblur="return validateImage()"></td>
			<td id="imageloc"></td>
		</tr>
		<tr>
			<td colspan="2"></td>
		</tr>
		<tr>
			<td align="center"><input type="submit"  value="Register"></td>
		</tr>



	</table>
	</form>

</body>
</html>