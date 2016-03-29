<%@page import="Bean.Conct"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Admin_MensWear_Insert</title>
<link href="css/style_masterpage.css" rel='stylesheet' type='text/css' />
<link rel='stylesheet' type='text/css' href="css/style_navmenu.css" />
<link rel='stylesheet' type='text/css' href="css/style_masterpageretailer.css" />
<link rel='stylesheet' type='text/css' href="css/style_AllOrderStat.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript">


function status() {
	if ("${param.Message}") {
		alert("${param.Message}");
	}
}
</script>
</head>


<body onload="status()">
	<div id="container"><!-- This is wrapper div -->
	
		<div id="header"><!-- This is header div -->
		<%
			HttpSession sees=request.getSession();
			   String name=(String)sees.getAttribute("Username");
			%>
			<p>Logged in as <%=name %>&nbsp&nbsp<a href="#">Log out</a></p>
		</div>
		
		<div id="menu"><!-- This is navigation menu -->
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

		<div id="menu3" style="margin-left: 2%;"><!-- This is left menu for Orders -->
			
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
		
		<div id="contentOS" style="margin-left: 18%; width: 78%;"><!-- This is the content div -->
		<form method="post" action="Update_Retailer_Approval">
		<table id="status_prdcts" style="width: 98%; margin-left: 1%">
		<tr style="height: 30px;">
		<th style="width: 15%;">First Name</th>
		<th style="width: 15%;">Last Name</th>
		<th style="width: 20%;">Email</th>
		<th style="width: 15%;">PhoneNo</th>
		<th style="width: 20%;">Status</th>
		<th>Update</th>
		
		
		</tr>
            <%
            Connection con=Conct.conect();
			String sql="Select * from pending_retls_approval where Status=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,"Pending");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
			%>
			<tr>
			<td><%=rs.getString("FirstName") %></td>
			<td><%=rs.getString("LastName") %></td>
			<td><%=rs.getString("Email") %></td>
			<td><%=rs.getString("PhoneNo") %></td>
			<td><select name="Status" style="width: 120px;">
			<option selected="selected" value="<%=rs.getString("Status")%>"><%=rs.getString("Status") %></option>
			<option value="Approved">Approved</option>
			<option value="NotApproved">Not Approved</option>
			</select></td>
			<td><input type="hidden" name="Email" value="<%=rs.getString("Email")%>"/></td>
			<td><input type="submit" value="Update"></td>
			
			
			</tr>
			<% 	
			}
			%>
            </table>
            </form>
		</div>
			
		<div id="menu5" style="margin-left: 2%;"><!-- This is the left menu for Products -->
			
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
					<a href="UserFeedback.jsp">Complains/Feedback</a>
				</p>
			</div>
		</div>

	</div>
</body>
</html>