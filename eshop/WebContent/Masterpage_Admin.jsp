<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/style_masterpage.css" rel='stylesheet' type='text/css' />
<link rel='stylesheet' type='text/css' href="css/style_navmenu.css" />
</head>
<body>
	<div id="container">
		<div id="header">
			<h3>This is header</h3>
		</div>
		<div id="menu">
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
			<!-- <table   id="table_order" cellspacing="9">
<tr height="5"><td class="effect"><a href="#">Track Order</a></td>
</tr>


<tr><td class="effect"><a href="#">Latest Orders</a></td></tr>

<tr><td class="effect"><a href="#">Delivered Orders</a></td></tr>


<tr><td class="effect"><a href="#">Cancelled Orders</a></tr>

<tr><td class="effect"><a href="#">Pending Orders</a></td></tr>

<tr><td class="effect"><a href="#">Refunded Orders</a></td></tr>

<tr><td class="effect"><a href="#">All Orders By Status</a></td></tr>
</table> -->
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
			<h3>This is content</h3>

		</div>
		<div id="menu5">
			<!-- <table border="1">
<tr><td><a href="#">All Products By Category</a></td>
</tr>
<tr><td><a href="#">Categories</a></td></tr>
<tr><td><a href="#">All Visits</a></td></tr>
<tr><td><a href="#">Low Stock Products</a></td></tr>
<tr><td><a href="#">Offers and PromoCode</a></td></tr>
<tr><td><a href="#">Complains/Feedback</a></td></tr>
</table> -->
			<div id="table_orders">

				<p class="effect">
					<a href="#">All Products By Category</a>
				</p>
				<br />
				<p class="effect">
					<a href="#">Categories</a>
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