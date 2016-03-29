<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Retailer_MensWear_Insert</title>
<link href="css/style_masterpageretailer.css" rel='stylesheet'
	type='text/css' />
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
			xmlhttp.open("GET", "ShowTypeKids.jsp?CategorySelect=" + str, true);
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
					"Edit_DetailsRetailer_ImageKidsColor.jsp?Product=" + str,
					true);
			xmlhttp.send();
		}

	}

	//Ajax code to show if product is there

	function show_Product(str) {
		var product = document.getElementById("Product_Id").value;
		window.location = "Show_ExistingProduct.jsp?Product=" + product + "";
	}

	//Validaitng Product Table Fields

	function show_ExistingProduct_Retailer(str) {

		var retailer_name = document.getElementById("Product_SoldBy").value;
		if (str.length == 0) {
			document.getElementById("productloc").innerHTML = "";

		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("product").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "Show_ExistingProduct_Retailer.jsp?Product_Id="
					+ str + "&Retailername=" + retailer_name, true);
			xmlhttp.send();
		}

	}

	function TypeValidate() {

		var type = document.getElementById("BrandName").value;
		var status = false;
		if (type == null || type == "") {
			document.getElementById("brandnameloc").innerHTML = "";
			status = false;
		}
	}

	function RetailerNameValidate() {

		var retailername = document.getElementById("Product_SoldBy").value;
		var status = false;
		if (retailername == null || retailername == "") {
			document.getElementById("retailernameloc").innerHTML = "";
			status = false;
		}
	}

	function FittingsValidate() {

		var fittings = document.getElementById("Fit").value;
		var status = false;
		if (fittings == null || fittings == "") {
			document.getElementById("fittingsloc").innerHTML = "";
			status = false;
		}
	}

	function PriceValidate() {

		var price = document.getElementById("Price").value;
		var status = false;
		if (price == null || price == "") {
			document.getElementById("priceloc").innerHTML = "";
			status = false;
		}
	}

	function AboutTheProduct() {

		var about = document.getElementById("About_The_Product").value;
		var status = false;
		if (about == null || about == "") {
			document.getElementById("aboutloc").innerHTML = "";
			status = false;
		}
	}
	function TaglineValidate() {

		var tagline = document.getElementById("Header").value;
		var status = false;
		if (tagline == null || tagline == "") {
			document.getElementById("tagloc").innerHTML = "";
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
		onload = function() {
			status();
			date_time('date_time');
		}
	</script>
	<div id="container">
		<!-- This is wrapper div -->

		<div id="header">
			<!-- This is header div -->
			<p>
				<%
					HttpSession sees = request.getSession();
					String email = (String) sees.getAttribute("Email");
				%>
				Logged in as
				<%=email%><a href="Logout_Retailer">Log Out</a>

			</p>
			<div class="headerClock">
				<span id="date_time"></span>
			</div>
		</div>

		<div id="menu">
			<!-- This is navigation menu -->
			<ul id="navmenu" style="margin-left: 130px;">
				<li><a href="Retailer_profile.jsp"> My Profile</a></li>
				<li class="active"><a href="#">Manage Products</a>
					<ul class="sub1">
						<li><a href="#">Add New Product</a>
							<ul class="sub2">
								<li><a href="#">Electronics</a>
									<ul class="sub3">
										<li><a href="#">Mobiles</a></li>
										<li><a href="#">Laptops</a></li>
									</ul></li>
								<li><a href="Retailer_Men_InsertPrdct.jsp">Mens Wear</a></li>
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
								<li><a href="Retailer_Men_EditPrdct.jsp">Mens Wear</a></li>
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
								<li><a href="Retailer_Men_DeletePrdct.jsp">Mens Wear</a></li>
								<li><a href="#">Women Wear</a></li>
								<li><a href="#">Kids Wear</a></li>
							</ul></li>
					</ul></li>
				<li><a href="ViewOwnProducts_Retailer.jsp">View My Products</a></li>
				<li class="active"><a href="View_Other_RetailerProducts.jsp">Others'
						Products</a></li>
			</ul>
		</div>



		<div id="content">
			<!-- This is the content div -->

			<form action="Retailer_Kids_Insrt_Prdct" method="post">
				<%
					Connection con = Conct.conect();
					String sql = "Select FirstName from Retailer_Register where Email=?";
					PreparedStatement ps = con.prepareStatement(sql);
					String name = "";
					ps.setString(1, email);
					ResultSet rs = ps.executeQuery();
					if (rs.next()) {
						name = rs.getString("FirstName");
					}
				%>
				<table id="ProductEntry" align="center"
					style="width: 35%; height: 469px;" cellspacing="8">
					<tr>
						<th colspan="2">New Product Details</th>
					</tr>
					<tr>
						<td style="padding-left: 5%;"><input type="text"
							name="ProductAddedOn" id="ppp" readonly="readonly"
							onkeydown="return false;"
							placeholder="Product Added On (dd-mm-yy)" size="39"
							onclick="myFunction()"></td>
						<td></td>
					</tr>
					<tr>
						<td style="padding-left: 5%;"><input type="text"
							name="Product_SoldBy" id="Product_SoldBy" value="<%=name%>"
							readonly="readonly" placeholder="Retailer Name" size="39"></td>
						<td id="retailerloc"></td>
					</tr>
					<tr id="product">
						<td style="padding-left: 5%;"><input type="text"
							name="Product_Id" placeholder="Product_Id" size="39"
							id="ProductId" onblur="show_ExistingProduct_Retailer(this.value)"></td>
						<td id="productloc" style="width: 25px; position: fixed;"></td>
					</tr>
					<tr>
						<td id="dd" style="padding-left: 5%;"><select
							name="Category_KidsWear" onchange="show(this.value)">
								<option selected="selected" value="Category">Select
									Your Category</option>
								<option value="KidsBaby">Kids & Baby Clothing</option>
						</select></td>
						<td></td>
					</tr>
					<tr>
						<td id="ff" style="padding-left: 5%;"><select
							name="Type_KidsWear" id="Type_KidsWear">
								<option selected="selected" id="Type">Select Your Type</option>
						</select></td>
						<td></td>
					</tr>
					<tr>
						<td style="padding-left: 5%;"><input type="text"
							name="BrandName" required id="BrandName" placeholder="Brand Name"
							size="39" onblur="return TypeValidate()"></td>
						<td id="brandnameloc"></td>
					</tr>

					<tr>
						<td style="padding-left: 5%;"><input type="text" name="Fit"
							id="Fit" placeholder="Fittings like Regular,Tappered,Skinny etc"
							size="39" onblur="return FittingsValidate()"></td>
						<td id="fittingsloc"></td>
					</tr>
					<tr>
						<td style="padding-left: 5%;"><input type="text" name="Price"
							id="Price" placeholder="Price" size="39"
							onblur="return PriceValidate()"></td>
						<td id="priceloc"></td>
					</tr>

					<tr>
						<td style="padding-left: 5%;"><textarea rows="6" cols="41"
								name="About_The_Product" id="About_The_Product"
								placeholder="About the Product"
								onblur="return AboutTheProduct()"></textarea></td>
						<td id="aboutloc"></td>
					</tr>
					<tr>
						<td style="padding-left: 5%;"><input type="text"
							name="Header" id="Header"
							placeholder="Tag line about The Product" size="39"
							onblur="return TaglineValidate()"></td>
						<td id="tagloc"></td>
					</tr>

					<tr>
						<td style="padding-left: 9%;"><input type="submit"
							name="Submit_Product" value="Add Product" size="25"></td>
					</tr>



				</table>
			</form>


			<!-- New Color Details -->
			<form action="Retailer_Kids_InsertColor" method="post">
				<table id="Color_Table" style="width: 49.3%; height: 250px;"
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
									String sql4 = "Select Product_Id from retailer_productinsertkids a1 inner join Retailer_Register a2 on a1.Retailer_Name=a2.FirstName and Email=? ";
									ps4 = con4.prepareStatement(sql4);
									ps4.setString(1, email);
									ResultSet rs4 = ps4.executeQuery();
									while (rs4.next()) {
								%>
								<option value="<%=rs4.getString("Product_Id")%>"><%=rs4.getString("Product_Id")%></option>

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
							name="Total_Quantity" placeholder=" Total Quantity" size="16"
							id="Total_Quantity"></td>
					</tr>

				</table>
			</form>

			<!-- <p id="Image">New Image Details</p> -->
			<form action="Retaler_Kids_InsertImage" method="post"
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
									String sql6 = "Select Product_Id from retailer_productinsertkids a1 inner join Retailer_Register a2 on a1.Retailer_Name=a2.FirstName and Email=?";
									ps6 = con6.prepareStatement(sql6);
									ps6.setString(1, email);
									ResultSet rs6 = ps6.executeQuery();

									while (rs6.next()) {
								%>

								<option value="<%=rs6.getString("Product_Id")%>"><%=rs6.getString("Product_Id")%></option>

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
									<td style="padding-left: 14%;"><input type="text"
										name="Size1" placeholder="Size 1" size="20" class="size"></td>
								</tr>

								<tr>
									<td style="padding-left: 14%;"><input type="text"
										name="Size2" placeholder="Size 2" size="20" class="size"></td>
								</tr>
								<tr>
									<td style="padding-left: 14%;"><input type="text"
										name="Size3" placeholder="Size 3" size="20" class="size"></td>
								</tr>

								<tr>
									<td style="padding-left: 14%"><input type="text"
										name="Size4" placeholder="Size 4" size="20" class="size"></td>
								</tr>
								<tr>
									<td style="padding-left: 14%;"><input type="text"
										name="Size5" placeholder="Size 5" size="20" class="size"></td>
								</tr>
							</table></td>
						<td>
							<table id="image_sizetable" width="200px" height="100px;"
								cellspacing="2" align="center" style="padding-right: 0px;">
								<tr>
									<td style="padding-left: 14%;"><input type="file"
										name="Image1"></td>
								</tr>
								<tr>
									<td style="padding-left: 14%;"><input type="file"
										name="Image2"></td>
								</tr>
								<tr>
									<td style="padding-left: 14%;"><input type="file"
										name="Image3"></td>
								</tr>
								<tr>
									<td style="padding-left: 14%;"><input type="file"
										name="Image4"></td>
								</tr>
								<tr>
									<td style="padding-left: 14%;"><input type="file"
										name="Image5"></td>
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
	</div>
</body>
</html>