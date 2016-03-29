<%@page import="Bean.Conct"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Manage Order Status</title>
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
			   System.out.println("Name is"+name);
			%>
			<p>Logged in as <%=name2%>&nbsp&nbsp<a href="#">Log out</a></p>
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


		<div id="contentOS" style="width: 99%; margin-left: 0.5%; margin-right: 0.5%;">
			<!-- This is the content div -->
			<form method="get" action="UpdateOrderStatus">
				<table id="status_prdcts" rules="cols" style="border: 1px solid black; width: 99%; margin-top: 1.3%; margin-left: 0.7%;">
					<tr style="border-bottom: 1px solid black;">
						<th style="width: 14%; height: 40px;">Order_No</th>
						<th style="width: 20%;">Customer_Name</th>
						<th style="width: 20%;">Email</th>
						<th>PhoneNo</th>
						<th>Order_Date</th>
						<th>Order_Amount</th>
						<th style="width: 15%;">Status</th>
						<th></th>
					</tr>
					
						<%
							Connection con1 = Conct.conect();
							String sql1 = "Select * from order_table where Status=?";
							PreparedStatement ps1 = con.prepareStatement(sql1);
							ps1.setString(1, "Processing");
							ResultSet rs1 = ps1.executeQuery();
							while (rs1.next()) {
								String order = rs1.getString("Order_No");
						%>
						<%-- <td><input type="hidden" name="Order"
							value="<%=rs1.getString("Order_No")%>" /></td> --%>
						<tr style="height: 45px;">
						<td><%=rs1.getString("Order_No")%>
						<td><%=rs1.getString("Customer_Name")%></td>
						<td><%=rs1.getString("Email")%></td>
						<td><%=rs1.getString("PhoneNo")%></td>
						<td><%=rs1.getString("Order_Date")%></td>
						<td><%=rs1.getDouble("Order_Amount")%></td>
						<td><select name="status" style="width: 90%;">
								<option value="<%=rs1.getString("Status")%>" selected="selected"><%=rs1.getString("Status")%></option>
								<option value="Cancelled">Cancelled</option>
								<option value="Delivered">Delivered</option>
								<option value="Refunded">Refunded</option>

						</select></td>
						<td><input type="submit" value="Update" /></td>
						</tr>
						<%
							}
						%>
					
				</table>
			</form>

		</div>



	</div>
</body>
</html>