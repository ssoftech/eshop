<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Admin_Profile</title>
<link href="css/style_masterpage.css" rel='stylesheet' type='text/css' />
<link rel='stylesheet' type='text/css' href="css/style_navmenu.css" />
<link rel='stylesheet' type='text/css' href="css/style_AllOrderStat.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript">
	function status() {

		if ("${param.Mssg}") {
			alert("${param.Mssg}");
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


<body onload="status()">
	<%
		String Empid = request.getParameter("Empid");
		String name = "";

		Connection con = Conct.conect();
		String sql = "Select FirstName, LastName from admin_register where EmployeeId=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, Empid);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			name = (rs.getString("FirstName")) + " "
					+ (rs.getString("LastName"));
		}
	%>
	<div id="container">
		<!-- This is wrapper div -->

		<div id="header">
			<!-- This is header div -->

		<%
			HttpSession sees=request.getSession();
			   String name2=(String)sees.getAttribute("Username");
			   System.out.println("Name is"+name2);
			%>
			<p>Logged in as <%=name2 %>&nbsp&nbsp<a href="#">Log out</a></p>
			<div class="headerClock">
				<span id="date_time"></span>
				<script type="text/javascript">
					window.onload = date_time('date_time');
				</script>
			</div>
		</div>

		<div id="menu">
			<!-- This is navigation menu -->
			<ul id="navmenu">
				<li><a href="#"> My Profile</a></li>
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
						<li><a href="View_Retailer_AdminForDelete.jsp">Delete
								Retailer</a></li>
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

		<div id="content" style="font-family: sans-serif;">
			<!-- This is the content div -->
			<form method="post" action="Update_Retailer_Approval">
				<table id="status_prdcts" style="width: 98%; margin-left: 1%;">
					<tr style="height: 35px;">
						<th style="width: 12%;">Date</th>
						<th style="width: 15%;">Product_Id</th>
						<th style="width: 15%;">Full_Name</th>
						<th style="width: 28%;">Email</th>
						<th>Feedback</th>

					</tr>
					<%
						Connection con1 = Conct.conect();
						String sql1 = "Select * from user_feedback Order By Date desc";
						PreparedStatement ps1 = con1.prepareStatement(sql1);
						ResultSet rs1 = ps1.executeQuery();
						while (rs1.next()) {
					%>
					<tr style="min-height: 30px;">
						<td><%=rs1.getString("Date")%></td>
						<td><%=rs1.getString("Product_Id")%></td>
						<td><%=rs1.getString("Full_Name")%></td>
						<td><%=rs1.getString("Email")%></td>
						<td><%=rs1.getString("Feedback")%></td>
					</tr>
					<%
						}
					%>

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
					<a href="Pending_RetailerApproval.jsp">Pending Retailer
						Approval</a>
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