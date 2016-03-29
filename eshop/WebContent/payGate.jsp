<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>

<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,600'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css1/payGateStyle.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="css1/signoutstyle.css" type='text/css'
	media="screen" />

<script language="JavaScript" type="text/javascript">
	function show_payType(str,str1) {
		if (str1.length == 0) {
			document.getElementById("payment").innerHTML = "";
			return;
		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("payment").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "ShowPayTypeDetails.jsp?UserInfo=" + str+"&payment="+str1, true);
			xmlhttp.send();
		}
	}
</script>

<style>
body {
	background: #eee url(images1/BodyBG3.jpg) fixed center 0px;
	padding-top: 5px;
}
</style>

</head>
<body>
	<div id="WinLay">
		<%
			String name = "";
			HttpSession sees = request.getSession();
			String email = (String) sees.getAttribute("email");
			session.setAttribute("Email", email);
			System.out.println("Email is in " + email);
			if (email != "" || email != null) {
				Connection con = Conct.conect();
				String sql = "Select FirstName from user_register where Email=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, email);
				ResultSet rs = ps.executeQuery();
				if (rs.next()) {
					name = rs.getString("FirstName");
					sees = request.getSession();
					sees.setAttribute("Name", name);
				}
			}
		%>

		<div id="body1">

			<%
				String username = (String) session.getAttribute("Name");
				System.out.println("Username is" + username);
				if (username == "" || username == null) {
			%>
			<link rel="stylesheet" href="css1/signinstyle.css" type='text/css'
				media="screen" />

			<div id="loginwrapper" style="padding-bottom: 1.5%;">
				<div id="topmessage" style="margin-left: 0px; color: black;">NO
					DELIVERY CHARGES ON ORDERS ABOVE Rs500 | EXTRA 5% OFF ON ORDERS
					ABOVE Rs1499</div>
				<div class="retailLogin">
					<a href="Login_Retailer.jsp">- RETAILER LOGIN - </a>
				</div>
				<div class="help">
					<a target="_blank" href="help.html" title="Help">HELP</a> <span
						style="display: none;">|</span>
				</div>
				<div class="signin" style="display: none;">
					<a href="javascript:login('show');" title="Sign In">SIGN IN</a> <span>|</span>
				</div>
				<div class="signup" style="display: none;">
					<a href="Register_User.jsp" title="Sign Up">SIGN UP</a>
				</div>
			</div>
			<%
				} else {
			%>
			<%
				if (username != null) {
			%>

			<script type="text/javascript">
				onload = function() {
					status();
				}
			</script>



			<div id="loginwrapper">
				<div id="topmessageB" style="margin-left: 0px; color: black;">NO
					DELIVERY CHARGES ON ORDERS ABOVE Rs500 | EXTRA 5% OFF ON ORDERS
					ABOVE Rs1499</div>
				<div class="greetUserExt">
					<div class="greetUser">
						<a href="UserDashboard.jsp" style="width: 15%;">Welcome <%=username%>
							&nbsp&nbsp<i class="fa fa-smile-o fa-lg"></i></a>
					</div>
				</div>
				<%
					}
				%>
				<div class="help">
					<a target="_blank" href="help.html">HELP</a> <span>|</span>
				</div>
				<div class="signout">
					<a href="signout">SIGN OUT</a>
				</div>
			</div>
			<%
				}
			%>

		</div>


		<div id="wrap" style="margin-top: 3.5%;">
			<div id="accordian">
				<div class="step" id="step2">
					<div class="number">
						<span style="color: #908888;">1</span>
					</div>
					<div class="title">
						<h1>Billing Information</h1>
					</div>
				</div>
				<div class="content" id="address">
					<form id="payGate1" class="go-right">
						<div>
							<input type="name" name="first_name" value="" id="first_name"
								placeholder="First Name" data-trigger="change"
								data-validation-minlength="1" data-type="name"
								data-required="true" data-error-message="Enter Your First Name"
								autocomplete="false" /><label for="first_name">First
								Name</label>
						</div>
						<div>
							<label for="last_name">Last Name</label> <input type="name"
								name="last_name" value="" id="last_name" placeholder="Last Name"
								data-trigger="change" data-validation-minlength="1"
								data-type="name" data-required="true"
								data-error-message="Enter Your Last Name" /><label
								for="last_name">Last Name</label>
						</div>
						<div>
							<input type="phone" name="telephone" value="" id="telephone"
								placeholder="10 Digit Mobile No." data-trigger="change"
								data-validation-minlength="1" data-type="number"
								data-required="true"
								data-error-message="Enter Your Telephone Number" /><label
								for="telephone">Mobile</label>
						</div>
						<div>
							<input type="text" name="address1" value="" id="company"
								placeholder="Address Line 1" data-trigger="change"
								data-validation-minlength="1" data-type="name"
								data-required="false" /><label for="Address1">Address</label>
						</div>
						<div>
							<input type="text" name="address2" value="" id="address"
								placeholder="Address Line 2" data-trigger="change"
								data-validation-minlength="1" data-type="text"
								data-required="true"
								data-error-message="Enter Your Billing Address" /><label
								for="Address2">Address</label>
						</div>
						<div>
							<input type="text" name="city" value="" id="city"
								placeholder="City" data-trigger="change"
								data-validation-minlength="1" data-type="text"
								data-required="true"
								data-error-message="Enter Your Billing City" /><label
								for="city">City</label>
						</div>
						<div>
							<div class="state_options">
								<div class="select">
									<select id="state">
										<option value="1">Delhi</option>
										<option value="2">Maharashtra</option>
										<option value="3">Tamil Nadu</option>
										<option value="4">West Bengal</option>
									</select>
								</div>
								<label class="state" for="state">State</label>
							</div>
						</div>
						<div>
							<input type="text" name="zip" value="" id="zip"
								placeholder="xxxxxx" data-trigger="change"
								data-validation-maxlength="6" data-validation-minlength="1"
								data-type="text" data-required="true"
								data-error-message="Enter Your Billing Zip Code" /><label
								for="zip">Zip Code</label>
						</div>
					</form>
					<a class="continue" href="#">Continue</a>
				</div>
				<div class="step" id="step3">
					<div class="number">
						<span style="color: #908888;">2</span>
					</div>
					<div class="title">
						<h1>Payment Mode</h1>
					</div>
				</div>
				<div class="content" id="shipping">
					<form>
						<div>
							<div class="state_options">
								<div class="select">
									<select id="state" onchange="show_payType('<%=email%>',this.value)">
										<option value="1">Cash On Delivery</option>
										<option value="2">Online Banking</option>
										<option value="DebitCard" >Debit Card</option>
										<option value="4">Credit Card</option>
									</select>
								</div>
							</div>
						</div>
					</form>
					<a class="continue" href="#">Continue</a>
				</div>
				<div class="step" id="step4">
					<div class="number">
						<span style="color: #908888;">3</span>
					</div>
					<div class="title">
						<h1>Payment Information</h1>
					</div>
				</div>
				<div class="content" id="payment">
				
				
				</div>
				<div class="step" id="step5">
					<div class="number">
						<span style="color: #908888;">4</span>
					</div>
					<div class="title">
						<h1>Finalize Order</h1>
					</div>
				</div>
				<div class="content" id="final_products">
					<div class="left" id="ordered">
						<div class="products">
							<div class="product_image">
								<img src="images1/BrandZone/adidas.jpg" />
							</div>
							<div class="product_details">
								<span class="product_name">Cherry</span> <span class="quantity">1</span>
								<span class="price">$45.00</span>
							</div>
						</div>
						<div class="totals">
							<span class="subtitle">Subtotal <span id="sub_price">$45.00</span></span>
							<span class="subtitle">Tax <span id="sub_tax">$2.00</span></span>
							<span class="subtitle">Shipping <span id="sub_ship">$4.00</span></span>
						</div>
						<div class="final">
							<span class="title">Total <span id="calculated_total">$51.00</span></span>
						</div>
					</div>
					<div class="right" id="reviewed">
						<div class="billing">
							<span class="title">Billing:</span>
							<div class="address_reviewed">
								<span class="name">John Smith</span> <span class="address">123
									Main Street</span> <span class="location">Everytown, USA, 12345</span>
								<span class="phone">(123)867-5309</span>
							</div>
						</div>
						<div class="shipping">
							<span class="title">Shipping:</span>
							<div class="address_reviewed">
								<span class="name">John Smith</span> <span class="address">123
									Main Street</span> <span class="location">Everytown, USA, 12345</span>
								<span class="phone">(123)867-5309</span>
							</div>
						</div>
						<div class="payment">
							<span class="title">Payment:</span>
							<div class="payment_reviewed">
								<span class="method">Visa</span> <span class="number_hidden">xxxx-xxxx-xxxx-1111</span>
							</div>
						</div>
						<div id="complete">
							<a class="big_button" id="complete" href="#">Complete Order</a> <span
								class="sub">By selecting this button you agree to the
								purchase and subsequent payment for this order.</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>