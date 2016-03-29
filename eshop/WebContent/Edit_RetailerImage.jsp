
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Bean.*,java.util.*,Model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>


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

<!-- <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script> -->
<script src="js1/imagezoom.js"></script>	

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
	
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
<style type="text/css">
#imagePreview {
      width: 110px;
      height: 110px;
    background-position: center;
    margin-top:4px;
    background-size: cover;
    -webkit-box-shadow: 0 0 1px 1px rgba(0, 0, 0, .3);
    display: inline-block;
}
</style>
</head>
<body>
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
									Name</a></li>
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
								data-parent="#SubMenu1">Electronics</a> <a href="#"
								class="list-group-item" data-parent="#SubMenu1">Men's Wear</a> <a
								href="#" class="list-group-item" data-parent="#SubMenu1">Women
								Wear</a> <a href="#" class="list-group-item" data-parent="#SubMenu1">Groceries</a>


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
								href="#" class="list-group-item" data-parent="#SubMenu2">Women
								Wear</a> <a href="#" class="list-group-item" data-parent="#SubMenu2">Groceries</a>


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
			
			<div class="col-xs-12 col-sm-7 col-md-9" style="margin-left:-0.2%; 	border-top:1px solid black; border-bottom:1px solid black;">
			<h3 class="text-center">Edit Image</h3>
			<hr>
			<form action="Update_RetailerImg" method="post" class="form-horizontal" role="form" enctype="multipart/form-data">
			<table class="table-bordered" style="width:100%; margin-bottom:3%;">
			<tbody>
			<tr style="height:45px;">
			<th class="text-center">Product Id</th>
			<th class="text-center">Color Name</th>
			<th class="text-center">File Name</th>
			<th class="text-center">Image</th>
			<th class="text-center">Image Preview</th>
			<th class="text-center">Update....</th>
			</tr>
			
			<%
				String prouct_id = request.getParameter("Product_id");
				String color = request.getParameter("Color");
				String filename = request.getParameter("Filename");
			%>
			
			<tr>
			<td class="text-center" style="width:15%;"><%=prouct_id%></td>
			<td class="text-center" style="width:18%;"><%=color %></td>
			<td class="text-center" style="width:18%;"><%=filename %></td>
			<td style="width:28%;"><input type="file" id="uploadFile" class="btn btn-default btn-file btn-block" name="Image" data-provides="fileinput" class="text-center"></td>
			<td class="text-center" style="width:20%;"><div id="imagePreview" class="img-thumbnail"></div>
			
			 <script>

$(function() {
    $("#uploadFile").on("change", function()
    {
        var files = !!this.files ? this.files : [];
        if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support
 
        if (/^image/.test( files[0].type)){ // only image file
            var reader = new FileReader(); // instance of the FileReader
            reader.readAsDataURL(files[0]); // read the local file
 
            reader.onloadend = function(){ // set image data as background of div
                $("#imagePreview").css("background-image", "url("+this.result+")");
				
            }
        }
    });
});
</script>
			</td>
			
			<td class="text-center"><button type="submit" class="btn btn-default btn-sm"><i class="fa fa-pencil fa-2x"></i>
													</button>
													
			<input type="hidden" name="product_id" value="<%=prouct_id %>">
			<input type="hidden" name="Color"	value="<%=color %>"	>
			<input type="hidden" name="Filename"	value="<%=filename %>"	>								
													</td>
			</tr>
			</tbody>
			</table>
			</form>
			</div>
</div>
</div>
</body>
</html>