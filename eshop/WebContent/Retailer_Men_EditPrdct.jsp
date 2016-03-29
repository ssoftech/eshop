<%@page import="Model.Model_LoginVerify"%>
<%@page import="Model.Model_Retailers_Men_Prdct"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*, Bean.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Retailer: Edit Products</title>


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

	//Javascript code for current date
	function myFunction() {
		//var a = new Date();
		//var c = a.toLocaleDateString();
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth() + 1;//January is 0! 
		var yyyy = today.getFullYear();
		if (dd < 10) {
			dd = '0' + dd
		}
		if (mm < 10) {
			mm = '0' + mm
		}
		var c = dd + '/' + mm + '/' + yyyy;

		document.getElementById("addDate").value = c;
	}

	// Ajax Code for Select Category
	function show_details(str) {
		if (str.length == 0) {
			document.getElementById("product").innerHTML = "";

		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("product").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "Edit_Retailer_MenPrdcts.jsp?Retailer_Name="
					+ str, true);
			xmlhttp.send();
		}
	}

	function show_productdetails(str) {
		if (str.length == 0) {
			document.getElementById("ProductEntry").innerHTML = "";
			return;
		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("Product_Entry_Details").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET",
					"Edit_RetailerDetailsMen.jsp?Product_Id=" + str, true);
			xmlhttp.send();

			alert(str);
		}
	}

	function show_color(str) {
		if (str.length == 0) {
			document.getElementById("ProductEntry").innerHTML = "";

		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("color").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "Edit_RetailerDetails_ColorMen.jsp?Product_Id="
					+ str, true);
			xmlhttp.send();
		}
	}
	
	function show_colorforimage(str) {
		if (str.length == 0) {
			document.getElementById("Image_Table").innerHTML = "";

		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("select_2").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET",
					"Edit_RetailerDetails_ImageMenColor.jsp?Product_Id=" + str,
					true);
			xmlhttp.send();
		}

	}
	
	function show_image_name(str) {
		var Product_Id = document.getElementById("Image_Table2").value;
		if (str.length == 0) {
			document.getElementById("Image_Table").innerHTML = "";

		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("im").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "Edit_RetailerDetails_Image.jsp?Color=" + str
					+ "&Product_Id=" + Product_Id, true);
			xmlhttp.send();
		}

	}
	
	function show_size(str) 
	{
		var Product_Id = document.getElementById("Image_Table2").value;
		if (str.length == 0) {
			document.getElementById("Image_Table").innerHTML = "";

		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("image_sizetable").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "Edit_RetailerDetails_Size.jsp?Color=" + str
					+ "&Product_Id=" + Product_Id, true);
			xmlhttp.send();
		}

	}

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

input[type=number]::-webkit-inner-spin-button, input[type=number]::-webkit-outer-spin-button,
	input[type=date]::-webkit-inner-spin-button, input[type=date]::-webkit-outer-spin-button
	{
	-webkit-appearance: none;
	margin: 0;
}

.table td {
	border-top: none !important;
	padding-left: 0px !important;
	padding-right: 0px !important;
}

.btn-file {
	position: relative;
	overflow: hidden;
}

.btn-file input[type=file] {
	position: absolute;
	top: 0;
	right: 0;
	min-width: 100%;
	min-height: 100%;
	font-size: 100px;
	text-align: right;
	filter: alpha(opacity = 0);
	opacity: 0;
	outline: none;
	background: white;
	cursor: inherit;
	display: block;
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
								href="#" class="list-group-item" data-parent="#SubMenu1">Women
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
								data-parent="#SubMenu2">Electronics</a> <a href="Retailer_Men_EditPrdct.jsp"
								class="list-group-item" data-parent="#SubMenu2">Men's Wear</a> <a
								href="#" class="list-group-item" data-parent="#SubMenu2">Women
								Wear</a> <a
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

					<a href="#demo2" class="list-group-item list-group-item-success"
						data-toggle="collapse" data-parent="#MainMenu"
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
			<div id="MainContent" class="col-xs-12 col-sm-7 col-md-9"
				style="border-top: 1px solid black; border-bottom: 1px solid black; margin-left: -0.2%;">
				<h3 class="text-center">Edit Products</h3>
				<div class="row" style="margin-top: 3%; margin-bottom: 3%;">
					<div
						class="col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1">
						<hr
							style="border: 1px solid #97dafb; margin-top: 1px; margin-bottom: 3px;">
						<ul class="nav nav-pills nav-justified">
							<li class="active"><a data-toggle="pill" href="#AddPrd">Edit
									Product Info</a></li>
							<li><a data-toggle="pill" href="#AddCol">Edit Color &
									Quantity</a></li>
							<li><a data-toggle="pill" href="#AddImg">Edit Sizes &
									Images</a></li>
						</ul>
						<hr style="border: 1px solid #97dafb; margin-top: 3px;">
						<div class="tab-content">
							<div id="AddPrd" class="tab-pane fade in active">
								<h3>Product Details</h3>
								<br>
								<br>
								<form action="Retailer_Men_EditPrdct" method="post"
									class="form-horizontal" id="AddProducts" role="form">
									<div class="form-group">
										<label class="control-label col-sm-3" for="addDate"
											style="text-align: left;">Product Added On:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control disabled" id="addDate"
												name="ProductAddedOn" placeholder="DD/MM/YYYY"
												onkeydown="return false;" onclick="myFunction()">
										</div>
									</div>

									<div class="form-group">
										<label class="control-label col-sm-3" for="RetailerName"
											style="text-align: left;">Retailer Name:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="Retailer_Name"
												name="Retailer_Name" placeholder="Retailer Name" value="<%=name%>" readonly="readonly">
										</div>
									</div>

									<div class="form-group">
										<label class="control-label col-sm-3" for="category"
											style="text-align: left;">Product:</label>
										<div class="col-sm-9">
											<select class="form-control" id="Product_Id"
												name="Product_Id" onchange="show_productdetails(this.value)">
												<option selected="selected" value="Id">Select Product Id....</option>
												<%
													ArrayList<Retailer_Men_Prdct> ar = Model_Retailers_Men_Prdct
															.AllPrdcts(email);

													Retailer_Men_Prdct obj = new Retailer_Men_Prdct();
													Iterator<Retailer_Men_Prdct> it = ar.iterator();
													while (it.hasNext()) {
														obj = (Retailer_Men_Prdct) it.next();
												%>
												<option value="<%=obj.getProduct_Id()%>"><%=obj.getProduct_Id()%></option>
												<%
													}
												%>
											</select>
										</div>
									</div>
									<table class="table" id="Product_Entry_Details"
										style="width: 100%;">
										<tbody>
											<tr>
												<td><label class="control-label" for="category"
													style="text-align: left;">Category:</label></td>
												<td><select class="form-control" id="Category_MenWear"
													name="Category_MenWear">
														<option selected="selected">Select Product
															Category...</option>
														<option value="Casual">Casual</option>
														<option value="Formals">Formals</option>
														<option value="Ethnic">Ethnic</option>
												</select></td>
											</tr>

											<tr>
												<td style="width: 26%;"><label class="control-label"
													for="category" style="text-align: left;">Type:</label></td>
												<td><select class="form-control" id="ff"
													id="Type_MenWear" name="Type_MenWear">
														<option selected="selected">Select Product
															Type...</option>
												</select></td>
											</tr>

											<tr>
												<td style="width: 26%;"><label class="control-label"
													for="brand" style="text-align: left;">Brand Name:</label></td>
												<td><input type="text" class="form-control"
													id="BrandName" name="BrandName"
													placeholder="Enter Brand Name of Product"></td>
											</tr>

											<tr>
												<td><label class="control-label" for="fit"
													style="text-align: left;">Fittings:</label></td>
												<td><input type="text" class="form-control" id="Fit"
													name="Fit" placeholder="Enter Type of Fitting"></td>
											</tr>

											<tr>
												<td><label class="control-label" for="price"
													style="text-align: left;">Price:</label></td>
												<td><input type="text" class="form-control" id="Price"
													name="Price" placeholder="Enter Price of Product">
												</td>
											</tr>
											<tr>
												<td><label class="control-label" for="aboutPrd"
													style="text-align: left;">About Product:</label></td>
												<td><textarea class="form-control" rows="5"
														id="About_The_Product" name="About_The_Product"></textarea>
												</td>
											</tr>

											<tr>
												<td><label class="control-label" for="tagLine"
													style="text-align: left;">Tagline:</label></td>
												<td><input type="text" class="form-control" id="Header"
													name="Header" placeholder="Enter your Address"
													maxlength="70"></td>
											</tr>
										</tbody>
									</table>
									<div class="form-group">
										<div class="col-sm-12" align="right">
											<button type="submit"
												class="btn btn-primary btn-block btn-lg">Edit
												Product</button>
										</div>
									</div>

								</form>
							</div>
							<div id="AddCol" class="tab-pane fade">
								<h3 class="text-center">Color & Quantity</h3>
								<br></br>
								<form action="Retailer_Men_Edit_Color" method="post"
									class="form-horizontal" role="form">
									<div class="form-group">
										<label class="control-label col-sm-3" for="category"
											style="text-align: left;">Product:</label>
										<div class="col-sm-9">
											<select class="form-control" id="category" name="Product_Id"
												onchange="show_color(this.value)">
												<option selected="selected" id="Id">Select Product
													Id....</option>
												<%
													Retailer_Men_Prdct obj2 = new Retailer_Men_Prdct();
													Iterator<Retailer_Men_Prdct> it2 = ar.iterator();
													while (it2.hasNext()) {
														obj2 = (Retailer_Men_Prdct) it2.next();
												%>
												<option value="<%=obj2.getProduct_Id()%>"><%=obj2.getProduct_Id()%></option>
												<%
													}
												%>
											</select>
										</div>
									</div>
									<div id="color">
										<div class="form-group">
											<div class="col-sm-4">
												<input type="text" class="form-control" id="Retailer_Name"
													name="Retailer_Name" placeholder="ColorName 1">
											</div>
											<div class="col-sm-4">
												<input type="text" class="form-control" id="Retailer_Name"
													name="Retailer_Name" placeholder="Quantity 1">
											</div>
											<div class="col-sm-4">
												<button type="submit" class="btn btn-primary btn-block">Edit
													Color & Quantity</button>
											</div>
										</div>

										<div class="form-group">
											<div class="col-sm-4">
												<input type="text" class="form-control" id="Color2"
													name="Color2" placeholder="ColorName 2">

											</div>

											<div class="col-sm-4">
												<input type="text" class="form-control" id="Quantity2"
													name="Quantity2" placeholder="Quantity 2">
											</div>
											<div class="col-sm-4">
												<button type="submit" class="btn btn-primary btn-block">Edit
													Color & Quantity</button>
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-4">
												<input type="text" class="form-control" id="Color3"
													name="Color3" placeholder="ColorName 3">

											</div>

											<div class="col-sm-4">
												<input type="text" class="form-control" id="Quantity3"
													name="Quantity3" placeholder="Quantity 3">
											</div>
											<div class="col-sm-4">
												<button type="submit" class="btn btn-primary btn-block">Edit
													Color & Quantity</button>
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-4">
												<input type="text" class="form-control" id="Color4"
													name="Color4" placeholder="ColorName 4">
											</div>
											<div class="col-sm-4">
												<input type="text" class="form-control" id="Quantity4"
													name="Quantity4" placeholder="Quantity 4">
											</div>
											<div class="col-sm-4">
												<button type="submit" class="btn btn-primary btn-block">Add
													Color & Quantity</button>
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-4">
												<input type="text" class="form-control" id="Color5"
													name="Color5" placeholder="ColorName 5">
											</div>
											<div class="col-sm-4">
												<input type="text" class="form-control" id="Quantity5"
													name="Quantity5" placeholder="Quantity 5">
											</div>
											<div class="col-sm-4">
												<button type="submit" class="btn btn-primary btn-block">Add
													Color & Quantity</button>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div>
											<div class="col-sm-4 col-sm-offset-4">
												<input type="text" class="form-control" id="Total_Quantity"
													placeholder="Total Quantity">
											</div>
										</div>
									</div>
								</form>
							</div>
							
							<div id="AddImg" class="tab-pane fade">
								<h3 class="text-right">Size & Images</h3>
								<form action="Retailer_Men_Edit_Size" method="post" class="form-horizontal" role="form">
									<div class="form-group">
										<label class="control-label col-sm-3" for="category"
											style="text-align: left;">Product:</label>
										<div class="col-sm-9">
											<select class="form-control" id="Image_Table2"  onchange="show_colorforimage(this.value)">
												<option selected="selected">Select Product Id....</option>
												<%
													Retailer_Men_Prdct obj9 = new Retailer_Men_Prdct();
													Iterator<Retailer_Men_Prdct> it9 = ar.iterator();
													while (it9.hasNext()) {
														obj9 = (Retailer_Men_Prdct) it9.next();
												%>
												<option value="<%=obj9.getProduct_Id()%>"><%=obj9.getProduct_Id()%></option>
												<%
													}
												%>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="category"
											style="text-align: left;">Color:</label>
										<div class="col-sm-9" id="select_2">
											<select class="form-control" id="select_2">
												<option selected="selected" value="Id">Select Color Here....</option>
											</select>
										</div>
									</div>
                                     <div class="col-sm-6" id="image_sizetable" style="padding-left:0px;">
                                     <input type="text" class="form-control" id="Size1"
													placeholder="Size 1"><br>
									 <input type="text" class="form-control" id="Size2" placeholder="Size 2"><br>
									 <input type="text" class="form-control" id="Size3" placeholder="Size 3"><br>
									 <input type="text" class="form-control" id="Size4" placeholder="Size 4"><br>
									 <input type="text" class="form-control" id="Size5" placeholder="Size 5"><br>
									 <button type="submit" class="btn btn-primary btn-block">Edit
													Size</button>
							          </div>
							          
							          <div class="col-sm-6" id="im" style="padding-left:0px; padding-right:0px;">
							          <input type="file"
													class="btn btn-default btn-file btn-block" id="Image1"
													data-provides="fileinput"><br>
									  <input type="file" class="btn btn-default btn-file btn-block" id="Image2" data-provides="fileinput"><br>
									  <input type="file" class="btn btn-default btn-file btn-block" id="Image3" data-provides="fileinput"><br>
									  <input type="file" class="btn btn-default btn-file btn-block" id="Image4" data-provides="fileinput"><br>
									  <input type="file" class="btn btn-default btn-file btn-block" id="Image5" data-provides="fileinput"><br>
							          </div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>