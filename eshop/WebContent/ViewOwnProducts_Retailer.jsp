<%@page import="Model.Model_LoginVerify"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*"%>
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

	//Ajax code to show if product is there

	function show_Product(str) {
		var product = document.getElementById("Product_Id").value;
		window.location = "Show_ExistingProduct.jsp?Product=" + product + "";
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
			xmlhttp.open("GET", "ShowType.jsp?CategorySelect=" + str, true);
			xmlhttp.send();
		}
	}

	//Ajax code for color select
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
					"Edit_DetailsRetailer_ImageMenColor.jsp?Product=" + str,
					true);
			xmlhttp.send();
		}

	}

	function show_select_type(str) {
		if (str.length == 0) {
			document.getElementById("").innerHTML = "";

		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("Table_Sort").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "Sort_OthersTable_OwnProducts.jsp?Product="
					+ str, true);
			xmlhttp.send();
		}

	}

	function fullsort(str,str2) {
		var xhttp;
		if (window.XMLHttpRequest) {
			// code for modern browsers
			xhttp = new XMLHttpRequest();
		} else {
			// code for IE6, IE5
			xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xhttp.onreadystatechange = function() {
			if (xhttp.readyState == 4 && xhttp.status == 200) {
				document.getElementById("Table_Sort").innerHTML = xhttp.responseText;
			}
		};
		xhttp.open("GET", "ShowTableOwnPrice.jsp?Price=" + str+"&Product=" + str2 +" ", true);
		xhttp.send();
	}

	function full_sort(str) {

		var xhttp;
		if (window.XMLHttpRequest) {
			// code for modern browsers
			xhttp = new XMLHttpRequest();
		} else {
			// code for IE6, IE5
			xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xhttp.onreadystatechange = function() {
			if (xhttp.readyState == 4 && xhttp.status == 200) {
				document.getElementById("Table_Sort").innerHTML = xhttp.responseText;
			}
		};
		xhttp.open("GET", "Show_TableOwnRetailerName.jsp?Product_Id=" + str,
				true);
		xhttp.send();
	}

	function full_sortBrand(str) {

		var xhttp;
		if (window.XMLHttpRequest) {
			// code for modern browsers
			xhttp = new XMLHttpRequest();
		} else {
			// code for IE6, IE5
			xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xhttp.onreadystatechange = function() {
			if (xhttp.readyState == 4 && xhttp.status == 200) {
				document.getElementById("Table_Sort").innerHTML = xhttp.responseText;
			}
		};
		xhttp.open("GET", "Show_TableOwnBrand.jsp?Product_Id=" + str, true);
		xhttp.send();
	}
	
	function show_select(str) {

		var xhttp;
		if (window.XMLHttpRequest) {
			// code for modern browsers
			xhttp = new XMLHttpRequest();
		} else {
			// code for IE6, IE5
			xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xhttp.onreadystatechange = function() {
			if (xhttp.readyState == 4 && xhttp.status == 200) {
				document.getElementById("sort").innerHTML = xhttp.responseText;
			}
		};
		xhttp.open("GET", "Sort_OthersTable_Own_Select.jsp?Product=" + str, true);
		xhttp.send();
	}
	
	function datewise(str,str1) {

		if(str=="Date")
			{
			alert(str);
		var xhttp;
		if (window.XMLHttpRequest) {
			// code for modern browsers
			xhttp = new XMLHttpRequest();
		} else {
			// code for IE6, IE5
			xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xhttp.onreadystatechange = function() {
			if (xhttp.readyState == 4 && xhttp.status == 200) {
				document.getElementById("date_sort").innerHTML = xhttp.responseText;
			}
		};
		xhttp.open("GET", "Sort_OthersTable_Own_DateWise.jsp?Date=" + str+"&Product="+str1+"", true);
		xhttp.send();
			}
	}
	
	function sort_date(Prdct)
	{
		var str=document.getElementById("From_Date").value;
		var str2=document.getElementById("End_Date").value;
		
		
		var xhttp;
		  if (window.XMLHttpRequest) {
		    // code for modern browsers
		    xhttp = new XMLHttpRequest();
		    } else {
		    // code for IE6, IE5
		    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
		  }
		  xhttp.onreadystatechange = function() {
		    if (xhttp.readyState == 4 && xhttp.status == 200) {
		      document.getElementById("Table_Sort").innerHTML = xhttp.responseText;
		    }
		  };
		  xhttp.open("GET", "Sort_OthersBydate.jsp?From_date="+str+"&Todate="+str2+"&Product="+Prdct+"", true);
		  xhttp.send();
		
        //window.location="Sort_OthersBydate.jsp?From_date="+str+"&Todate="+str2+"";
        
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
				<h4 class="text-center" style="color: #3d9db2;">Retailer
					Dashboard</h4>
				<h3 class="text-center" style="color: #3d9db2;">My Products</h3>
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

			<!-- MAIN CONTENT -->
			<div id="ownProdContent" class="col-xs-12 col-sm-7 col-md-9"
				style="border-top: 1px solid black; border-bottom: 1px solid black; margin-left: -0.2%;">
				<div class="row">
					<div class="col-xs-10 col-xs-offset-1 col-sm-4 col-sm-offset-1">
						<select class="form-control" name="select_type"
							onchange="show_select_type(this.value);show_select(this.value)">
							<option selected="selected" value="id">Select Sort
								Type...</option>
							<option value="Electronics">Electronics</option>
							<option value="MensWear">Mens Wear</option>
							<option value="WomensWear">Womens Wear</option>
							<option value="KidsWear">Kids Wear</option>
							<option value="Groceries">Groceries</option>

						</select>
					</div>
					<div id="sort"
						class="col-xs-10 col-xs-offset-1 col-sm-4 col-sm-offset-1">
						<!-- <select class="form-control" name="sort">
						</select> -->
					</div>
				</div>
				<div class="row">
				<br>
				<div id="date_sort">
				
				</div>
				</div>
				<hr style="margin-top: 1%;">
				<div class="row" >
					<table class="table-bordered" id="Table_Sort" style="margin-bottom: 1.5%;">
						<thead>
							<tr style="background-color: #ddd;">
								<th style="width: 11%; text-align: center;">Product Added
									On</th>
								<th style="text-align: center;">Product Details</th>
								<th style="width: 10%; text-align: center;">Quantity</th>
								<th style="width: 20%; text-align: center;">Colors
									Available</th>
								<th style="width: 15%; text-align: center;">Product Image</th>

							</tr>
						</thead>
						<tbody>
							<%
								Connection con3 = Conct.conect();
						
								int count = 0;
								String arg[] = new String[5];
								String pid = "";
								String s = "";
                            
							    String sql3 = "Select a1.ProductAddedOn,a1.Product_Id,a1.Category,a1.Type,a1.BrandName,a1.Fittings,a1.Price,a1.About,a1.Tagline,a3.FirstName, a3.LastName, a3.OfficeDetails,a4.TotalQuantity from retailer_productinsertmen a1 inner  join retailer_register a3 on a1.Retailer_Name=a3.FirstName join retailer_totalqty a4 on a1.Product_Id=a4.Product_Id and a3.Email=?";
								PreparedStatement ps3 = con3.prepareStatement(sql3);
								ps3.setString(1, email);
								ResultSet rs3 = ps3.executeQuery();
								while (rs3.next()) {
							%>
							<tr>
								<%
									pid = rs3.getString("Product_Id");
										String sql = "Select count(ColorName)from retailer_colorinsertmen where Product_Id=?";
										PreparedStatement ps = con3.prepareStatement(sql);
										ps.setString(1, pid);
										ResultSet rs = ps.executeQuery();
										while (rs.next()) {
											count = rs.getInt(1);
											/* out.println(count); */

										}
										String sql2 = "Select ColorName from retailer_colorinsertmen where Product_Id=?";
										PreparedStatement ps2 = con3.prepareStatement(sql2);
										ps2.setString(1, pid);
										ResultSet rs2 = ps2.executeQuery();
										int i = 0;
										while (rs2.next()) {
											arg[i] = rs2.getString("ColorName");
											i++;
										}
								%>
								<td style="text-align: center;"><%=rs3.getString("ProductAddedOn")%></td>
								<td style="padding-left: 5px;">ID: <%=rs3.getString("Product_Id")%>
									<br>Name: <%=rs3.getString("BrandName")%> <br>Category:
									<%=rs3.getString("Category")%> <br>Type: <%=rs3.getString("Type")%>
									<br>Fittings: <%=rs3.getString("Fittings")%> <br>Price:
									<i class="fa fa-inr" id="total"></i>&nbsp<%=rs3.getDouble("Price")%>
								</td>
								<td style="text-align: center;"><%=rs3.getInt("TotalQuantity")%></td>
								<td style="text-align: center;">
									<%
										for (int j = 0; j < count; j++) {
												s = "  " + arg[j] + "";
												out.println(s);
											}
									%>&nbsp
								</td>
								<td style="text-align: center;"><img
									src="Show_Image_AllProducts?Product_Id=<%=pid%>" height="80px"
									width="90px;"></td>
							</tr>
 						
                             <%
								}
							%> 
							<%
								String pid4 = "";
								String sql4 = "Select a1.ProductAddedOn,a1.Product_Id,a1.Category,a1.Type,a1.BrandName,a1.Fittings,a1.Price,a1.About,a1.Tagline,a3.FirstName, a3.LastName, a3.OfficeDetails, a4.TotalQuantity from retailer_productinsertwomen a1 inner  join retailer_register a3 on a1.Retailer_Name=a3.FirstName join retailer_totalqtywomen a4 on a1.Product_Id=a4.Product_Id and a3.Email=?";
								PreparedStatement p4 = con3.prepareStatement(sql4);
								p4.setString(1, email);
								ResultSet rs4 = p4.executeQuery();
								while (rs4.next()) {
							%>
							<tr>
								<%
									    pid4 = rs4.getString("Product_Id");
										String sql = "Select count(ColorName)from retailer_colorinsertwomen where Product_Id=?";
										PreparedStatement ps = con3.prepareStatement(sql);
										ps.setString(1, pid4);
										ResultSet rs = ps.executeQuery();
										while (rs.next()) {
											count = rs.getInt(1);
											 /* out.println(count); */

										}
										String sql2 = "Select ColorName from retailer_colorinsertwomen where Product_Id=?";
										PreparedStatement ps2 = con3.prepareStatement(sql2);
										ps2.setString(1, pid4);
										ResultSet rs2 = ps2.executeQuery();
										int i = 0;
										while (rs2.next()) {
											arg[i] = rs2.getString("ColorName");
											i++;
										}
								%>
								<td style="text-align: center;"><%=rs4.getString("ProductAddedOn")%></td>
								<td style="padding-left: 5px;">ID: <%=rs4.getString("Product_Id")%>
									<br>Name: <%=rs4.getString("BrandName")%> <br>Category:
									<%=rs4.getString("Category")%> <br>Type: <%=rs4.getString("Type")%>
									<br>Fittings: <%=rs4.getString("Fittings")%> <br>Price:
									<i class="fa fa-inr" id="total"></i>&nbsp<%=rs4.getDouble("Price")%>
								</td>
								<td style="text-align: center;"><%=rs4.getInt("TotalQuantity")%></td>
								<td style="text-align: center;">
									<%
										for (int j = 0; j < count; j++) {
												s = "  " + arg[j] + "";
												out.println(s);
											}
									%>&nbsp;
								</td>
								<td style="text-align: center;"><img
									src="Show_Image_AllProducts?Product_Id=<%=pid4%>" height="80px"
									width="90px;"></td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>