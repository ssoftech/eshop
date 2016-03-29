<!DOCTYPE html>
<html lang="en">
<head>
<title>Customer Side Header</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- bootstrap font-awesome link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<!-- Bootstrap Links & Scripts -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script>
	$(document).ready(
			function() {
				$(".dropdown").hover(
						function() {
							$('.dropdown-menu', this).not('.in .dropdown-menu')
									.stop(true, true).slideDown("450");
							$(this).toggleClass('open');
						},
						function() {
							$('.dropdown-menu', this).not('.in .dropdown-menu')
									.stop(true, true).slideUp("450");
							$(this).toggleClass('open');
						});
			});

	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
	});

	/* DATE PICKER SCRIPT */
	
</script>

<!-- CSS For -->
<style>
@import url('http://fonts.googleapis.com/css?family=Ubuntu');

* {
	font-family: Ubuntu;
}

/* SignIn Modal */
input[type=number]::-webkit-inner-spin-button, input[type=number]::-webkit-outer-spin-button
	{
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	margin: 0;
}

input[type=number] {
	-moz-appearance: textfield;
}

/* NAVBAR */
.mega-dropdown {
	position: static !important;
}

.mega-dropdown-menu {
	padding: 20px 0px;
	width: 100%;
	box-shadow: none;
	-webkit-box-shadow: none;
}

.mega-dropdown-menu>li>ul {
	padding: 0;
	margin: 0;
}

.mega-dropdown-menu>li>ul>li {
	list-style: none;
}

.mega-dropdown-menu>li>ul>li>a {
	display: block;
	color: #222;
	padding: 3px 5px;
}

.mega-dropdown-menu>li ul>li>a:hover, .mega-dropdown-menu>li ul>li>a:focus
	{
	text-decoration: none;
}

.mega-dropdown-menu .dropdown-header {
	font-size: 18px;
	color: #ff3546;
	padding: 5px 60px 5px 5px;
	line-height: 30px;
}

/* .carousel-control {
	width: 30px;
	height: 30px;
	top: -35px;
}

.left.carousel-control {
	right: 30px;
	left: inherit;
} */
.carousel-control .glyphicon-chevron-left, .carousel-control .glyphicon-chevron-right
	{
	font-size: 15px;
	line-height: 30px;
	text-shadow: 2px 2px 1px black;
	color: #ffffff;
}
</style>


</head>
<body>
	<!-- HEADER -->
	<header class="row">
		<h5 class="col-sm-9" style="width: 60%; margin-left: 1.3%;">NO
			DELIVERY CHARGES ON ORDERS ABOVE Rs500 | EXTRA 5% OFF ON ORDERS ABOVE
			Rs1499</h5>
		<span class="col-sm-3" style="float: right;"><a href="#"
			data-toggle="modal" data-target="#myModalRet" data-backdrop="static"
			data-keyboard="false">RETAILER LOGIN</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a
			href="#">HELP</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="#"
			data-toggle="modal" data-target="#myModal" data-backdrop="static"
			data-keyboard="false">SIGN IN</a></span>
	</header>


	<!-- SIGN IN & SIGN UP MODAL USER-->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" style="margin-top: 5%;">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close" data-toggle="tooltip" data-placement="left"
						title="Close">
						<span aria-hidden="true"><i class="fa fa-times"></i></span>
					</button>
				</div>
				<div class="modal-body">
					<div class="well">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#login" data-toggle="tab">Login</a></li>
							<li><a href="#create" data-toggle="tab">Create Account</a></li>
						</ul>
						<div id="myTabContent" class="tab-content" style="margin-top: 3%;">
							<!-- LOGIN -->
							<div class="tab-pane active in" id="login">
								<form class="form-horizontal" id="login-form"
									action="Login_VerifyUser" method="post" role="form">
									<div class="form-group">
										<label class="control-label col-sm-3" for="email"
											style="text-align: left;">Email:</label>
										<div class="col-sm-9">
											<input type="email" class="form-control" id="email"
												name="usermail" placeholder="Enter email">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="pwd"
											style="text-align: left;">Password:</label>
										<div class="col-sm-9">
											<input type="password" class="form-control" id="password"
												name="password" placeholder="Enter password">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-offset-3 col-sm-9">
											<div class="checkbox">
												<label><input type="checkbox"> Remember me</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-12" align="right">
											<button type="submit" class="btn btn-success btn-block">Login</button>
										</div>
									</div>
								</form>

							</div>
							<!-- REGISTER -->
							<div class="tab-pane fade" id="create" style="margin-top: 3%">
								<form class="form-horizontal" action="Register_User"
									method="post" role="form">
									<div class="form-group">
										<label class="control-label col-sm-3" for="fname"
											style="text-align: left;">First Name:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="fname"
												name="uname" placeholder="Enter your First Name">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="lname"
											style="text-align: left;">Last Name:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="lname"
												name="lname" placeholder="Enter your Last Name">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="phn"
											style="text-align: left;">Phone No:</label>
										<div class="col-sm-9">
											<input type="number" class="form-control" id="phn"
												name="phoneno"
												placeholder="Enter your 10-digit Mobile Number">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="email"
											style="text-align: left;">Email:</label>
										<div class="col-sm-9">
											<input type="email" class="form-control" id="email"
												name="email" placeholder="Enter email">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-4" for="pwd"
											style="text-align: left;">Password:</label>
										<div class="col-sm-8">
											<input type="password" class="form-control" id="pwd"
												name="pass" placeholder="Enter password">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-4" for="cnfPwd"
											style="text-align: left;">Confirm Password:</label>
										<div class="col-sm-8">
											<input type="password" class="form-control" id="cnfPwd"
												name="cnfpass" placeholder="Enter password">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="addr1"
											style="text-align: left;">Address Line 1:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="addr1"
												name="Address1" placeholder="Enter your Address"
												maxlength="70">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="addr2"
											style="text-align: left;">Address Line 2:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="addr2"
												name="Address2" placeholder="Enter your Address"
												maxlength="70">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="state"
											style="text-align: left;">State:</label>
										<div class="col-sm-9">
											<select class="form-control" id="state" name="State">
												<option selected="selected">Select Your State...</option>
												<option value="AN">Andaman and Nicobar Islands</option>
												<option value="AP">Andhra Pradesh</option>
												<option value="AR">Arunachal Pradesh</option>
												<option value="AS">Assam</option>
												<option value="BR">Bihar</option>
												<option value="CG">Chhattisgarh</option>
												<option value="CH">Chandigarh</option>
												<option value="DN">Dadra and Nagar Haveli</option>
												<option value="DD">Daman and Diu</option>
												<option value="DL">Delhi</option>
												<option value="GA">Goa</option>
												<option value="GJ">Gujarat</option>
												<option value="HR">Haryana</option>
												<option value="HP">Himachal Pradesh</option>
												<option value="JK">Jammu and Kashmir</option>
												<option value="JH">Jharkhand</option>
												<option value="KA">Karnataka</option>
												<option value="KL">Kerala</option>
												<option value="LD">Lakshadweep</option>
												<option value="MP">Madhya Pradesh</option>
												<option value="MH">Maharashtra</option>
												<option value="MN">Manipur</option>
												<option value="ML">Meghalaya</option>
												<option value="MZ">Mizoram</option>
												<option value="NL">Nagaland</option>
												<option value="OD">Odisha</option>
												<option value="PY">Puducherry</option>
												<option value="PB">Punjab</option>
												<option value="RJ">Rajasthan</option>
												<option value="SK">Sikkim</option>
												<option value="TN">Tamil Nadu</option>
												<option value="TS">Telangana</option>
												<option value="TR">Tripura</option>
												<option value="UP">Uttar Pradesh</option>
												<option value="UK">Uttarakhand</option>
												<option value="WB">West Bengal</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="city"
											style="text-align: left;">City:</label>
										<div class="col-sm-9">
											<select class="form-control" id="city" name="City">
												<option selected="selected">Select Your City...</option>
												<option value="AN">City 1</option>
												<option value="AP">City 2</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="zip"
											style="text-align: left;">Zip-Code:</label>
										<div class="col-sm-9">
											<input type="number" class="form-control" id="zip"
												name="Pincode" placeholder="Enter your 6-Digit Zip Code">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-12" align="right">
											<button type="submit"
												class="btn btn-primary btn-block btn-lg">Register</button>
											<p align="center" style="font-size: small;">
												<br>Login after registering your details with us.
											</p>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- SIGN IN SIGN UP MODAL RETAILER -->
	<div class="modal fade" id="myModalRet" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" style="margin-top: 5%;">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close" data-toggle="tooltip" data-placement="left"
						title="Close">
						<span aria-hidden="true"><i class="fa fa-times"></i></span>
					</button>
				</div>
				<div class="modal-body">
					<div class="well">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#loginRet" data-toggle="tab">Login</a></li>
							<li><a href="#createRet" data-toggle="tab">Create
									Account</a></li>
						</ul>
						<div id="myTabContent" class="tab-content" style="margin-top: 3%;">
							<!-- LOGIN -->
							<div class="tab-pane active in" id="loginRet">
								<form class="form-horizontal" id="login-form"
									action="Login_Retailer" method="post" role="form">
									<div class="form-group">
										<label class="control-label col-sm-3" for="email"
											style="text-align: left;">Email:</label>
										<div class="col-sm-9">
											<input type="email" class="form-control" id="email"
												name="email" placeholder="Enter email">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="pwd"
											style="text-align: left;">Password:</label>
										<div class="col-sm-9">
											<input type="password" class="form-control" id="password"
												name="password" placeholder="Enter password">
										</div>
									</div>
									
									<div class="form-group">
										<label class="control-label col-sm-3" for="empid"
											style="text-align: left;">Retailer Id:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="empid"
												name="empid" placeholder="Enter retialerId">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-offset-3 col-sm-9">
											<div class="checkbox">
												<label><input type="checkbox"> Remember me</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-12" align="right">
											<button type="submit" class="btn btn-success btn-block">Login</button>
										</div>
									</div>
								</form>

							</div>
							<!-- REGISTER -->
							<div class="tab-pane fade" id="createRet" style="margin-top: 3%">
								<form class="form-horizontal" action="Register_Retailer"
									method="post" role="form">
									<div class="form-group">
										<label class="control-label col-sm-3" for="uname"
											style="text-align: left;">First Name:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="uname"
												name="uname" placeholder="Enter your First Name">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="lname"
											style="text-align: left;">Last Name:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="lname"
												name="lname" placeholder="Enter your Last Name">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="phoneno"
											style="text-align: left;">Phone No:</label>
										<div class="col-sm-9">
											<input type="number" class="form-control" id="phoneno"
												name="phoneno"
												placeholder="Enter your 10-digit Mobile Number">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="email"
											style="text-align: left;">Email:</label>
										<div class="col-sm-9">
											<input type="email" class="form-control" id="email"
												name="email" placeholder="Enter email">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="OffDetails"
											style="text-align: left;">Office/Company:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="OffDetails"
												name="OffDetails"
												placeholder="Enter the name of your Office/Company">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="dateofbirth"
											style="text-align: left;">Date of Birth:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="dateofbirth" name="dateofbirth"
												placeholder="DD/MM/YYYY">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="addr1"
											style="text-align: left;">Address Line 1:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="addr1"
												name="Address1" placeholder="Enter your Address"
												maxlength="70">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="addr2"
											style="text-align: left;">Address Line 2:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="addr2"
												name="Address2" placeholder="Enter your Address"
												maxlength="70">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="state"
											style="text-align: left;">State:</label>
										<div class="col-sm-9">
											<select class="form-control" id="state" name="State">
												<option selected="selected">Select Your State...</option>
												<option value="AN">Andaman and Nicobar Islands</option>
												<option value="AP">Andhra Pradesh</option>
												<option value="AR">Arunachal Pradesh</option>
												<option value="AS">Assam</option>
												<option value="BR">Bihar</option>
												<option value="CG">Chhattisgarh</option>
												<option value="CH">Chandigarh</option>
												<option value="DN">Dadra and Nagar Haveli</option>
												<option value="DD">Daman and Diu</option>
												<option value="DL">Delhi</option>
												<option value="GA">Goa</option>
												<option value="GJ">Gujarat</option>
												<option value="HR">Haryana</option>
												<option value="HP">Himachal Pradesh</option>
												<option value="JK">Jammu and Kashmir</option>
												<option value="JH">Jharkhand</option>
												<option value="KA">Karnataka</option>
												<option value="KL">Kerala</option>
												<option value="LD">Lakshadweep</option>
												<option value="MP">Madhya Pradesh</option>
												<option value="MH">Maharashtra</option>
												<option value="MN">Manipur</option>
												<option value="ML">Meghalaya</option>
												<option value="MZ">Mizoram</option>
												<option value="NL">Nagaland</option>
												<option value="OD">Odisha</option>
												<option value="PY">Puducherry</option>
												<option value="PB">Punjab</option>
												<option value="RJ">Rajasthan</option>
												<option value="SK">Sikkim</option>
												<option value="TN">Tamil Nadu</option>
												<option value="TS">Telangana</option>
												<option value="TR">Tripura</option>
												<option value="UP">Uttar Pradesh</option>
												<option value="UK">Uttarakhand</option>
												<option value="WB">West Bengal</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="City"
											style="text-align: left;">City:</label>
										<div class="col-sm-9">
											<select class="form-control" id="City" name="City">
												<option selected="selected">Select Your City...</option>
												<option value="AN">City 1</option>
												<option value="AP">City 2</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="pincode"
											style="text-align: left;">Zip-Code:</label>
										<div class="col-sm-9">
											<input type="number" class="form-control" id="pincode"
												name="pincode" placeholder="Enter your 6-Digit Zip Code">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="addProof"
											style="text-align: left;">Address Proof:</label>
										<div class="col-sm-9">
											<select class="form-control" id="addProof" name="AddProof">
												<option selected="selected">Address Proof
													Submitted...</option>
												<option value="Passport">Passport</option>
												<option value="AadharCard">Aadhar Card by UIDAI</option>
												<option value="DrivingLicense">Driving License</option>
												<option value="RationCard">Ration Card</option>
												<option value="LeaseAgreement">Registered
													Sale/Lease Agreement</option>
												<option value="LLBill">Landline Bill (not more than
													3 months old)</option>
												<option value="EBBill">Electricity Bill (not older
													than last 3months)</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="idProof"
											style="text-align: left;">Identity Proof:</label>
										<div class="col-sm-9">
											<select class="form-control" id="idProof" name="IDProof">
												<option selected="selected">ID Proof Submitted...</option>
												<option value="Passport">Passport</option>
												<option value="AadharCard">Aadhar Card by UIDAI</option>
												<option value="DrivingLicense">Driving License</option>
												<option value="RationCard">Ration Card</option>
												<option value="GovtID">Photo Identity Card (Central
													Govt.or State Govt./PSU only)</option>
												<option value="PanCard">Income Tax PAN Card</option>
												<option value="CastDomCert">Cast and domicile
													Certificate with photo issued by state Govt. like Assam and
													other states</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-12" align="right">
											<button type="submit"
												class="btn btn-primary btn-block btn-lg">Register</button>
											<p align="center" style="font-size: small;">
												<br>Login credentials will be emailed to you in time by
												our Administrator to your registered Email-ID.
											</p>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- NAVBAR -->
	<div class="container" style="width: 100%;">
		<nav class="navbar navbar-inverse">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target=".js-navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">My Store
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
			</div>

			<div class="collapse navbar-collapse js-navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="dropdown mega-dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Electronics <span
							class="caret"></span></a>
						<ul class="dropdown-menu mega-dropdown-menu">
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Electronics</li>
									<div id="menCollection" class="carousel slide"
										data-ride="carousel">
										<div class="carousel-inner">
											<div class="item active">
												<a href="#"><img
													src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 1"></a>
												<h4>
													<small>Dell XPS 13</small>
												</h4>
												<button class="btn btn-primary" type="button">69,999
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-shopping-cart"></span> Add
													to Cart
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 2"></a>
												<h4>
													<small>Samsung galxy s7 Edge</small>
												</h4>
												<button class="btn btn-primary" type="button">54,999
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-shopping-cart"></span> Add
													to Cart
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 3"></a>
												<h4>
													<small>Moto 360 2nd Gen Smartwatch</small>
												</h4>
												<button class="btn btn-primary" type="button">22,999
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-shopping-cart"></span> Add
													to Cart
												</button>
											</div>
											<!-- End Item -->
										</div>
										<!-- End Carousel Inner -->
										<!-- Controls -->
										<a class="left carousel-control" href="#menCollection"
											role="button" data-slide="prev"> <span
											class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
											<span class="sr-only">Previous</span>
										</a> <a class="right carousel-control" href="#menCollection"
											role="button" data-slide="next"> <span
											class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
											<span class="sr-only">Next</span>
										</a>
									</div>
									<!-- /.carousel -->
									<li class="divider"></li>
									<li><a href="#">View all Collection <span
											class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Laptops</li>
									<li><a href="#">Asus</a></li>
									<li><a href="#">Dell</a></li>
									<li><a href="#">Fujitsu</a></li>
									<li><a href="#">Hewlett-Packard</a></li>
									<li><a href="#">Lenovo</a></li>
									<li><a href="#">MSI</a></li>
									<li><a href="#">Sony</a></li>
									<li><a href="#">Toshiba</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Laptop/Computer Accessories</li>
									<li><a href="#">External Hard Disks</a></li>
									<li><a href="MensItem.jsp?Type=Blazers &Category=Formals">Laptop Bags</a></li>
									<li><a href="MensItem.jsp?Type=Jeans &Category=Casual">Mouse</a></li>
									<li><a href="#">Keyboard</a></li>
									<li><a href="#">Pendrive</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">Computer Peripherals</li>
									<li><a href="#">Printers & Inks</a></li>
									<li><a href="#">Scanners</a></li>
									<li><a href="#">Monitors</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Mobile Phones</li>
									<li><a href="#">Samsung</a></li>
									<li><a href="#">Lenovo</a></li>
									<li><a href="#">Motorola</a></li>
									<li><a href="#">Apple</a></li>
									<li><a href="#">Asus</a></li>
									<li><a href="#">Mi</a></li>
									<li><a href="womenshirts.jsp?Type=Kurtas &Category=Ethnic">HTC</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">Mobile Accessories</li>
									<li><a href="#">Cases & Covers</a></li>
									<li><a href="#">Power Banks</a></li>
									<li><a href="#">Headsets</a></li>
								</ul>
							</li>
						</ul></li>
					<li class="dropdown mega-dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Men <span
							class="caret"></span></a>
						<ul class="dropdown-menu mega-dropdown-menu">
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Features</li>
									<li><a href="#">Auto Carousel</a></li>
									<li><a href="#">Carousel Control</a></li>
									<li><a href="#">Left & Right Navigation</a></li>
									<li><a href="#">Four Columns Grid</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">Fonts</li>
									<li><a href="#">Glyphicon</a></li>
									<li><a href="#">Google Fonts</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Plus</li>
									<li><a href="#">Navbar Inverse</a></li>
									<li><a href="#">Pull Right Elements</a></li>
									<li><a href="#">Coloured Headers</a></li>
									<li><a href="#">Primary Buttons & Default</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Much more</li>
									<li><a href="#">Easy to Customize</a></li>
									<li><a href="#">Calls to action</a></li>
									<li><a href="#">Custom Fonts</a></li>
									<li><a href="#">Slide down on Hover</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Men Collection</li>
									<div id="womenCollection" class="carousel slide"
										data-ride="carousel">
										<div class="carousel-inner">
											<div class="item active">
												<a href="#"><img
													src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 1"></a>
												<h4>
													<small>Summer dress floral prints</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 2"></a>
												<h4>
													<small>Gold sandals with shiny touch</small>
												</h4>
												<button class="btn btn-primary" type="button">9,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 3"></a>
												<h4>
													<small>Denin jacket stamped</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
										</div>
										<!-- End Carousel Inner -->
										<!-- Controls -->
										<a class="left carousel-control" href="#womenCollection"
											role="button" data-slide="prev"> <span
											class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
											<span class="sr-only">Previous</span>
										</a> <a class="right carousel-control" href="#womenCollection"
											role="button" data-slide="next"> <span
											class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
											<span class="sr-only">Next</span>
										</a>
									</div>
									
									<!-- /.carousel -->
									<li class="divider"></li>
									<li><a href="#">View all Collection <span
											class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
								</ul>
							</li>
						</ul></li>
					<li class="dropdown mega-dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Women <span
							class="caret"></span></a>
						<ul class="dropdown-menu mega-dropdown-menu">
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Women Collection</li>
									<div id="menCollection" class="carousel slide"
										data-ride="carousel">
										<div class="carousel-inner">
											<div class="item active">
												<a href="#"><img
													src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 1"></a>
												<h4>
													<small>Summer dress floral prints</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 2"></a>
												<h4>
													<small>Gold sandals with shiny touch</small>
												</h4>
												<button class="btn btn-primary" type="button">9,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 3"></a>
												<h4>
													<small>Denin jacket stamped</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
										</div>
										<!-- End Carousel Inner -->
										<!-- Controls -->
										<a class="left carousel-control" href="#menCollection"
											role="button" data-slide="prev"> <span
											class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
											<span class="sr-only">Previous</span>
										</a> <a class="right carousel-control" href="#menCollection"
											role="button" data-slide="next"> <span
											class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
											<span class="sr-only">Next</span>
										</a>
									</div>
									<!-- /.carousel -->
									<li class="divider"></li>
									<li><a href="#">View all Collection <span
											class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Features</li>
									<li><a href="#">Auto Carousel</a></li>
									<li><a href="#">Carousel Control</a></li>
									<li><a href="#">Left & Right Navigation</a></li>
									<li><a href="#">Four Columns Grid</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">Fonts</li>
									<li><a href="#">Glyphicon</a></li>
									<li><a href="#">Google Fonts</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Plus</li>
									<li><a href="#">Navbar Inverse</a></li>
									<li><a href="#">Pull Right Elements</a></li>
									<li><a href="#">Coloured Headers</a></li>
									<li><a href="#">Primary Buttons & Default</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Much more</li>
									<li><a href="#">Easy to Customize</a></li>
									<li><a href="#">Calls to action</a></li>
									<li><a href="#">Custom Fonts</a></li>
									<li><a href="#">Slide down on Hover</a></li>
								</ul>
							</li>
						</ul></li>
					<li class="dropdown mega-dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Kids <span
							class="caret"></span></a>
						<ul class="dropdown-menu mega-dropdown-menu">
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Features</li>
									<li><a href="#">Auto Carousel</a></li>
									<li><a href="#">Carousel Control</a></li>
									<li><a href="#">Left & Right Navigation</a></li>
									<li><a href="#">Four Columns Grid</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">Fonts</li>
									<li><a href="#">Glyphicon</a></li>
									<li><a href="#">Google Fonts</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Plus</li>
									<li><a href="#">Navbar Inverse</a></li>
									<li><a href="#">Pull Right Elements</a></li>
									<li><a href="#">Coloured Headers</a></li>
									<li><a href="#">Primary Buttons & Default</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Much more</li>
									<li><a href="#">Easy to Customize</a></li>
									<li><a href="#">Calls to action</a></li>
									<li><a href="#">Custom Fonts</a></li>
									<li><a href="#">Slide down on Hover</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Kids Collection</li>
									<div id="womenCollection" class="carousel slide"
										data-ride="carousel">
										<div class="carousel-inner">
											<div class="item active">
												<a href="#"><img
													src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 1"></a>
												<h4>
													<small>Summer dress floral prints</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 2"></a>
												<h4>
													<small>Gold sandals with shiny touch</small>
												</h4>
												<button class="btn btn-primary" type="button">9,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 3"></a>
												<h4>
													<small>Denin jacket stamped</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
										</div>
										<!-- End Carousel Inner -->
										<!-- Controls -->
										<a class="left carousel-control" href="#womenCollection"
											role="button" data-slide="prev"> <span
											class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
											<span class="sr-only">Previous</span>
										</a> <a class="right carousel-control" href="#womenCollection"
											role="button" data-slide="next"> <span
											class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
											<span class="sr-only">Next</span>
										</a>
									</div>
									<!-- /.carousel -->
									<li class="divider"></li>
									<li><a href="#">View all Collection <span
											class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
								</ul>
							</li>
						</ul></li>
					<li class="dropdown mega-dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Groceries <span
							class="caret"></span></a>
						<ul class="dropdown-menu mega-dropdown-menu">
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Groceries</li>
									<div id="menCollection" class="carousel slide"
										data-ride="carousel">
										<div class="carousel-inner">
											<div class="item active">
												<a href="#"><img
													src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 1"></a>
												<h4>
													<small>Summer dress floral prints</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 2"></a>
												<h4>
													<small>Gold sandals with shiny touch</small>
												</h4>
												<button class="btn btn-primary" type="button">9,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 3"></a>
												<h4>
													<small>Denin jacket stamped</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
										</div>
										<!-- End Carousel Inner -->
										<!-- Controls -->
										<a class="left carousel-control" href="#menCollection"
											role="button" data-slide="prev"> <span
											class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
											<span class="sr-only">Previous</span>
										</a> <a class="right carousel-control" href="#menCollection"
											role="button" data-slide="next"> <span
											class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
											<span class="sr-only">Next</span>
										</a>
									</div>
									<!-- /.carousel -->
									<li class="divider"></li>
									<li><a href="#">View all Collection <span
											class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Features</li>
									<li><a href="#">Auto Carousel</a></li>
									<li><a href="#">Carousel Control</a></li>
									<li><a href="#">Left & Right Navigation</a></li>
									<li><a href="#">Four Columns Grid</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">Fonts</li>
									<li><a href="#">Glyphicon</a></li>
									<li><a href="#">Google Fonts</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Plus</li>
									<li><a href="#">Navbar Inverse</a></li>
									<li><a href="#">Pull Right Elements</a></li>
									<li><a href="#">Coloured Headers</a></li>
									<li><a href="#">Primary Buttons & Default</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Much more</li>
									<li><a href="#">Easy to Customize</a></li>
									<li><a href="#">Calls to action</a></li>
									<li><a href="#">Custom Fonts</a></li>
									<li><a href="#">Slide down on Hover</a></li>
								</ul>
							</li>
						</ul></li>
					<li><a href="#">Store locator</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">My
							account <span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Profile</a></li>
							<li><a href="#">Change Password</a></li>
							<li><a href="#">My Orders</a></li>
							<li class="divider"></li>
							<li><a href="#" data-toggle="modal" data-target="#myModal"
								data-backdrop="static" data-keyboard="false">SIGN IN</a></li>
						</ul></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
							My cart <span class="badge" style="margin-top: -3%;">5</span></a></li>
				</ul>
			</div>
			<!-- /.nav-collapse -->
		</nav>
	</div>
</body>
</html>
