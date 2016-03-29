<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Bean.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Admin_MensWear_Insert</title>
<link href="css/style_masterpage.css" rel='stylesheet' type='text/css' />
<link rel='stylesheet' type='text/css' href="css/style_AllOrderStat.css" />
<link rel='stylesheet' type='text/css' href="css/style_navmenu.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
 <script type="text/javascript">
 
 //Jquerry code for summing
 $(document).ready(function(){
 
        //iterate through each textboxes and add keyup
        //handler to trigger sum event
        $(".size").each(function() {
 
            $(this).keyup(function(){
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
            if(!isNaN(this.value) && this.value.length!=0) {
                sum += parseFloat(this.value);
            }
 
        });
        //.toFixed() method will roundoff the final sum to 2 decimal places
        $("#Total_Quantity").val(sum.toFixed(2));
    }
//Javascript code for current date
function myFunction()
{
var a=new Date();
var c=a.toLocaleDateString();
document.getElementById("ppp").value=c;
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
        xmlhttp.open("GET", "ShowType.jsp?CategorySelect="+str, true);
        xmlhttp.send();
    }
}


function show_statusproduct(str) {
     if (str.length == 0) { 
        document.getElementById("status_prdcts").innerHTML = "";
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("status_prdcts").innerHTML = xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET", "Show_StatusOfProducts.jsp?Status="+str, true);
        xmlhttp.send();
    } 
    

}
</script>

</head>


<body>
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

		<div id="menu3"><!-- This is left menu for Orders -->
			
			<div id="table_order">
				<p class="effect">
					<a href="Show_TrackOrders.jsp">Track Order</a>
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
		
		<div id="content"><!-- This is the content div -->
            
            <table id="status_prdcts">
    
            <tr>
            <th style="padding: 10px;">Order_No</th>
            <th style="padding: 10px;">Customer Name</th>
            <th style="padding: 10px;">Email</th>
            <th style="padding: 10px;">Phone No</th>
            <th style="padding: 10px;">Order Date</th>
            <th style="padding: 10px;">Order Amount</th>
            <th style="padding-left: 10px; padding-right: 10px;">Status</th>
            </tr>
            <%
Connection con=Conct.conect();
String sql="Select * from order_table where Status=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, "Processing");
ResultSet rs= ps.executeQuery();
while(rs.next())
{
%>

<tr>
<td><%=rs.getString("Order_No") %></td>
<td><%=rs.getString("Customer_Name") %></td>
<td><%=rs.getString("Email") %></td>
<td><%=rs.getString("PhoneNo") %></td>
<td><%=rs.getString("Order_Date") %></td>
<td><%=rs.getString("Order_Amount") %></td>
<td><%=rs.getString("Status") %></td>
</tr>
<%
}
%>

          </table>
		</div>
			
		<div id="menu5"><!-- This is the left menu for Products -->
			
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