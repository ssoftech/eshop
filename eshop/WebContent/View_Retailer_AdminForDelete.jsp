<%@page import="Model.View_Retailer_Admin.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="Model.View_User_Admin"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*,java.sql.*"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Delete Users</title>
<link href="css/style_masterpage.css" rel='stylesheet' type='text/css' />
<link rel='stylesheet' type='text/css' href="css/style_navmenu.css" />
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript">
	function status() {

		if ("${param.Message}") {
			alert("${param.Message}");
		}
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
			<p>This is header</p>
			<div class="headerClock">
				<span id="date_time"></span>
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
			<table class="ViewUserAdminDelete" border="1" style="margin-left: 20px; text-align: center;">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Phone Number</th>
					<th>State</th>
					<th>City</th>
					<th>GetOut</th>
				</tr>

				<%
					String id = "";
					ArrayList<Retailer_Register> arr = Model.View_Retailer_Admin.Retailer_Admin();
					if (arr != null) {
						Iterator<Retailer_Register> it = arr.iterator();

						while (it.hasNext()) {
							Retailer_Register ob = it.next();
							id = ob.getEmail();
				%>
				<tr>
					<td><%=ob.getFirstName()%></td>
					<td><%=ob.getLastName()%></td>
					<td><%=ob.getEmail()%></td>
					<td><%=ob.getPhoneNo()%></td>
					<td><%=ob.getState()%></td>
					<td><%=ob.getCity()%>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>

					<td><a href="RetailerDeleteByAdmin?Id=<%=id%>"><i class="fa fa-times fa-lg"></i></a></td>
				</tr>


				<%
					}

					}
				%>
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