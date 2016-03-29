
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Admin_WomenWear_Insert</title>
<link href="css/style_masterpage.css" rel='stylesheet' type='text/css' />
<link rel='stylesheet' type='text/css' href="css/style_navmenu.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript">
function status() {

	if ("${param.Mssg}") {
		alert("${param.Mssg}");
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
	//Javascript code for current date
	function myFunction() {
		var a = new Date();
		var c = a.toLocaleDateString();
		document.getElementById("ppp").value = c;
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
			xmlhttp.open("GET", "Edit_Details_ImageWomenColor.jsp?Product_Id="
					+ str, true);
			xmlhttp.send();
		}

	}

	//Ajax code to show if product is there

	function show_Product(str) {
		var product = document.getElementById("Product_Id").value;
		window.location = "Show_ExistingProduct.jsp?Product=" + product + "";
	}

	//Validaitng Product Table Fields

	function Product_IdValidate(str) {

		if (str.length == 0) {
			document.getElementById("productloc").innerHTML = "<img src='images/Wrong_mark.png'/>";

		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("product").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "Show_ExistingProduct.jsp?Product_Id=" + str,
					true);
			xmlhttp.send();
		}

	}

	function TypeValidate() {

		var type = document.getElementById("BrandName").value;
		var status = false;
		if (type == null || type == "") {
			document.getElementById("brandnameloc").innerHTML = "<img src='images/Wrong_mark.png'/>";
			status = false;
		}
	}

	function FittingsValidate() {

		var fittings = document.getElementById("Fit").value;
		var status = false;
		if (fittings == null || fittings == "") {
			document.getElementById("fittingsloc").innerHTML = "<img src='images/Wrong_mark.png'/>";
			status = false;
		}
	}

	function PriceValidate() {

		var price = document.getElementById("Price").value;
		var status = false;
		if (price == null || price == "") {
			document.getElementById("priceloc").innerHTML = "<img src='images/Wrong_mark.png'/>";
			status = false;
		}
	}

	function AboutTheProduct() {

		var about = document.getElementById("About_The_Product").value;
		var status = false;
		if (about == null || about == "") {
			document.getElementById("aboutloc").innerHTML = "<img src='images/Wrong_mark.png'/>";
			status = false;
		}
	}
	function TaglineValidate() {

		var tagline = document.getElementById("Header").value;
		var status = false;
		if (tagline == null || tagline == "") {
			document.getElementById("tagloc").innerHTML = "<img src='images/Wrong_mark.png'/>";
			status = false;
		}
	}

	

	//Reail-Time Date & Clock

	function date_time(id) {
		date = new Date;
		year = date.getFullYear();
		month = date.getMonth();
		months = new Array('January', 'February', 'March', 'April', 'May',
				'June', 'Jully', 'August', 'September', 'October', 'November',
				'December');
		d = date.getDate();
		day = date.getDay();
		days = new Array('Sunday', 'Monday', 'Tuesday', 'Wednesday',
				'Thursday', 'Friday', 'Saturday');
		h = date.getHours();
		if (h < 10) {
			h = "0" + h;
		}
		m = date.getMinutes();
		if (m < 10) {
			m = "0" + m;
		}
		s = date.getSeconds();
		if (s < 10) {
			s = "0" + s;
		}
		result = '' + days[day] + ' ' + months[month] + ' ' + d + ' ' + year
				+ ' ' + h + ':' + m + ':' + s;
		document.getElementById(id).innerHTML = result;
		setTimeout('date_time("' + id + '");', '1000');
		return true;
	}
</script>

</head>


<body>
<script type="text/javascript">
				  onload=function()
				  {
					  status();
					  date_time('date_time'); 
				  }
					
				</script> 
	<div id="container">
		<!-- This is wrapper div -->

		<div id="header">
			<!-- This is header div -->
			<%
			HttpSession sees=request.getSession();
			   String name=(String)sees.getAttribute("Username");
			%>
			<p>Logged in as <%=name %>&nbsp&nbsp<a href="#">Log out</a></p>
			<div class="headerClock">
				<span id="date_time"></span>
				
			</div>
		</div>

		<div id="menu">
			<!-- This is navigation menu -->
			<ul id="navmenu">
				<li><a href="Admin_Profile.jsp"> My Profile</a></li>
				<li class="active"><a href="#">Manage Products</a>
					<ul class="sub1">
						<li><a href="#">Add New Product</a>
							<ul class="sub2">
								<li><a href="#">Electronics</a>
									<ul class="sub3">
										<li><a href="#">Mobiles</a></li>
										<li><a href="#">Laptops</a></li>
									</ul></li>
								<li><a href="Admin_Men_InsertPrdct.jsp">Mens Wear</a></li>
								<li><a href="#">Women Wear</a></li>
								<li><a href="#">Kids Wear</a></li>
							</ul></li>
						<li><a href="#">Edit Product</a>
							<ul class="sub2">
								<li><a href="#">Electronics</a>
									<ul class="sub3">
										<li><a href="#">Mobiles</a></li>
										<li><a href="#">Laptops</a></li>
									</ul></li>
								<li><a href="Admin_Men_EditPrdct.jsp">Mens Wear</a></li>
								<li><a href="#">Women Wear</a></li>
								<li><a href="#">Kids Wear</a></li>
							</ul></li>
						<li><a href="#">Delete Product</a>
							<ul class="sub2">
								<li><a href="#">Electronics</a>
									<ul class="sub3">
										<li><a href="#">Mobiles</a></li>
										<li><a href="#">Laptops</a></li>
									</ul></li>
								<li><a href="Admin_Men_DeletePrdct.jsp">Mens Wear</a></li>
								<li><a href="#">Women Wear</a></li>
								<li><a href="#">Kids Wear</a></li>
							</ul></li>
					</ul></li>
				<li><a href="#">Manage Order Status</a>
					<ul class="sub1">
						<li><a href="ManageOrderStatus.jsp">Order Stat Page</a></li>
					</ul></li>
				<li class="active"><a href="#">Manage Users</a>
					<ul class="sub1">
						<li><a href="View_User_AdminForDelete.jsp">Delete User</a></li>
						<li><a href="View_User_Admin.jsp">View Users</a></li>
					</ul></li>
				<li class="active"><a href="#">Manage Retailers</a>
					<ul class="sub1">
						<li><a href="View_Retailer_AdminForDelete.jsp">Delete Retailer</a></li>
						<li><a href="View_Retailer_Admin.jsp">View Retailer</a></li>
					</ul></li>

				<li class="active"><a href="#">Manage Reports</a>
					<ul class="sub1">
						<li><a href="#">Daily Sales </a></li>
						<li><a href="#">Monthly Sales </a></li>
						<li><a href="#">Yearly Sales</a></li>
						<li><a href="#">Product-wise Sales </a></li>
					</ul></li>
			</ul>
		</div>

		<div id="menu3">
			<!-- This is left menu for Orders -->

			<div id="table_order">
				<p class="effect">
					<a href="TrackOrder.jsp">Track Order</a>
				</p>
				<br />
				<p class="effect">
					<a href="#">Latest Orders</a>
				</p>
				<br />
				<p class="effect">
					<a href="DeliveredOrders.jsp">Delivered Orders</a>
				</p>
				<br />
				<p class="effect">
					<a href="CancelledOrders.jsp">Cancelled Orders</a>
				</p>
				<br />
				<p class="effect">
					<a href="PendingOrders.jsp">Pending Orders</a>
				</p>
				<br />
				<p class="effect">
					<a href="RefundedOrders.jsp">Refunded Orders</a>
				</p>
				<br />
				<p class="effect">
					<a href="All_OrderBy_Status.jsp">All Orders By Status</a>
				</p>
			</div>
		</div>

		<div id="content">
			<!-- This is the content div -->

			<form action="Admin_Women_InsertPrdct" method="post">
				<%
					String mssg = request.getParameter("Mssg");
				%>
				<table id="ProductEntry" align="center"
					style="width: 40%; height: 469px;" cellspacing="8">
					<tr>
						<th colspan="2">New Product Details</th>
					</tr>
					<tr>
						<td style="padding-left: 5%"><input type="text"
							name="ProductAddedOn" id="ppp" readonly="readonly"
							onkeydown="return false;"
							placeholder="Product Added On (dd-mm-yy)" size="39"
							onclick="myFunction()"></td>
						<td></td>
					</tr>
					<tr id="product">
						<td style="padding-left: 5%;"><input type="text"
							name="Product_Id" placeholder="Product_Id" size="39"
							id="ProductId" onblur="Product_IdValidate(this.value)"></td>
						<td id="productloc"></td>
					</tr>
					<tr>
						<td id="dd" style="padding-left: 5%"><select
							name="Category_MenWear" onchange="show(this.value)">
								<option selected="selected" value="Category">Select
									Your Category</option>
								<option value="Casual">Casual</option>
								<option value="Formals">Formals</option>
								<option value="Ethnic">Ethnic</option>
						</select></td>
						<td></td>
					</tr>
					<tr>
						<td id="ff" style="padding-left: 5%"><select
							name="Type_MenWear" id="Type_MenWear">
								<option selected="selected" id="Type">Select Your Type</option>
						</select></td>
						<td></td>
					</tr>
					<tr>
						<td style="padding-left: 5%"><input type="text"
							name="BrandName" id="BrandName" placeholder="Brand Name"
							size="39" onblur="return TypeValidate()"></td>
						<td id="brandnameloc"></td>
					</tr>

					<tr>
						<td style="padding-left: 5%"><input type="text" name="Fit"
							id="Fit" placeholder="Fittings like Regular,Tappered,Skinny etc"
							size="39" onblur="return FittingsValidate()"></td>
						<td id="fittingsloc"></td>
					</tr>
					<tr>
						<td style="padding-left: 5%"><input type="text" name="Price"
							id="Price" placeholder="Price" size="39"
							onblur="return PriceValidate()"></td>
						<td id="priceloc"></td>
					</tr>

					<tr>
						<td style="padding-left: 5%"><textarea rows="6" cols="41"
								name="About_The_Product" id="About_The_Product"
								placeholder="About the Product"
								onblur="return AboutTheProduct()"></textarea></td>
						<td id="aboutloc"></td>
					</tr>
					<tr>
						<td style="padding-left: 5%"><input type="text" name="Header"
							id="Header" placeholder="Tag line about The Product" size="39"
							onblur="return TaglineValidate()"></td>
						<td id="tagloc"></td>
					</tr>
					<tr>
						<td><input type="hidden" value="<%=mssg%>" id="hii">
						</td>
					</tr>
					<tr>
						<td style="padding-left: 9%"><input type="submit"
							name="Submit_Product" value="Add Product" size="25"></td>
					</tr>



				</table>
			</form>

			<!-- <p id="Image">New Color Details</p> -->


			<form action="Admin_Women_InsertColor" method="post">
				<table id="Color_Table" style="width: 49.3%; height: 200px;"
					cellspacing="4" align="center">
					<tr>
						<th colspan="2">Add Color Details</th>
					</tr>
					<tr>
						<td colspan="2"><select name="Product_Id"
							onchange="show_color(this.value)">
								<option selected="selected" value="Id">Select Your
									Product</option>
								<%
									Connection con4 = Conct.conect();
									PreparedStatement ps4 = null;
									String sql4 = "Select Product_Id from admin_productinsert_women";
									ps4 = con4.prepareStatement(sql4);
									ResultSet rs4 = ps4.executeQuery();
									while (rs4.next()) {
								%>
								<option value="<%=rs4.getString(1)%>"><%=rs4.getString(1)%></option>

								<%
									}
								%>
						</select></td>
					</tr>
					<tr>
						<td style="padding-left: 12.3%;"><input type="text"
							name="Color1" placeholder="Available Color 1" size="16"></td>
						<td style="padding-right: 10%;"><input type="text"
							name="Quantity1" placeholder="Available Quantity 1" size="16"
							class="size"></td>
					</tr>

					<tr>
						<td style="padding-left: 12.3%;"><input type="text"
							name="Color2" placeholder="Available Color 2" size="16"></td>
						<td style="padding-right: 10%;"><input type="text"
							name="Quantity2" placeholder="Available Quantity 2" size="16"
							class="size"></td>
					</tr>
					<tr>
						<td style="padding-left: 12.3%;"><input type="text"
							name="Color3" placeholder="Available Color 3" size="16"></td>
						<td style="padding-right: 10%;"><input type="text"
							name="Quantity3" placeholder="Available Quantity 3" size="16"
							class="size"></td>
					</tr>


					<tr>
						<td style="padding-left: 12.3%;"><input type="text"
							name="Color4" placeholder="Available Color 4" size="16"></td>
						<td style="padding-right: 10%;"><input type="text"
							name="Quantity4" placeholder="Available Quantity 4" size="16"
							class="size"></td>
					</tr>

					<tr>
						<td style="padding-left: 12.3%;"><input type="text"
							name="Color5" placeholder="Available Color 5" size="16"></td>
						<td style="padding-right: 10%;"><input type="text"
							name="Quantity5" placeholder="Available Quantity 5" size="16"
							class="size"></td>
					</tr>

					<tr>
						<td style="padding-left: 12.3%;"><input type="Submit"
							value="Add Color"></td>
						<td style="padding-right: 10%;"><input type="text"
							name="Total Quantity" placeholder=" Total Quantity" size="16"
							id="Total_Quantity"></td>
					</tr>

				</table>
			</form>

			<!-- <p id="Image">New Image Details</p> -->
			<form action="Admin_Women_InsertImage" method="post"
				enctype="multipart/form-data">
				<table id="Image_Table"
					style="min-width: 49.3%; height: 230px; margin-top: 13px;"
					cellspacing="4" align="center">
					<tr>
						<th colspan="2">Add Image/Size Details</th>
					</tr>

					<tr>
						<td><select name="Image_Table2" id="Image_Table2"
							onchange="show_colorforimage(this.value)">
								<option selected="selected" value="Id">Select Your
									Product</option>
								<%
									Connection con6 = Conct.conect();
									PreparedStatement ps6 = null;
									String sql6 = "Select Product_Id from admin_productinsert_women";
									ps6 = con6.prepareStatement(sql6);
									ResultSet rs6 = ps6.executeQuery();

									while (rs6.next()) {
								%>

								<option value="<%=rs6.getString(1)%>"><%=rs6.getString(1)%></option>

								<%
									}
								%>
						</select></td>
						<td id="select_2"><select name="Image_ColorTable2">
								<option selected="selected" value="Id">Select Your
									Color</option>
						</select></td>
					</tr>

					<tr>
						<td><table id="image_sizetable"
								style="width: 23.5%; height: 50px; margin-top: 0px; padding-top: 0px; padding-left: 4%;"
								cellspacing="6" align="center">

								<tr>
									<td style="padding-left: 6%;"><input type="text"
										name="Size1" placeholder="Size 1" size="16" class="size"></td>
								</tr>

								<tr>
									<td style="padding-left: 6%;"><input type="text"
										name="Size2" placeholder="Size 2" size="16" class="size"></td>
								</tr>
								<tr>
									<td style="padding-left: 6%;"><input type="text"
										name="Size3" placeholder="Size 3" size="16" class="size"></td>
								</tr>

								<tr>
									<td style="padding-left: 6%"><input type="text"
										name="Size4" placeholder="Size 4" size="16" class="size"></td>
								</tr>
								<tr>
									<td style="padding-left: 6%;"><input type="text"
										name="Size5" placeholder="Size 5" size="16" class="size"></td>
								</tr>
							</table></td>
						<td>
							<table id="image_sizetable" width="200px" height="100px;"
								cellspacing="2" align="center" style="padding-right: 0px;">
								<tr>
									<td><input type="file" name="Image1"></td>
								</tr>
								<tr>
									<td><input type="file" name="Image2"></td>
								</tr>
								<tr>
									<td><input type="file" name="Image3"></td>
								</tr>
								<tr>
									<td><input type="file" name="Image4"></td>
								</tr>
								<tr>
									<td><input type="file" name="Image5"></td>
								</tr>
							</table>

						</td>
					</tr>
					<tr>
						<td colspan="2" style="height: 8px;"><input type="submit"
							value="Add Image/Size"></td>

					</tr>
				</table>
			</form>
		</div>

		<div id="menu5">
			<!-- This is the left menu for Products -->

			<div id="table_orders">

				<p class="effect">
					<a href="AddProductsByCategory.jsp">All Products By Category</a>
				</p>
				<br />
				<p class="effect">
					<a href="Pending_RetailerApproval.jsp">Pending Retailer Approval</a>
				</p>
				<br />
				<p class="effect">
					<a href="#">All Visits</a>
				</p>
				<br />
				<p class="effect">
					<a href="LowStockPrdcts.jsp">Low Stock Products</a>
				</p>
				<br />
				<p class="effect">
					<a href="#">Offers and PromoCode</a>
				</p>
				<br />
				<p class="effect">
					<a href="UserFeedback.jsp">Complains/Feedback</a>
				</p>
			</div>
		</div>

	</div>
</body>
</html>