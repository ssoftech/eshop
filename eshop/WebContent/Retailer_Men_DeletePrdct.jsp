<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Retailer's Profile</title>
<link href="css/style_masterpageretailer.css" rel='stylesheet'
	type='text/css' />
<link rel='stylesheet' type='text/css' href="css/style_navmenu.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript">
	function status() {

		if ("${param.Message}") {
			alert("${param.Message}");
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

	//Ajax code to show if product is there

	function show_Product(str) {
		var product = document.getElementById("Product_Id").value;
		window.location = "Show_ExistingProduct.jsp?Product=" + product + "";
	}

	//Validaitng Product Table Fields

	function show_ExistingProduct_Retailer(str) {

		var retailer_name = document.getElementById("Product_SoldBy").value;
		if (str.length == 0) {
			document.getElementById("productloc").innerHTML = "<img src='images/Wrong_mark.png'/>";

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
			document.getElementById("brandnameloc").innerHTML = "<img src='images/Wrong_mark.png'/>";
			status = false;
		}
	}

	function RetailerNameValidate() {

		var retailername = document.getElementById("Product_SoldBy").value;
		var status = false;
		if (retailername == null || retailername == "") {
			document.getElementById("retailernameloc").innerHTML = "<img src='images/Wrong_mark.png'/>";
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
		onload = function() {
			status();
			date_time('date_time');
		}
	</script>
	<div id="container">
		<!-- This is wrapper div -->

		<div id="header">
			<!-- This is header div -->
			<p><%
			
			HttpSession sees=request.getSession();
			String email=(String)sees.getAttribute("Email");
           %>
           Logged in as <%=email %><a href="Logout_Retailer">Log Out</a>
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
								<li><a href="Admin_Men_DeletePrdct.jsp">Mens Wear</a></li>
								<li><a href="#">Women Wear</a></li>
								<li><a href="#">Kids Wear</a></li>
							</ul></li>
					</ul></li>
				<li><a href="#">View My Products</a></li>
				<li class="active"><a href="#">Others' Products</a></li>
			</ul>
		</div>



		<div id="ownProdContent">
			<!-- This is the content div -->
			<table class="OwnProdTab1" border="1">
				<tr>
					<th>AddedOn</th>
					<th>Product_Id</th>
					<th>Qty</th>
					<th>Category</th>
					<th>Type</th>
					<th>BrandName</th>
					<th>Fittings</th>
					<th>Price</th>
					<th>ColorName</th>
					<th>Image</th>
				</tr>
				<tr>
					<%
						int count = 0;
						String arg[] = new String[6];
						Connection con = Conct.conect();
						Connection con2 = Conct.conect();
						Connection con3 = Conct.conect();
						String s = "";
						String pid = "";
						String sql = "Select count(a1.ColorName)from retailer_colorinsertmen a1  inner join  retailer_productinsertmen a2 on a1.Product_Id=a2.Product_Id join retailer_register a3 on a2.Retailer_Name=a3.FirstName and a3.Email=?";
						PreparedStatement ps = con.prepareStatement(sql);
						ps.setString(1, email);
						ResultSet rs = ps.executeQuery();
						if (rs.next()) {
							count = rs.getInt(1);
							/* out.println(count); */

						}

						String sql3 = "Select a1.ProductAddedOn,a1.Product_Id,a1.Category,a1.Type,a1.BrandName,a1.Fittings,a1.Price,a1.About,a1.Tagline,a2.ColorName, a2.Quantity from retailer_productinsertmen a1 inner join retailer_colorinsertmen a2 on a1.Product_Id=a2.Product_Id  join retailer_register a3 on a1.Retailer_Name=a3.FirstName and a3.Email=? ";
						PreparedStatement ps3 = con3.prepareStatement(sql3);
						ps3.setString(1, email);
						ResultSet rs3 = ps3.executeQuery();
						if (rs3.next()) {
							pid = rs3.getString("Product_Id");
					%>
					<td><%=rs3.getString("ProductAddedOn")%></td>
					<td><%=rs3.getString("Product_Id")%></td>
					<td>Qty</td>
					<td><%=rs3.getString("Category")%></td>
					<td><%=rs3.getString("Type")%></td>
					<td><%=rs3.getString("BrandName")%></td>
					<td><%=rs3.getString("Fittings")%></td>
					<td><%=rs3.getDouble("Price")%></td>
					<%
						}

				 String sql2 = "Select a1.ColorName from retailer_colorinsertmen a1 inner join retailer_productinsertmen a2 on a1.Product_Id=a2.Product_Id join retailer_register a3 on a2.Retailer_Name=a3.FirstName and a3.Email=?";
						PreparedStatement ps2 = con2.prepareStatement(sql2);
						ps2.setString(1, email);
						ResultSet rs2 = ps2.executeQuery();
						int i = 0;
						while (rs2.next()) {
							arg[i] = rs2.getString("ColorName");
							i++;

						}
				%>
				<td>
						<%
							for (int j = 0; j < count; j++) {
								s = "  " + arg[j] + "";
								out.println(s);
						 
 	} 
						%>&nbsp 
					</td>
					<td style="padding-bottom: 5px;"><img src="Show_Image_AllProducts?Product_Id=<%=pid%>"
						height="40px" width="50px;"></td>
						
						<td style="padding-bottom: 5px;"><a href="DeleteProductsRetailer?Pid=<%= pid %>">Delete</a></td>
				</tr>
			</table>


		</div>
</body>
</html>