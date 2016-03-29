<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Admin_MensWear_Insert</title>
<link rel='stylesheet' type='text/css' href="css/style_navmenu.css" />
<link rel='stylesheet' type='text/css' href="css/style_AddProByCategory.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript">
 
 
// Ajax Code for Select Type
function show_Categorytype(str) {
    if (str.length == 0) { 
        document.getElementById("type").innerHTML = "";
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("type").innerHTML = xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET", "showCategorytype.jsp?TypeSelect="+str, true);
        xmlhttp.send();
    }
}

function View_FullProduct(str)
{
	 if (str.length == 0) { 
        document.getElementById("full_product").innerHTML = "";
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("full_product").innerHTML = xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET", "View_FullProduct.jsp?TypeSelect="+str, true);
        xmlhttp.send();
    }    
    
 
}
</script>


</head>


<body>
	<div id="container">
		<!-- This is wrapper div -->

		<div id="header">
			<!-- This is header div -->
			<%
			HttpSession sees=request.getSession();
			   String name=(String)sees.getAttribute("Username");
			%>
			<p>Logged in as <%=name %>&nbsp&nbsp<a href="#">Log out</a></p>
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



		<div id="content_add">
			<!-- This is the content div -->

			<table class="ContentAdd" rules="rows" style="border: 1px solid black;" >
				<tr style="height: 25px;">
					<th colspan="2">Product Search By Category</th>
				</tr>
				<tr>
					<td style="height: 30px;"><select name="Category"
						onclick="show_Categorytype(this.value)">
							<option selected="selected" value="Category_Selected">Select
								Your Category</option>
							<option value="Men">Men</option>
							<option value="Women">Women</option>
							<option value="Kids">Kids</option>
							<option value="Electronics">Electronics</option>
					</select></td>
					<td id="type"><select name="Type">
							<option selected="selected" value="Id">Select Your Type</option>
					</select></td>

				</tr>
			</table>
			<div id="full_product" class="FullProduct"></div>



		</div>
	</div>

</body>
</html>