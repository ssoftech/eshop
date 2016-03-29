<%@page import="java.util.Iterator"%>
<%@page import="Model.View_User_Admin.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*,java.sql.*"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>View Users</title>
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
			xmlhttp.open("GET", "Edit_Details_ImageMenColor.jsp?Product_Id="
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
		onload = function() {
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
			   System.out.println("Name is"+name);
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
					<a href="#">Track Order</a>
				</p>
				<br />
				<p class="effect">
					<a href="#">Latest Orders</a>
				</p>
				<br />
				<p class="effect">
					<a href="#">Delivered Orders</a>
				</p>
				<br />
				<p class="effect">
					<a href="#">Cancelled Orders</a>
				</p>
				<br />
				<p class="effect">
					<a href="#">Pending Orders</a>
				</p>
				<br />
				<p class="effect">
					<a href="#">Refunded Orders</a>
				</p>
				<br />
				<p class="effect">
					<a href="#">All Orders By Status</a>
				</p>
			</div>
		</div>

		<div id="content">
			<!-- This is the content div -->
			<table>
<tr>
<th>Product_Id</th>
<th>Color Name</th>
<th>Quantity</th>
</tr>
<tr>
<%
Connection con=Conct.conect();
String sql="Select * from lowstockprdcts ";
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
while(rs.next())
{
%>
<td><%=rs.getString("Product_Id") %></td>
<td><%=rs.getString("ColorName") %></td>
<td><%=rs.getString("Quantity") %></td>
	
<%
}



%>
</tr>
</table>
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
					<a href="#">Low Stock Products</a>
				</p>
				<br />
				<p class="effect">
					<a href="#">Offers and PromoCode</a>
				</p>
				<br />
				<p class="effect">
					<a href="#">Complains/Feedback</a>
				</p>
			</div>
		</div>
	</div>
</body>
</html>
</body>
</html>