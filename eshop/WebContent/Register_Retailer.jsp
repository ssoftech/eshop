<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/style_register.css" rel='stylesheet' type='text/css' />
<title>Retailer Registration</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<script type="text/javascript">

//AUTOMATICALLY APPEAR +91
$(document).ready(function(){
   
    $("#phoneno").keyup(function(){

    	 if( this.value.indexOf("+91-") != 0 )
      this.value="+91-"+this.value; 
    	
        
    });
});


  function validateFirstName() {

    var fname = document.getElementById("uname").value;
    var status = false;

    if (fname == null || fname == "") {
      document.getElementById("unameloc").innerHTML = "<img src='images/Wrong_mark.png'/>";
      status = false;
    } else {
      document.getElementById("unameloc").innerHTML = "<img src='images/Tick_mark.png'/>";
      status = true;
    }

  }

  function validateLastName() {
    var lname = document.getElementById("lname").value;
    var status = false;
    if (lname == null || lname == "") {
      document.getElementById("lnameloc").innerHTML = "<img src='images/Wrong_mark.png'/>";
      status = false;
    } else {
      document.getElementById("lnameloc").innerHTML = "<img src='images/Tick_mark.png'/>";
      status = true;
    }

  }

  function validateEmail() {
    var email = document.getElementById("email").value;
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    var status = false;
    if (email == null || email == "" || !filter.test(email)) {
      document.getElementById("emailloc").innerHTML = "<img src='images/Wrong_mark.png'/>";
      status = false;
    } else {
      document.getElementById("emailloc").innerHTML = "<img src='images/Tick_mark.png'/>";
      status = true;
    }

  }

  function validatePassword() {
    var password = document.getElementById("pass").value;
    var status = false;
    if (password == null || password == "" || password.length < 7) {
      document.getElementById("passloc").innerHTML = "<img src='images/Wrong_mark.png'/>";
      status = false;
    } else {
      document.getElementById("passloc").innerHTML = "<img src='images/Tick_mark.png'/>";
      status = true;
    }
  }

  /* function validateCnfPassword()
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
   } */

  function validateDateOfBirth() {
    var dateofbirth = document.getElementById("dateofbirth").value;
    var status = false;
    if (dateofbirth == null || dateofbirth == ""
            || (dateofbirth.length<10 || dateofbirth.length>10)) {
      document.getElementById("dateofbirthloc").innerHTML = "<img src='images/Wrong_mark.png'/>";
      status = false;
    } else {
      document.getElementById("dateofbirthloc").innerHTML = "<img src='images/Tick_mark.png'/>";
      status = true;
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
  
  function validateOffDetails() {
    var lname = document.getElementById("OffDetails").value;
    var status = false;
    if (lname == null || lname == "") {
      document.getElementById("OffDetailsloc").innerHTML = "<img src='images/Wrong_mark.png'/>";
      status = false;
    } else {
      document.getElementById("OffDetailsloc").innerHTML = "<img src='images/Tick_mark.png'/>";
      status = true;
    }

  }

  function validatePinCode() {
    var pincode = document.getElementById("pincode").value;

    var status = false;
    if (pincode == null || pincode == ""
            || (pincode.length<6 || pincode.length>6)) {
      document.getElementById("pinloc").innerHTML = "<img src='images/Wrong_mark.png'/>";
      status = false;
    } else {
      document.getElementById("pinloc").innerHTML = "<img src='images/Tick_mark.png'/>";
      status = true;
    }
  }

  function validateAddress() {
    var address = document.getElementById("address").value;
    var status = false;
    if (address == null || address == "") {
      document.getElementById("addressloc").innerHTML = "<img src='images/Wrong_mark.png'/>";
      status = false;
    } else {
      document.getElementById("addressloc").innerHTML = "<img src='images/Tick_mark.png'/>";
      status = true;
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
  function showmessage() {

    if ("${param.Message}") {
      alert("${param.Message}")
    }
  }

  function show_city(str) {
    if (str.length == 0) {
      document.getElementById("yiyeee").innerHTML = "";
      return;
    } else {
      var xmlhttp = new XMLHttpRequest();
      xmlhttp.onreadystatechange = function() {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
          document.getElementById("yiyeee").innerHTML = xmlhttp.responseText;
        }
      }
      xmlhttp.open("GET", "ShowCity_Retailer.jsp?State=" + str, true);
      xmlhttp.send();
    }
  }
</script>

</head>
<body onload="showmessage()">
	<h1 class="header">Register here</h1>

	<form action="Register_Retailer" method="post">
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
					name="uname" id="uname" placeholder="my first name" size="50"
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
					name="lname" id="lname" placeholder="enter your last name"
					size="50" style="height: 30px" onblur="return validateLastName()"></td>
				<td id="lnameloc"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
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
				<td class="a">Company/Office Details</td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"
					name="OffDetails" id="OffDetails"
					placeholder="enter Comapny/Office Name/Details" size="50"
					style="height: 30px" onblur="return validateOffDetails()"></td>
				<td id="OffDetailsloc"></td>
			</tr>

			<tr>
				<td class="a">Email</td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"
					name="email" id="email" placeholder="enter your valid email id "
					size="50" style="height: 30px" onblur="return validateEmail()"></td>
				<td id="emailloc"></td>
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
					name="dateofbirth" id="dateofbirth"
					placeholder="enter your date of birth as DD/MM/YYYY" size="50"
					style="height: 30px" onblur="return validateDateOfBirth()"
					onkeyup="addSlashes(this)"></td>
				<td id="dateofbirthloc"></td>
			</tr>
			<tr>
				<td class="a">Select Your State</td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<select name="State"
					onclick="show_city(this.value)">
						<option selected="selected" value="Id">Select Your State</option>
						<option value="Karnataka">Karnataka</option>
						<option value="WestBengal">West Bengal</option>
						<option value="Assam">Assam</option>
						<option value="TamilNaidu">Tamil Naidu</option>

				</select>
				</td>
				<td></td>
			</tr>
			<tr>
				<td class="a">Select Your City</td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td id="yiyeee">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<select
					name="City">
						<option value="Id_city">Select Your City</option>
				</select>
				</td>
				<td></td>
			</tr>
			<tr>
				<td class="a">Address</td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <textarea
						name="Address" rows="4" cols="56" id="address"
						placeholder="Enter Your whole address"
						onblur="return validateAddress()" style="margin-left: -2px;"></textarea>
				</td>
				<td id="addressloc"></td>

			</tr>
			<tr>
				<td class="a">Pin Code</td>
			</tr>
			<tr>
				<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"
					name="pincode" id="pincode" placeholder="enter your pin code "
					size="50" style="height: 30px" onblur="return validatePinCode()"></td>
				<td id="pinloc"></td>
			</tr>

			<tr></tr>
			<tr></tr>
			<tr>
				<td class="a">Address Proof Submitted:</td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<select name="AddProof">
						<option selected="selected" value="Id">Select Your
							Address Proof</option>
						<option value="Passport">Passport</option>
						<option value="AasharCard">Aadhar Card by UIDAI</option>
						<option value="DrivingLicense">Driving License</option>
						<option value="RationCard">Ration Card</option>
						<option value="LeaseAgreement">Registered Sale/Lease
							Agreement</option>
						<option value="LLBill">Landline Bill (not more than 3
							months old)</option>
						<option value="EBBill">Electricity Bill (not older than
							last 3months)</option>
				</select>
				</td>
				<td></td>
			</tr>
			<tr>
				<td class="a">Identity Proof Submitted:</td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<select name="IDProof">
						<option selected="selected" value="Id">Select Your
							Identity Proof</option>
						<option value="Passport">Passport</option>
						<option value="AasharCard">Aadhar Card by UIDAI</option>
						<option value="DrivingLicense">Driving License</option>
						<option value="RationCard">Ration Card</option>
						<option value="GovtID">Photo Identity Card (Central
							Govt.or State Govt./PSU only)</option>
						<option value="PanCard">Income Tax PAN Card</option>
						<option value="CastDomCert">Cast and domicile Certificate
							with photo issued by state Govt. like Assam and other states</option>
				</select>
				</td>
				<td></td>
			</tr>
			<tr>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Register"
					style="margin-top: -5px; margin-bottom: 5px; box-shadow: 0px 0px 10px white; margin-left: 200px;"></td>
			</tr>

		</table>
	</form>

</body>
</html>