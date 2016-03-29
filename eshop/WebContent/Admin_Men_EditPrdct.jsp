<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Bean.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Admin_MensWear_Insert</title>
<link href="css/style_masterpage.css" rel='stylesheet' type='text/css' />
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
function show_details(str) {
    if (str.length == 0) { 
        document.getElementById("ProductEntry").innerHTML ="";
        
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("Product_Entry_Details").innerHTML = xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET", "Edit_Details_Men.jsp?Product_Id="+str, true);
        xmlhttp.send();
    }
}
function show_color(str) {
    if (str.length == 0) { 
        document.getElementById("ProductEntry").innerHTML ="";
        
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("Color_Table").innerHTML = xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET", "Edit_Details_ColorMen.jsp?Product_Id="+str, true);
        xmlhttp.send();
    }
}
function show_colorforimage(str)
{
    if (str.length == 0) { 
        document.getElementById("Image_Table").innerHTML ="";
        
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("select_2").innerHTML = xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET", "Edit_Details_ImageMenColor.jsp?Product_Id="+str, true);
        xmlhttp.send();
    }
   

}

function show_image_name(str)
{
	var Product_Id=document.getElementById("Image_Table2").value;
    if (str.length == 0) { 
        document.getElementById("Image_Table").innerHTML ="";
        
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("im").innerHTML = xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET", "Edit_Details_Image.jsp?Color="+str+"&Product_Id="+Product_Id, true);
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
            
            <form method="post" action="Admin_Men_EditPrdct">
            <table  id="ProductEntry" align="center" 
				style="width: 40%; height: 469px;" cellspacing="6">
           
           
            <tr>
            
            <th colspan="2">Edit Product Details</th>
            </tr>
           
            
            <tr>
            <td style="padding-left: 5%" ><input type="text" name="ProductAddedOn" id="ppp" readonly="readonly" onkeydown="return false;"
						placeholder="Product Added On (dd-mm-yy)" size="39" onclick="myFunction()" ></td>
					<td></td>
            </tr>
            
            <tr>
            <td style="padding-left: 5%;"><select name="Product_Id" onchange="show_details(this.value)" >
					<option selected="selected" value="Id">Select Your Product</option>
					<%
					
					Connection con=Conct.conect();
					PreparedStatement ps=null;
					String sql="Select Product_Id from admin_productinsert_men";
					ps=con.prepareStatement(sql);
					ResultSet rs=ps.executeQuery();
					while(rs.next())
					{	
					%>
					<option value="<%=rs.getString(1)%>"><%=rs.getString(1) %></option>
					
					<%
					} 
					%>
					</select></td>
					<td></td>
            </tr>

				<tr>
					<td style="padding-left: 5%;"><table align="center"
							class="Edit_Table" style="width: 94%; height: 323px;"
							cellspacing="5" id="Product_Entry_Details">
							<tr>
								<td style="padding-left: 0"><select name="Category" >
										<option selected="selected" value="Category">Select
											Your Category</option>
										<option value="Casual">Casual</option>
										<option value="Formals">Formals</option>
										<option value="Ethnic">Ethnic</option>

								</select></td><td></td>
							</tr>

							<tr>
								<td id="fff" style="padding-left: 0"><select name="Type_MenWear">
										<option selected="selected">Select YourType</option>
							   </select></td><td></td>
							</tr>

							<tr>
								<td style="padding-left: 0%"><input type="text"
									name="BrandName" placeholder="Brand Name" size="39"></td><td></td>

							</tr>


							<tr>
								<td style="padding-left: 0%"><input type="text" name="Fit"
									placeholder="Fittings like Regular,Tappered,Skinny etc"
									size="39"></td><td></td>
							</tr>



							<tr>
								<td style="padding-left: 0%"><input type="text"
									name="Price" placeholder="Price" size="39"></td><td></td>
							</tr>

							<tr>

								<td style="padding-left: 0%"><textarea rows="6" cols="41"
										name="About_The_Product" placeholder="About the Product"></textarea></td><td></td>

							</tr>

							<tr>
								<td style="padding-left: 0%"><input type="text"
									name="Header" placeholder="Tag line about The Product"
									size="39"></td><td></td>


							</tr>

						</table></td>
					<td></td>
				</tr>

				
           
           
          <tr>
            <td style="padding-left: 9%"><input type="submit"
						name="Submit_Product" value="Edit Product" size="25"></td>
            
            </tr>
           </table>
            </form>
            
            <!-- <p id="Image">New Color Details</p> -->
           
		<form action="Admin_Men_Edit_ColorPrdct" method="post">
			<table id="Color_Table"  style="width:49.3%; height:200px;" cellspacing="4"   align="center" >
			
			<tr><th colspan="2">Edit Color Details</th></tr>
			<tr><td colspan="2"><select name="Product_Id" onchange="show_color(this.value)" >
					<option selected="selected" value="Id">Select Your Product</option>
					<%
					
					Connection con2=Conct.conect();
					PreparedStatement ps2=null;
					String sql2="Select Product_Id from admin_productinsert_men";
					ps2=con2.prepareStatement(sql2);
					ResultSet rs2=ps2.executeQuery();
					while(rs2.next())
					{	
					%>
					<option value="<%=rs2.getString(1)%>"><%=rs2.getString(1) %></option>
					
					<%
					} 
					
					%>
					</select>
			</td></tr>
		    <tr><td style="padding-left:12.3%;"><input type="text" name="Color1" placeholder="Available Color 1" size="16"></td>
			<td style="padding-right:10%;"><input type="text" name="Quantity1" placeholder="Available Quantity 1" size="16" class="size"></td>
			</tr>
			
			<tr><td style="padding-left:12.3%;"><input type="text" name="Color2" placeholder ="Available Color 2" size="16"></td>
			<td style="padding-right:10%;"><input type="text" name="Quantity2" placeholder="Available Quantity 2" size="16" class="size"></td>
			</tr>
			<tr><td style="padding-left:12.3%;"><input type="text" name="Color3" placeholder ="Available Color 3" size="16"></td>
			<td style="padding-right:10%;"><input type="text" name="Quantity3" placeholder="Available Quantity 3" size="16" class="size"></td>
			</tr>
			
			
			<tr><td style="padding-left:12.3%;"><input type="text" name="Color4" placeholder="Available Color 4" size="16"></td>
			<td style="padding-right:10%;"><input type="text" name="Quantity4" placeholder="Available Quantity 4" size="16" class="size"></td>
			</tr>
			
			<tr><td style="padding-left:12.3%;"><input type="text" name="Color5" placeholder="Available Color 5" size="16"></td>
			<td style="padding-right:10%;"><input type="text" name="Quantity5" placeholder="Available Quantity 5" size="16" class="size"></td>
			</tr>
			
			<tr><td style="padding-left:12.3%;"><input type="Submit" value="Edit Color" ></td>
			<td style="padding-right:10%;"><input type="text" name="Total Quantity" placeholder=" Total Quantity" size="16" id="Total_Quantity" ></td>
			</tr>
			
			</table>
			 </form> 
			
			
			
			<!-- <p id="Image">New Image Details</p> -->
			
			
			<table   id="Image_Table"  style="width:49.3%; height:230px; margin-top:13px;" cellspacing="4" align="center">
			<tr>
			<th colspan="2">Edit Image/Size Details</th>
			</tr>
			
			<tr>
			<td><select  name="Image_Table2" id="Image_Table2" onchange="show_colorforimage(this.value)" >
					<option selected="selected" value="Id">Select Your Product</option>
					<%
					
					Connection con4=Conct.conect();
					PreparedStatement ps4=null;
					String sql4="Select Product_Id from admin_productinsert_men";
					ps4=con4.prepareStatement(sql4);
					ResultSet rs4=ps4.executeQuery();
					
					while(rs4.next())
					{
					%>
					
					<option value="<%=rs4.getString(1)%>"><%=rs4.getString(1) %></option>
					
					<%
					} 
					%>
			</select></td>
			<td id="select_2"><select name="Image_ColorTable2" >
			<option selected="selected" value="Id">Select Your Color</option>
			</select></td>
			</tr>
			
			<tr>
			<td><table id="image_sizetable" style="width:23.5%; height:50px;margin-top:0px; padding-top:0px; padding-left:4%;" cellspacing="2" align="center">
			<tr>
			<td style="padding-left: 6%;"><input type="text"  placeholder="Size 1" size="16" class="size"></td>
			</tr>
			
			<tr>
			<td style="padding-left:6%;"><input type="text"  placeholder="Size 2" size="16" class="size"></td>
			</tr>
			<tr>
			<td style="padding-left:6%;"><input type="text"  placeholder="Size 3" size="16" class="size"></td>
			</tr>
			
			<tr>
			<td style="padding-left:6%"><input type="text"  placeholder="Size 4" size="16" class="size"></td>
			</tr>
			<tr>
			<td style="padding-left:6%;"><input type="text"  placeholder="Size 5" size="16" class="size"></td>
			</tr>
			</table></td>
		    
		    <td >
		    <table id="im" style="width:24.5%; height:50px;margin-top:0px; padding-top:0px;" id="fileUpload"  cellspacing="2" align="center">
		    <tr>
		    <td></td>
		    </tr>
		    
		    <tr>
		    <td></td>
		    </tr>
		    <tr>
		    <td></td>
		    </tr>
		    
		    <tr>
		    <td></td>
		    </tr>
		    
		    <tr>
		    <td></td>
		    </tr>
		    </table>
		   </td>
		    </tr>
		    <tr>
		    <td colspan="2" style="height:8px;"><input type="submit" value="Edit Image/Size"></td>
		    
		    </tr>
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