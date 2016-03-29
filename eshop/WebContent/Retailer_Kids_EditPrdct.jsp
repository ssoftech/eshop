
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Retailer_KidsWear_Edit</title>
<link href="css/style_masterpageretailer.css" rel='stylesheet'
	type='text/css' />
<link rel='stylesheet' type='text/css' href="css/style_navmenu.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript">
	//Jquerry code for summing
	$(document).ready(function() {

		//iterate through each textboxes and add keyup
		//handler to trigger sum event
		$(".size").each(function() {

			$(this).keyup(function() {
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
			if (!isNaN(this.value) && this.value.length != 0) {
				sum += parseFloat(this.value);
			}

		});
		//.toFixed() method will roundoff the final sum to 2 decimal places
		$("#Total_Quantity").val(sum.toFixed(2));
	}
	//Javascript code for current date
	function myFunction() {
		var a = new Date();
		var c = a.toLocaleDateString();
		document.getElementById("ppp").value = c;
	}

	// Ajax Code for Select Category
	function show_details(str) {
		if (str.length == 0) {
			document.getElementById("product").innerHTML = "";

		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("product").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "Edit_Retailer_KidsPrdcts.jsp?Retailer_Name="
					+ str, true);
			xmlhttp.send();
		}
	}
	function show_color(str) {
		if (str.length == 0) {
			document.getElementById("ProductEntry").innerHTML = "";

		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("color").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "Edit_RetailerDetails_ColorKids.jsp?Product_Id="
					+ str, true);
			xmlhttp.send();
		}
	}
	function show_colorforimage(str) {
		if (str.length == 0) {
			document.getElementById("Image_Table").innerHTML = "";

		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("select_2").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET",
					"Edit_RetailerDetails_ImageKidsColor.jsp?Product_Id=" + str,
					true);
			xmlhttp.send();
		}

	}

	function show_image_name(str) {
		var Product_Id = document.getElementById("Image_Table2").value;
		if (str.length == 0) {
			document.getElementById("Image_Table").innerHTML = "";

		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("im").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "Edit_RetailerDetails_KidImage.jsp?Color=" + str
					+ "&Product_Id=" + Product_Id, true);
			xmlhttp.send();
		}

	}
	
	function show_size(str) 
	{
		var Product_Id = document.getElementById("Image_Table2").value;
		if (str.length == 0) {
			document.getElementById("Image_Table").innerHTML = "";

		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("image_sizetable").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "Edit_RetailerDetails_KidSize.jsp?Color=" + str
					+ "&Product_Id=" + Product_Id, true);
			xmlhttp.send();
		}

	}


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
			xmlhttp.open("GET", "ShowTypeKids.jsp?CategorySelect=" + str, true);
			xmlhttp.send();
		}
	}

	function show_productdetails(str) {
		if (str.length == 0) {
			document.getElementById("ProductEntry").innerHTML = "";
			return;
		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("Product_Entry_Details").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET",
					"Edit_RetailerDetailsKids.jsp?Product_Id=" + str, true);
			xmlhttp.send();
		}
	}

	function status() {
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
			<p> 
			
			<%
			
			HttpSession sees=request.getSession();
			String email=(String)sees.getAttribute("Email");
           %>
           Logged in as <%=email %><a href="Logout_Retailer">Log Out</a>
			
			</p>
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

			<form action="Retailer_Kids_EditPrdct" method="post">
				<%
					String mssg = request.getParameter("Mssg");
				%>
				<table id="ProductEntry" align="center"
					style="width: 35%; height: 469px;" cellspacing="8">
					<tr>
						<th colspan="2">Edit Product Details</th>
					</tr>
					<tr>
						<td style="padding-left: 5%;"><input type="text"
							name="ProductAddedOn" id="ppp" readonly="readonly"
							onkeydown="return false;"
							placeholder="Product Added On (dd-mm-yy)" size="39"
							onclick="myFunction()"></td>
						<td></td>
					</tr>
					<tr>
						<td style="padding-left: 5%;"><select name="Retailer_Name"
							onchange="show_details(this.value)">
								<option selected="selected" value="Id">Select Retailer
									Here</option>
								<%
									Connection con8 = Conct.conect();
									PreparedStatement ps8 = null;
									String sql8 = "Select a1.Retailer_Name from retailer_productinsertkids a1 inner join retailer_productinsertkids a2 on a1.Retailer_Name=a2.FirstName and a2.Email=?";
									ps8 = con8.prepareStatement(sql8);
									ResultSet rs8 = ps8.executeQuery();
									while (rs8.next()) {
								%>
								<option value="<%=rs8.getString("Retailer_Name")%>"><%=rs8.getString("Retailer_Name")%></option>

								<%
									}
								%>
						</select></td>
						<td></td>
					</tr>
					<tr id="product">
						<td style="padding-left: 5%;"><select name="Product_Id">
								<option selected="selected" value="Id">Select Your
									Product</option>
						</select></td>
						<td></td>
					</tr>
					<tr>
						<td style="padding-left: 11%;"><table align="center"
								class="Edit_Table"
								style="width: 94%; height: 304px; margin-top: -10px;"
								cellspacing="8" id="Product_Entry_Details">
								<tr>
									<td style="padding-left: 0"><select name="Category">
											<option selected="selected" value="Category">Select
												Your Category</option>
											<option value="KidsBaby">Kids & Baby Clothing</option>
									</select></td>
									<td></td>
								</tr>

								<tr>
									<td id="fff" style="padding-left: 0"><select
										name="Type_KidsWear">
											<option selected="selected">Select YourType</option>
									</select></td>
									<td></td>
								</tr>

								<tr>
									<td style="padding-left: 0%"><input type="text"
										name="BrandName" placeholder="Brand Name" size="39"></td>
									<td></td>

								</tr>


								<tr>
									<td style="padding-left: 0%"><input type="text" name="Fit"
										placeholder="Fittings like Regular,Tappered,Skinny etc"
										size="39"></td>
									<td></td>
								</tr>



								<tr>
									<td style="padding-left: 0%"><input type="text"
										name="Price" placeholder="Price" size="39"></td>
									<td></td>
								</tr>

								<tr>

									<td style="padding-left: 0%"><textarea rows="6" cols="41"
											name="About_The_Product" placeholder="About the Product"></textarea></td>
									<td></td>

								</tr>

								<tr>
									<td style="padding-left: 0%"><input type="text"
										name="Header" placeholder="Tag line about The Product"
										size="39"></td>
									<td></td>


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

			<form action="Retailer_Kids_Edit_Color" method="post">
				<table id="Color_Table"
					style="width: 49.3%; height: 248px; margin-top: 6px;"
					cellspacing="4" align="center">

					<tr>
						<th colspan="2">Edit Color Details</th>
					</tr>
					<tr>
						<td colspan="2"><select name="Product_Id"
							onchange="show_color(this.value)" style="margin-left: -2%;">
								<option selected="selected" value="Id">Select Your
									Product</option>
								<%
									Connection con2 = Conct.conect();
									PreparedStatement ps2 = null;
									String sql2 = "Select Product_Id from retailer_productinsertkids";
									ps2 = con2.prepareStatement(sql2);
									ResultSet rs2 = ps2.executeQuery();
									while (rs2.next()) {
								%>
								<option value="<%=rs2.getString(1)%>"><%=rs2.getString(1)%></option>

								<%
									}
								%>
						</select></td>
					</tr>
					<tr>
						<td colspan="2">
							<table id="color" style="margin-left: 14.8%;" cellspacing="3">
								<!-- <tr>
									<td style="padding-left: 18px;"><input type="text"
										name="Color1" placeholder="Available Color 1" size="16"></td>
									<td style="padding-left: 20px;"><input type="text"
										name="Quantity1" placeholder="Available Quantity 1" size="16"
										class="size"></td>
								</tr>

								<tr>
									<td style="padding-left: 18px;"><input type="text"
										name="Color2" placeholder="Available Color 2" size="16"></td>
									<td style="padding-left: 20px;"><input type="text"
										name="Qty2" placeholder="Available Quantity 2" size="16"
										class="size"></td>
								</tr>
								<tr>
									<td style="padding-left: 18px;"><input type="text"
										name="Color3" placeholder="Available Color 3" size="16"></td>
									<td style="padding-left: 20px;"><input type="text"
										name="Quantity3" placeholder="Available Quantity 3" size="16"
										class="size"></td>
								</tr>


								<tr>
									<td style="padding-left: 18px;"><input type="text"
										name="Color4" placeholder="Available Color 4" size="16"></td>
									<td style="padding-left: 20px;"><input type="text"
										name="Quantity4" placeholder="Available Quantity 4" size="16"
										class="size"></td>
								</tr>

								<tr>
									<td style="padding-left: 18px;"><input type="text"
										name="Color5" placeholder="Available Color 5" size="16"></td>
									<td style="padding-left: 20px;"><input type="text"
										name="Quantity5" placeholder="Available Quantity 5" size="16"
										class="size"></td>
								</tr> -->
							</table>
						</td>
					</tr>
					<tr>
						<td style="padding-left: 124px;"><input type="Submit"
							value="Edit Color"></td>
						<td style="padding-right: 78px; width: 200px;"><input
							type="text" name="Total Quantity" placeholder=" Total Quantity"
							size="16" id="Total_Quantity"></td>
					</tr>

				</table>
			</form>



			<!-- <p id="Image">New Image Details</p> -->


			<table id="Image_Table"
				style="width: 49.3%; height: 230px; margin-top: 13px;"
				cellspacing="4" align="center">
				<tr>
					<th colspan="2">Edit Image/Size Details</th>
				</tr>

				<tr>
					<td><select name="Image_Table2" id="Image_Table2"
						onchange="show_colorforimage(this.value)">
							<option selected="selected" value="Id">Select Your
								Product</option>
							<%
								Connection con4 = Conct.conect();
								PreparedStatement ps4 = null;
								String sql4 = "Select Product_Id from retailer_productinsertkids";
								ps4 = con4.prepareStatement(sql4);
								ResultSet rs4 = ps4.executeQuery();

								while (rs4.next()) {
							%>

							<option value="<%=rs4.getString("Product_Id")%>"><%=rs4.getString("Product_Id")%></option>

							<%
								}
							%>
					</select></td>
					<td id="select_2"><select name="Image_ColorTable2">
							<option selected="selected" value="Id">Select Your Color</option>
					</select></td>
				</tr>

				<tr>
					<td><table id="image_sizetable"
							style="width: 23.5%; height: 50px; margin-top: 0px; padding-top: 0px; padding-left: 4%;"
							cellspacing="2" align="center">
							<tr>
								<td style="padding-left: 6%;"><input type="text"
									placeholder="Size 1" size="16" class="size"></td>
							</tr>

							<tr>
								<td style="padding-left: 6%;"><input type="text"
									placeholder="Size 2" size="16" class="size"></td>
							</tr>
							<tr>
								<td style="padding-left: 6%;"><input type="text"
									placeholder="Size 3" size="16" class="size"></td>
							</tr>

							<tr>
								<td style="padding-left: 6%"><input type="text"
									placeholder="Size 4" size="16" class="size"></td>
							</tr>
							<tr>
								<td style="padding-left: 6%;"><input type="text"
									placeholder="Size 5" size="16" class="size"></td>
							</tr>
						</table></td>

					<td>
						<table id="im"
							style="width: 24.5%; height: 50px; margin-top: 0px; padding-top: 0px;"
							id="fileUpload" cellspacing="2" align="center">
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
					<td colspan="2" style="height: 8px;"><input type="submit"
						value="Edit Image/Size"></td>

				</tr>
			</table>
		</div>



	</div>
</body>
</html>