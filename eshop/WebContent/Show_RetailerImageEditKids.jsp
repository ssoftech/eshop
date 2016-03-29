<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Admin_MensWear_Insert</title>
<link href="css/style_masterpageretailer.css" rel='stylesheet'
	type='text/css' />
<link rel='stylesheet' type='text/css' href="css/style_navmenu.css" />
<link rel='stylesheet' type='text/css'
	href="css/style_showimage_edit.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
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
        xmlhttp.open("GET", "ShowTypeKids.jsp?CategorySelect="+str, true);
        xmlhttp.send();
    }
}

function status()
{
	if ("${param.Message}") {
		alert("${param.Message}");
	}
}
</script>

</head>


<body onload="status()">
	<div id="container">
		<!-- This is wrapper div -->

		<div id="header">
			<!-- This is header div -->
			<p <%
			
			HttpSession sees=request.getSession();
			String email=(String)sees.getAttribute("Email");
           %>
           Logged in as <%=email %>
			></p>
		</div>

		<div id="menu">
			<!-- This is navigation menu -->
			<ul id="navmenu" style="margin-left: 130px;">
				<li><a href="Retailer_profile.jsp"> My Profile</a></li>
				<li class="active"><a href="#">Manage Products</a>
					<ul class="sub1">
						<li><a href="#">Add New Product</a>
							<ul class="sub2">
								<li><a href="#">Electronics</a>
									<ul class="sub3">
										<li><a href="#">Mobiles</a></li>
										<li><a href="#">Laptops</a></li>
									</ul></li>
								<li><a href="Retailer_Men_InsertPrdct.jsp">Mens Wear</a></li>
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
								<li><a href="Retailer_Men_EditPrdct.jsp">Mens Wear</a></li>
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
				<li><a href="ViewOwnProducts_Retailer.jsp">View My Products</a></li>
				<li class="active"><a href="#">Others' Products</a></li>
			</ul>
		</div>

		<div id="content">
			<!-- This is the content div -->

			<table id="show_imageedit" cellspacing="8" style="margin-left: 18%;">
				<tr>
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
					<%
						String Filename = request.getParameter("Filename");
					    String Product=request.getParameter("Products_Id");	
					    System.out.println("Product_Id is"+Product);
					
						Connection con = Conct.conect();
						String sql = "Select * from retailer_imageinsrt_kids where Filename=? and Product_Id=?";
						PreparedStatement ps = con.prepareStatement(sql);
						ps.setString(1, Filename);
						ps.setString(2, Product);
						ResultSet rs = ps.executeQuery();
						while (rs.next()) {
					%>

					<td><%=rs.getString("Product_Id")%></td>
					<td><%=rs.getString("ColorName")%></td>
					<td><img
						src="Show_RetailerImage?FileName=<%=rs.getString("Filename")%>"
						height="130" width="130" alt="kk" class="thumbnail"></td>
					<td><%=rs.getString("Filename")%></td>
					<td><a
						href="Edit_RetailerImageKids.jsp?Product_id=<%=rs.getString("Product_Id")%> &Color=<%=rs.getString("ColorName")%> &Filename=<%=rs.getString("Filename")%>">Edit
							Image</a></td>

					<%
						}
					%>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>