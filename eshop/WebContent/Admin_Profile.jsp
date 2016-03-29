<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Admin_Profile</title>
<link href="css/style_masterpage.css" rel='stylesheet' type='text/css' />
<link rel='stylesheet' type='text/css' href="css/style_navmenu.css" />
<link rel='stylesheet' type='text/css' href="css1/nFeedStyle.css" />

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
	    HttpSession sees=request.getSession();
	    String names=(String)sees.getAttribute("Username");
	    String empid=(String)sees.getAttribute("Empid");
	   
        String name="";
		Connection con = Conct.conect();
		String sql = "Select FirstName, LastName from admin_register where EmployeeId=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, empid);
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

		
			<p>Logged in as <%=names %>&nbsp&nbsp<a href="#">Log out</a></p>
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
								<li><a href="Admin_Women_InsertPrdct.jsp">Women Wear</a></li>
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
			<table border="1" rules="rows" id="wrapper_table" width="800px;"
				style="border: 2px solid black; margin-left: 40px; margin-top: 20px; font-family: monospace; font-size: 20px;">
				<tr>
					<th colspan="2">Profile Details</th>
				</tr>
				<tr>
					<td id="image_td" width="28	0px;" height="180px;"><img
						src="Image_AdminProfile?EmployeeId=<%=empid%>" height="150"
						width="150"
						style="float: left; margin-left: 80px; margin-right: 80px; border-radius: 0px 25px 0px 25px; box-shadow: 0px 0px 20px black;"></img></td>
					<td><table border="1" rules="rows" align="center"
							cellspacing="8"
							style="margin-left: 10px; border: 2px solid black; box-shadow: 0px 0px 10px #03F; font-size: 16px;">
							<%
								String Email = "";
								String PhoneNo = "";
								String DateofBirth = "";
								Connection con2 = Conct.conect();
								String sql2 = "Select Email, PhoneNo, DateofBirth from admin_register where EmployeeId=?";
								PreparedStatement ps2 = con2.prepareStatement(sql2);
								ps2.setString(1, empid);
								ResultSet rs2 = ps2.executeQuery();
								if (rs2.next()) {
									Email = rs2.getString("Email");
									PhoneNo = rs2.getString("PhoneNo");
									DateofBirth = rs2.getString("DateofBirth");
								}
							%>
							<tr>
								<td width="120px" height="30px">Name</td>
								<td>:</td>
								<td width="300px"><%=name%></td>
							</tr>
							<tr>
								<td height="35px">Email</td>
								<td>:</td>
								<td width="300px"><%=Email%></td>
							</tr>
							<tr>
								<td height="35px">Contact No</td>
								<td>:</td>
								<td width="300px"><%=PhoneNo%></td>
							</tr>
							<tr>
								<td height="35px">Date Of Birth</td>
								<td>:</td>
								<td width="300px"><%=DateofBirth%></td>
							</tr>


						</table></td>
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

		<!-- News Feed -->


         <%
          Connection con57=Conct.conect();
		  String sql57="Select Retailer_Name, BrandName from retailer_productinsertmen Limit 5";
		  PreparedStatement ps57=con57.prepareStatement(sql57);
		  ResultSet rs57=ps57.executeQuery();
		 
            
         %>
		<div class="nFeed1">
			<table id="NewsFeedTab1" border="1" rules="cols"
				style="width: 225px; border: 1px solid black; box-shadow: 0px 0px 2px;">

				<tr>
					<th style="text-decoration: underline;">New Products Added By:</th>
				</tr>
				<% 
				 while(rs57.next())
				  {
				
				%>
				<tr>
					<td><span style="margin-left: -40px;"><%=rs57.getString("Retailer_Name") %>&nbsp added</span> <span>
							 <%=rs57.getString("BrandName") %></span></td>
				</tr>
				<% 
		        }
				%>
				
				<!-- <tr>
					<td><span style="margin-left: -40px;">Retailer1 added</span> <span>Brand
							Name</span></td>
				</tr>
				<tr>
					<td><span style="margin-left: -40px;">Retailer1 added</span> <span>Brand
							Name</span></td>
				</tr>
				<tr>
					<td><span style="margin-left: -40px;">Retailer1 added</span> <span>Brand
							Name</span></td>
				</tr>
				<tr>
					<td><span style="margin-left: -40px;">Retailer1 added</span> <span>Brand
							Name</span></td>
				</tr>
				<tr>
					<td><span style="margin-left: -40px;">Retailer1 added</span> <span>Brand
							Name</span></td>
				</tr>
				<tr>
					<td><span style="margin-left: -40px;">Retailer1 added</span> <span>Brand
							Name</span></td>
				</tr>
				<tr>
					<td><span style="margin-left: -40px;">Retailer1 added</span> <span>Brand
							Name</span></td>
				</tr>
				<tr>
					<td><span style="margin-left: -40px;">Retailer1 added</span> <span>Brand
							Name</span></td>
				</tr> -->
			</table>
		</div>
       <%
      String sql58="Select FirstName, LastName from pending_retls_approval where Status=? Limit 5";
	  PreparedStatement ps58=con57.prepareStatement(sql58);
	  ps58.setString(1, "Pending");
	  ResultSet rs58=ps58.executeQuery();
     
     
     
     %>
		<div class="nFeed2">
			<table id="NewsFeedTab2" border="1" rules="cols"
				style="width: 215px; border: 1px solid black; box-shadow: 0px 0px 2px;">
 
				<tr>
					<th style="text-decoration: underline;">Pending Retailers:</th>
				</tr>
				<%
				while(rs58.next())
				{
				
				
				%>
				<tr>
					<td><%=rs58.getString("FirstName") %>&nbsp<%=rs58.getString("LastName") %><span></span></td>
				</tr>
				<% } %>
			</table>
		</div>

		<div class="nFeed3">
			<table id="NewsFeedTab3" border="1" rules="rows"
				style="width: 178px; border: 1px solid black; box-shadow: 0px 0px 2px;">

				<tr>
					<th>Total Products:</th>
				</tr>
				<tr>
					<td>60</td>
				</tr>
			</table>
		</div>

		<div class="nFeed4">
			<table id="NewsFeedTab4" border="1" rules="rows"
				style="width: 178px; border: 1px solid black; box-shadow: 0px 0px 2px;">

				<tr>
					<th>LowStock_Products:</th>
				</tr>
				<tr>
					<td>0</td>
				</tr>
			</table>
		</div>

		<div class="nFeed5">
			<table id="NewsFeedTab5" border="1" rules="rows"
				style="width: 178px; border: 1px solid black; box-shadow: 0px 0px 2px;">

				<tr>
					<th>Total Sales:</th>
				</tr>
				<tr>
					<td>200</td>
				</tr>
			</table>
		</div>

		<div class="nFeed6">
			<table id="NewsFeedTab6" border="1" rules="rows"
				style="width: 178px; border: 1px solid black; box-shadow: 0px 0px 2px;">

				<tr>
					<th>Registered Cx:</th>
				</tr>
				<tr>
					<td>200</td>
				</tr>
			</table>
		</div>

		<div class="nFeed7">
			<table id="NewsFeedTab7" border="1" rules="rows"
				style="width: 178px; border: 1px solid black; box-shadow: 0px 0px 2px;">

				<tr>
					<th>Total Retailers:</th>
				</tr>
				<tr>
					<td>200</td>
				</tr>
			</table>
		</div>

		<div class="nFeed8">
			<table id="NewsFeedTab8" border="1" rules="cols"
				style="width: 198px; border: 1px solid black; box-shadow: 0px 0px 2px;">

				<tr>
					<th style="text-decoration: underline;">Latest Sales:</th>
				</tr>
				<tr>
					<td><span>200</span></td>
				</tr>
				<tr>
					<td><span>200</span></td>
				</tr>
				<tr>
					<td><span>200</span></td>
				</tr>
				<tr>
					<td><span>200</span></td>
				</tr>
				<tr>
					<td><span>200</span></td>
				</tr>
				<tr>
					<td><span>200</span></td>
				</tr>
			</table>
		</div>

	</div>
</body>
</html>