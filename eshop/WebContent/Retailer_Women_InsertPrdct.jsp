<%@page import="Model.Model_LoginVerify"%>
<%@page import="Model.Model_Retailers_WomenPrdct"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Retailer: Add Products</title>


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
		var mm = today.getMonth()+1;//January is 0! 
		var yyyy = today.getFullYear(); 
		if(dd<10){dd='0'+dd} 
		if(mm<10){mm='0'+mm} 
		var c=dd+'/'+mm+'/'+yyyy;

		document.getElementById("addDate").value = c;
	}
	
	// Ajax Code for Select Category
	function show(str) {
		if (str.length == 0) {
			document.getElementById("ff").innerHTML = "";
			return;
		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("ff").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "ShowTypeWomen.jsp?CategorySelect=" + str, true);
			xmlhttp.send();
		}
	}

	//Jquerry code for summing
	$(document).ready(function() {

		//iterate through each textboxes and add keyup
		//handler to trigger sum event
		$(".size").each(function() {

			$(this).keyup(function() {
				calculateSum();
			});
		});

	});
	
	//Javascript code for summing quantity
	function calculateSum() {

		var sum = 0;
		//iterate through each textboxes and add the values
		$(".size").each(function() {

			//add only if the value is number
			if (!isNaN(this.value) && this.value.length != 0) {
				sum += parseFloat(this.value);
			}

		});
		//.toFixed() method will roundoff the final sum to 2 decimal places
		$("#Total_Quantity").val(sum.toFixed(2));
	}
	
	//Ajax code for color select
	function show_colorforimage(str) 
	{
		
		alert(str);
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
					"Edit_DetailsRetailer_ImageWomenColor.jsp?Product=" + str,
					true);
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

input[type=number]::-webkit-inner-spin-button, 
input[type=number]::-webkit-outer-spin-button,
input[type=date]::-webkit-inner-spin-button, 
input[type=date]::-webkit-outer-spin-button { 
  -webkit-appearance: none; 
  margin: 0; 
}

.table td
{
 border-top: none !important;
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
    filter: alpha(opacity=0);
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
								data-parent="#SubMenu2">Electronics</a> <a href="Retailer_Men_EditPrdct.jsp"
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
				<h3 class="text-center">Add Products</h3>
				<div class="row" style="margin-top: 3%; margin-bottom: 3%;">
					<div
						class="col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1">
						<hr
							style="border: 1px solid #97dafb; margin-top: 1px; margin-bottom: 3px;">
						<ul class="nav nav-pills nav-justified">
							<li class="active"><a data-toggle="pill" href="#AddPrd">Add
									Product Info</a></li>
							<li><a data-toggle="pill" href="#AddCol">Add Color &
									Quantity</a></li>
							<li><a data-toggle="pill" href="#AddImg">Add Sizes &
									Images</a></li>
						</ul>
						<hr style="border: 1px solid #97dafb; margin-top: 3px;">
						<div class="tab-content">
							<div id="AddPrd" class="tab-pane fade in active">
								<h3>Product Details</h3>
								<br><br>
								<form action="Retailer_Women_Insrt_Prdct"  method="post" class="form-horizontal" id="AddProducts" role="form">
									<div class="form-group">
										<label class="control-label col-sm-3" for="addDate"
											style="text-align: left;">Product Added On:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control disabled" id="addDate" name="ProductAddedOn"
												placeholder="DD/MM/YYYY" onkeydown="return false;" onclick="myFunction()">
										</div>
									</div>
									
									<div class="form-group">
										<label class="control-label col-sm-3" for="RetailerName"
											style="text-align: left;">Retailer Name:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="Product_SoldBy" name="Product_SoldBy"
												placeholder="Retailer Name" value="<%=name%>" readonly="readonly">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="pId"
											style="text-align: left;">Product ID:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="Product_Id" name="Product_Id"
												placeholder="Enter the Product ID">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="category"
											style="text-align: left;">Category:</label>
										<div class="col-sm-9">
											<select class="form-control" id="Category_WomenWear" name="Category_WomenWear" onchange="show(this.value)">
												<option selected="selected">Select Product
													Category...</option>
												<option value="Casual">Casual</option>
												<option value="Formals">Formals</option>
												<option value="Ethnic">Ethnic</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="category"
											style="text-align: left;">Type:</label>
										<div class="col-sm-9" >
											<select class="form-control" id="ff" id="Type_WomenWear" name="Type_WomenWear">
												<option selected="selected">Select Product Type...</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="brand"
											style="text-align: left;">Brand Name:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="BrandName" name="BrandName"
												placeholder="Enter Brand Name of Product">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="fit"
											style="text-align: left;">Fittings:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="Fit" name="Fit"
												placeholder="Enter Type of Fitting">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="price"
											style="text-align: left;">Price:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="Price" name="Price"
												placeholder="Enter Price of Product">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="aboutPrd"
											style="text-align: left;">About Product:</label>
										<div class="col-sm-9">
											<textarea class="form-control" rows="5" id="About_The_Product" name="About_The_Product"></textarea>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="tagLine"
											style="text-align: left;">Tagline:</label>
										<div class="col-sm-9">
											<input type="text" class="form-control" id="Header" name="Header"
												placeholder="Enter your Tagline" maxlength="70">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-12" align="right">
											<button type="submit"
												class="btn btn-primary btn-block btn-lg">Add
												Product</button>
										</div>
									</div>
								</form>
							</div>
							<div id="AddCol" class="tab-pane fade">
								<h3 class="text-center">Color & Quantity</h3>
								<br></br>
								<form action="Retailer_Women_InsertColor" method="post" class="form-horizontal" role="form">
									<div class="form-group">
										<label class="control-label col-sm-3" for="category"
											style="text-align: left;">Product:</label>
										<div class="col-sm-9">
											<select class="form-control" name="Product_Id" onchange="show_color(this.value)">
												<option selected="selected">Select Product
													Id....</option>
													<%
									ArrayList<Retailer_Women_Prdct> arr=Model.Model_Retailers_WomenPrdct.AllPrdcts(email);
									
									Retailer_Women_Prdct obj= new Retailer_Women_Prdct();
									Iterator<Retailer_Women_Prdct> it= arr.iterator();
									
									while(it.hasNext())
									{
										
									    obj=(Retailer_Women_Prdct)it.next();
								%>
								<option value="<%=obj.getProduct_Id()%>"><%=obj.getProduct_Id()%></option>

								<%
									}
								%>
											</select>
										</div>
									</div>
									<table class="table" style="width:100%;">
									<tbody>
									<tr>
									<td>
									<input type="text" class="form-control" id="Color1" name="Color1"
												placeholder="Color 1">
									</td>
									<td>
									<input type="text" class="form-control size" id="Quantity1" name="Quantity1"
												placeholder="Quantity 1">
									</td>
									</tr>
									<tr>
									<td>
									<input type="text" class="form-control" id="Color2" name="Color2"  placeholder="Color 2">
									</td>
									<td>
									<input type="text" class="form-control size" id="Quantity2" name="Quantity2" placeholder="Quantity 2"> 
									</td>
									</tr>
									<tr>
									<td>
									<input type="text" class="form-control" id="Color3" name="Color3"  placeholder="Color 3">
									</td>
									<td>
									<input type="text" class="form-control size" id="Quantity3"  name="Quantity3" placeholder="Quantity 3"> 
									</td>
									</tr>
									<tr>
									<td>
									<input type="text" class="form-control" id="Color4" name="Color4" placeholder="Color 4">
									</td>
									<td>
									<input type="text" class="form-control size" id="Quantity4" name="Quantity4" placeholder="Quantity 4">
									</td>
									</tr>
									<tr>
									<td>
									<input type="text" class="form-control" id="Color5" name="Color5" placeholder="Color 5">
									</td>
									<td>
									<input type="text" class="form-control size" id="Quantity5" name="Quantity5" placeholder="Quantity 5">
									</td>
									</tr>
									<tr>
									<td>
									<button type="submit" class="btn btn-primary btn-block">Add Color & Quantity</button>
									</td>
									<td>
									<input type="text" class="form-control" id="Total_Quantity" placeholder="Total Quantity">
									</td>
									</tr>
									
									</tbody>
									</table>
									
								</form>
							</div>
							<div id="AddImg" class="tab-pane fade">
								<h3 class="text-right">Size & Images</h3>
								<form action="Retailer_Women_InsertImage" method="post" class="form-horizontal" role="form" enctype="multipart/form-data">
									<div class="form-group">
										<label class="control-label col-sm-3" for="category"
											style="text-align: left;">Product:</label>
										<div class="col-sm-9">
											<select class="form-control" id="category" name="Image_Table2" onchange="show_colorforimage(this.value)">
												<option selected="selected">Select Product
													Id....</option>
													<%
													
													Iterator<Retailer_Women_Prdct> its= arr.iterator();
													
													while(its.hasNext())
													{
														
													    obj=(Retailer_Women_Prdct)its.next();
								%>
								<option value="<%=obj.getProduct_Id()%>"><%=obj.getProduct_Id()%></option>

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
											<select class="form-control" >
												<option selected="selected">Select Color
													Here....</option>
											</select>
										</div>
									</div>
									
									<table class="table" style="width:100%;">
									
									<tbody>
									<tr>
									<td>
									<input type="text" class="form-control" id="Size1" name="Size1" placeholder="Size 1">
									</td>
									<td>
									<input type="file" class="btn btn-default btn-file btn-block" id="Image1" name="Image1" data-provides="fileinput">
									</td>
									</tr>
									
									<tr>
									<td>
									<input type="text" class="form-control" id="Size2" name="Size2" placeholder="Size 2">
									</td>
									<td>
									<input type="file" class="btn btn-default btn-file btn-block" id="Image2" name="Image2" data-provides="fileinput">
									</td>
									</tr>
									
									<tr>
									<td>
									<input type="text" class="form-control" id="Size3" name="Size3" placeholder="Size 3">
									</td>
									<td>
									<input type="file" class="btn btn-default btn-file btn-block" id="Image3" name="Image3" data-provides="fileinput">
									</td>
									</tr>
									
									<tr>
									<td>
									<input type="text" class="form-control" id="Size4" name="Size4" placeholder="Size 4">
									</td>
									<td>
									<input type="file" class="btn btn-default btn-file btn-block" id="Image4" name="Image4" data-provides="fileinput">
									</td>
									</tr>
									<tr>
									<td>
									<input type="text" class="form-control" id="Size5" name="Size5" placeholder="Size 5">
									</td>
									<td>
									<input type="file" class="btn btn-default btn-file btn-block" id="Image5" name="Image5" data-provides="fileinput">
									</td>
									</tr>
									<tr>
									<td colspan="2">
									<button type="submit" class="btn btn-primary btn-block btn-lg">Add Image & Size</button>
									</td>
									</tr>
									</tbody>
									</table>
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