<%@page import="Model.Model_LoginVerify"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Retailer: Home</title>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- Font Awesome Link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">


<script>
	$(document).ready(
			function() {
				$(".dropdown").hover(
						function() {
							$('.dropdown-menu', this).not('.in .dropdown-menu')
									.stop(true, true).slideDown("400");
							$(this).toggleClass('open');
						},
						function() {
							$('.dropdown-menu', this).not('.in .dropdown-menu')
									.stop(true, true).slideUp("400");
							$(this).toggleClass('open');
						});
			});
</script>
<style type="text/css">
@import url('http://fonts.googleapis.com/css?family=Ubuntu');

* {
	font-family: Ubuntu;
}

body {
	overflow: scroll;
	overflow-x: hidden;
}

.list-group.panel>.list-group-item {
	border-bottom-right-radius: 4px;
	border-bottom-left-radius: 4px
}

.list-group-submenu {
	margin-left: 20px;
}

.bg-blue {
	background-color: #1c92ea;
}

#MainMenu {
	position: static;
	top: 14.1%;
	left: 0;
	margin-left: -2.3%;
}

#demo1 {
	margin-left: 10px;
}
</style>
</head>

<body>

    <%  HttpSession sees = request.getSession();
	  		String email = (String) sees.getAttribute("Email");
	  		String name=Model_LoginVerify.Select_Username(email);
					
   	%> 
	<div class="container-fluid">
		<!-- HEADER -->
		<div class="row">
			<div class="col-xs-2 col-sm-3 col-md-3 text-center">
				<h5 class="text-center" style="color: #3d9db2;">LOGO</h5>
			</div>
			<div class="col-xs-5 col-sm-6 col-md-7">
				<h3 class="text-center" style="color: #3d9db2;">Retailer
					Dashboard</h3>
			</div>
			<div class="col-xs-5 col-sm-3 col-md-2">
				<h5 class="text-center">Logged in as</h5>
				<ul class="navbar-nav navbar-right"
					style="list-style: none; margin-right: 30%;">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false"> <img
							class="img-circle img-responsive" id="img_logo"
							src="http://bootsnipp.com/img/logo.jpg" height="60" width="60"></a>
						<ul class="dropdown-menu" role="menu"
							style="position: absolute; right: -80%;">
							<li><a href="#" style="font-family: Ubuntu;"><i
									class="fa fa-user fa-lg" style="color: blue;"></i>&nbsp;&nbsp;
									<%=name %></a></li>
							<li class="divider"></li>
							<li><a href="#" style="font-family: Ubuntu;"><i
									class="fa fa-pencil-square-o" style="color: blue;"></i>&nbsp;&nbsp;Edit
									Profile</a></li>
							<li class="divider"></li>
							<li><a href="#" style="font-family: Ubuntu;"><i
									class="fa fa-unlock-alt fa-lg"></i>&nbsp;&nbsp;Change Password</a></li>
							<li class="divider"></li>
							<li><a href="#" style="font-family: Ubuntu;"><i
									class="fa fa-sign-out fa-lg"></i>&nbsp;&nbsp;Log Out</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<hr>

		<!-- BODY -->
		<div class="row">
			<!-- SIDE NAV -->
			<div id="MainMenu" class="col-xs-12 col-sm-5 col-md-3"
				role="navigation" style="margin-left: 0.1%;">
				<div class="list-group panel pull-left" style="width: 99%;">
					<a href="#demo1" class="list-group-item list-group-item-success"
						data-toggle="collapse" data-parent="#MainMenu"
						style="border-radius: 0px; height: 60px; padding-top: 6%; font-size: 16px; font-family: Ubuntu;">&nbsp;&nbsp;&nbsp;&nbsp;Manage
						Products<i class="fa fa-caret-down pull-right"
						style="margin-top: 1.8%;"></i>
					</a>
					<div class="collapse" id="demo1">
						<a href="#SubMenu1" class="list-group-item" data-toggle="collapse"
							data-parent="#SubMenu1">Add New Product<i
							class="fa fa-caret-down pull-right"></i>
						</a>
						<div class="collapse list-group-submenu" id="SubMenu1">

							<a href="#" class="list-group-item list-group-item-danger"
								data-parent="#SubMenu1">Electronics</a> <a href="Retailer_Men_InsertPrdct.jsp"
								class="list-group-item" data-parent="#SubMenu1">Men's Wear</a> <a
								href="Retailer_Women_InsertPrdct.jsp" class="list-group-item" data-parent="#SubMenu1">Women
								Wear</a> 
								<a
								href="#" class="list-group-item" data-parent="#SubMenu1">Kids
								Wear</a> 
								<a href="#" class="list-group-item" data-parent="#SubMenu1">Groceries</a>


							<!--  <a href="#" class="list-group-item" data-parent="#SubMenu1"></a> -->
						</div>
						<a href="#SubMenu2" class="list-group-item" data-toggle="collapse"
							data-parent="#SubMenu2">Edit Product <i
							class="fa fa-caret-down pull-right"></i>
						</a>

						<div class="collapse list-group-submenu" id="SubMenu2">

							<a href="#" class="list-group-item list-group-item-danger"
								data-parent="#SubMenu2">Electronics</a> <a href="#"
								class="list-group-item" data-parent="#SubMenu2">Men's Wear</a> <a
								href="Retailer_Women_EditPrdct.jsp" class="list-group-item" data-parent="#SubMenu2">Women
								Wear</a>
								 <a
								href="#" class="list-group-item" data-parent="#SubMenu2">Kids
								Wear</a> 
								<a href="#" class="list-group-item" data-parent="#SubMenu2">Groceries</a>


							<!--  <a href="#" class="list-group-item" data-parent="#SubMenu1"></a> -->
						</div>

						<a href="#SubMenu3" class="list-group-item" data-toggle="collapse"
							data-parent="#SubMenu3">Delete Product <i
							class="fa fa-caret-down pull-right"></i>
						</a>
						<div class="collapse list-group-submenu" id="SubMenu3">

							<a href="#" class="list-group-item list-group-item-danger"
								data-parent="#SubMenu3">Electronics</a> <a href="#"
								class="list-group-item" data-parent="#SubMenu3">Men's Wear</a> <a
								href="#" class="list-group-item" data-parent="#SubMenu3">Women
								Wear</a> <a href="#" class="list-group-item" data-parent="#SubMenu3">Groceries</a>


							<!--  <a href="#" class="list-group-item" data-parent="#SubMenu1"></a> -->
						</div>
					</div>

					<a href="ViewOwnProducts_Retailer.jsp" class="list-group-item list-group-item-success"
					    data-parent="#MainMenu"
						style="border-radius: 0px; height: 60px; font-size: 16px; font-family: Ubuntu; padding-top: 5.8%;">&nbsp;&nbsp;&nbsp;&nbsp;View
						My Products</a> <a href="#demo3"
						class="list-group-item list-group-item-success"
						data-toggle="collapse" data-parent="#MainMenu"
						style="border-radius: 0px; height: 60px; font-size: 16px; font-family: Ubuntu; padding-top: 5.8%;">&nbsp;&nbsp;&nbsp;&nbsp;View
						Others Products</a> <a href="#demo4"
						class="list-group-item list-group-item-success"
						data-toggle="collapse" data-parent="#MainMenu"
						style="border-radius: 0px; font-size: 16px; font-family: Ubuntu; padding-top: 5.8%; height: 60px;">&nbsp;&nbsp;&nbsp;&nbsp;Sold
						Products</a> <a href="#demo5"
						class="list-group-item list-group-item-success"
						data-toggle="collapse" data-parent="#MainMenu"
						style="border-radius: 0px; font-size: 16px; font-family: Ubuntu; padding-top: 5.8%; height: 60px;">&nbsp;&nbsp;&nbsp;&nbsp;Low
						Stock Products</a> <a href="#demo6"
						class="list-group-item list-group-item-success"
						data-toggle="collapse" data-parent="#MainMenu"
						style="border-radius: 0px; font-size: 16px; font-family: Ubuntu; padding-top: 5.8%; height: 60px;">&nbsp;&nbsp;&nbsp;&nbsp;Claim
						For Refund</a> <a href="#demo7"
						class="list-group-item list-group-item-success"
						data-toggle="collapse" data-parent="#MainMenu"
						style="border-radius: 0px; font-size: 16px; font-family: Ubuntu; padding-top: 5.8%; height: 60px;">&nbsp;&nbsp;&nbsp;&nbsp;Sales
						Reports<i class="fa fa-caret-down pull-right"
						style="margin-top: 2%; margin-right: 0.5%;"></i>
					</a>
					<div class="collapse" id="demo7" style="margin-left: 10px;">
						<a href="" class="list-group-item">Weekly Reports</a> <a href=""
							class="list-group-item">Monthly Reports</a>
					</div>
				</div>
			</div>

			<!-- MAIN CONTENT -->
			<div class="col-xs-12 col-sm-7 col-md-9"
				style="border-top: 1px solid black; border-bottom: 1px solid black; margin-left: -0.2%;">
				<h3 class="text-center">Profile Details</h3>
				<div class="row" style="margin-top: 3%; margin-bottom: 3%;">
					<div class="col-xs-12 col-sm-4 col-md-4 text-center"
						style="margin-bottom: 2%;">
						<img src="http://bootsnipp.com/img/logo.jpg" class="img-thumbnail"
							style="margin-top: 2%;">
					</div>
					<div class="col-xs-12 col-sm-8 col-md-8 text-center">
						<table class="table-bordered text-center"
							style="border: 2px solid black; width: 95%; margin-left: -4%;">

							<tbody>
								<tr>
									<td style="height: 40px; width: 29%; font-weight: bold;">Name</td>
									<td>Sanjay Roy</td>
								</tr>

								<tr>
									<td style="height: 40px; width: 29%; font-weight: bold;">Email</td>
									<td>sanjayroy84@yahoo.com</td>
								</tr>
								<tr>
									<td style="height: 40px; width: 29%; font-weight: bold;">Phone
										No</td>
									<td>+91-7278117250</td>
								</tr>

								<tr>
									<td style="height: 40px; width: 29%; font-weight: bold;">RetailerId</td>
									<td>RTL0002</td>
								</tr>
								<tr>
									<td style="height: 40px; width: 29%; font-weight: bold;">Date
										Of Birth</td>
									<td>05-04-1989</td>
								</tr>

								<tr>
									<td style="height: 40px; width: 29%; font-weight: bold;">Address</td>
									<td
										style="word-wrap: break-word; min-width: 300px; max-width: 300px; padding-left: 10px; padding-right: 10px;">jdshghsdhsdglhdgslkhjdgslhlsgdhjlkdsgjlksdgjlksdjggghrewahrweereerhgfsdsfhfdsh</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="row" style="margin-bottom: 3%;">
					<div class="col-xs-10 col-sm-6 col-md-4 text-center"
						style="border: 1px solid black; height: 180px; margin-left: 0%;">ABCDEFGHIJ</div>
					<div class="col-xs-10 col-sm-6 col-md-4 text-center"
						style="border: 1px solid black; height: 180px; margin-left: 0%;">KLMNOPQR</div>
					<div class="col-xs-10 col-sm-6 col-md-4 text-center"
						style="border: 1px solid black; height: 180px; margin-left: 0%;">STUVWXYZ</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>