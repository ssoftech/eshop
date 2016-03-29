<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*,Men_Wear.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Admin_MensWear_Insert</title>
<link href="css/style_masterpage.css" rel='stylesheet' type='text/css' />
<link rel='stylesheet' type='text/css' href="css/style_navmenu.css" />
<link rel='stylesheet' type='text/css' href="css/style_showimage_edit.css" />
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
</script>

</head>


<body >
	<div id="container"><!-- This is wrapper div -->
	
		<div id="header"><!-- This is header div -->
			<p id="ggg"></p>
		</div>
		
		<div id="menu"><!-- This is navigation menu -->
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
						<li><a href="View-Retailer_AdminForDelete.jsp">Delete Retailer</a></li>
						<li><a href="View-Retailer_Admin.jsp">View Retailer</a></li>
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
		
		<div id="content"><!-- This is the content div -->
           
           
            <% 
            String prouct_id=request.getParameter("Product_id");
		    String color=request.getParameter("Color");
		    String filename=request.getParameter("Filename");
            %>
             <form action="Update_AdminWomen_Image" method="post" enctype="multipart/form-data">
            <table  id="show_imageedit" cellspacing="8" >
            <tr >
            <th colspan="5">Show Image Details</th>
            </tr>
            <tr>
            <th>Product Id</th>
            <th>Color Name</th>
            <th>Image</th>
            <th>File Name</th>
            <th>Edit</th>
            </tr>
            <tr>
            <td><%=prouct_id%></td>
            <td><%=color%></td>
            <td><input type="file" name="Image"></td>
            <td><%=filename %></td>
        <%--     <td><a href="Update_Image?Product_id=<%=product_id%> &Color=<%=color%> &Filename=<%=filename%> &image">Update Image</a></td> --%>
            <td><input type="hidden" name="product_id" value="<%=prouct_id%>"/>
            <input type="hidden" name="Color" value="<%=color%>"/>
            <input type="hidden" name="Filename" value="<%=filename%>"/>
            <input type="submit" value="update"/></td>
            </tr>
            </table>
            </form>
		</div>
			
		<div id="menu5"><!-- This is the left menu for Products -->
			
			<div id="table_orders">

				<p class="effect">
					<a href="#">All Products By Category</a>
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