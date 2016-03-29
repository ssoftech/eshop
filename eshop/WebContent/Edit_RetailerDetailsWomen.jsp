<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
	//Ajax Code For Type
	function show(str) {
		if (str.length == 0) {
			document.getElementById("ProductEntry").innerHTML = "";

		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("fff").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "ShowTypeWomen.jsp?Category=" + str, true);
			xmlhttp.send();
		}
	}
</script>
</head>
<body background="white">

	<%
		String Product_Id = request.getParameter("Product_Id");
		if (Product_Id.equals("Id")) {
	%>

	<table class="table" id="Product_Entry_Details"
										style="width: 100%;">
										<tbody>
											<tr>
												<td><label class="control-label" for="category"
													style="text-align: left;">Category:</label></td>
												<td><select class="form-control" id="Category_MenWear"
													name="Category_MenWear">
														<option selected="selected">Select Product
															Category...</option>
														<option value="Casual">Casual</option>
														<option value="Formals">Formals</option>
														<option value="Ethnic">Ethnic</option>
												</select></td>
											</tr>

											<tr>
												<td style="width: 26%;"><label class="control-label"
													for="category" style="text-align: left;">Type:</label></td>
												<td><select class="form-control" id="ff"
													id="Type_MenWear" name="Type_MenWear">
														<option selected="selected">Select Product
															Type...</option>
												</select></td>
											</tr>

											<tr>
												<td style="width: 26%;"><label class="control-label"
													for="brand" style="text-align: left;">Brand Name:</label></td>
												<td><input type="text" class="form-control"
													id="BrandName" name="BrandName"
													placeholder="Enter Brand Name of Product"></td>
											</tr>

											<tr>
												<td><label class="control-label" for="fit"
													style="text-align: left;">Fittings:</label></td>
												<td><input type="text" class="form-control" id="Fit"
													name="Fit" placeholder="Enter Type of Fitting"></td>
											</tr>

											<tr>
												<td><label class="control-label" for="price"
													style="text-align: left;">Price:</label></td>
												<td><input type="text" class="form-control" id="Price"
													name="Price" placeholder="Enter Price of Product">
												</td>
											</tr>
											<tr>
												<td><label class="control-label" for="aboutPrd"
													style="text-align: left;">About Product:</label></td>
												<td><textarea class="form-control" rows="5"
														id="About_The_Product" name="About_The_Product"></textarea>
												</td>
											</tr>

											<tr>
												<td><label class="control-label" for="tagLine"
													style="text-align: left;">Tagline:</label></td>
												<td><input type="text" class="form-control" id="Header"
													name="Header" placeholder="Enter your Address"
													maxlength="70"></td>
											</tr>
										</tbody>
									</table>
	<%
		}

		Connection con = Conct.conect();
		PreparedStatement ps = null;
		String sql = "Select * from retailer_productinsertwomen where Product_Id=?";
		ps = con.prepareStatement(sql);
		ps.setString(1, Product_Id);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			String Type = rs.getString("Type");
	%>

	<table class="table" id="Product_Entry_Details" style="width:100%;">
		<tbody>
		<tr>
									<td style="width:26%;">
									<label class="control-label" for="category"
											style="text-align: left;">Category:</label>
									</td>
									<td>
									<select class="form-control" id="Category_MenWear" name="Category_MenWear" disabled="disabled">
												<option selected="selected" value="<%=rs.getString("Category")%>"><%=rs.getString("Category")%>
												</option>
												<%
						if (rs.getString("Category").equals("Casual")) {
					%>
					<option value="Formals">Formals</option>
					<option value="Ethnic">Ethnic</option>
					<%
						} else if (rs.getString("Category").equals("Formals")) {
					%>
					<option value="Casual">Casual</option>
					<option value="Ethnic">Ethnic</option>
					<%
						} else {
					%>
					<option value="Casual">Casual</option>
					<option value="Formals">Formals</option>
					<%
						}
					%>
			
						     </select>
									</td>
		</tr>
		
		<tr>
									<td style="width:26%;">
									<label class="control-label" for="category"
											style="text-align: left;">Type:</label>
									</td>
									<td>
									<select class="form-control" id="ff"  name="Type_WomenWear">
												<option selected="selected" value="<%=rs.getString("Type")%>"><%=rs.getString("Type")%></option>
												
												<%					if (rs.getString("Category").equals("Formals")
									&& Type.equals("Skirts")) {
					%>
					<option value="Shirts">Shirts</option>
					<option value="Scarves & Stoles">Scarves & Stoles</option>
					<option value="Trousers">Trousers</option>
					<option value="Waistcoats">Waistcoats</option>
					<%
						} else if (rs.getString("Category").equals("Formals")
									&& Type.equals("Scarves & Stoles")) {
					%>
					<option value="Shirts">Shirts</option>
					<option value="Skirts">Skirts</option>
					<option value="Trousers">Trousers</option>
					<option value="Waistcoats">Waistcoats</option>
					<%
						} else if (rs.getString("Category").equals("Formals")
									&& Type.equals("Trousers")) {
					%>
					<option value="Shirts">Shirts</option>
					<option value="Skirts">Skirts</option>
					<option value="Scarves & Stoles">Scarves & Stoles</option>
					<option value="Waistcoats">Waistcoats</option>
					<%
						} else if(rs.getString("Category").equals("Formals") &&Type.equals("Waistcoats")){
					%>
					<option value="Skirts">Skirts</option>
					<option value="Scarves & Stoles">Scarves & Stoles</option>
					<option value="Vest Coats">Trousers</option>
					<option value="Waistcoats">Waistcoats</option>
					<%
						}
					%>
					<%
						if (rs.getString("Category").equals("Casual")
									&& Type.equals("Tops")) {
					%>
					<option value="Jeans">Jeans</option>
					<option value="T-Shirt">T-Shirt</option>
					<option value="Skirts">Skirts</option>
					<%
						} else if (rs.getString("Category").equals("Casual")
									&& Type.equals("Skirts")) {
					%>
					<option value="Tops">Tops</option>
					<option value="T-Shirt">T-Shirt</option>
					<option value="Jeans">Jeans</option>
					<%
						} else if (rs.getString("Category").equals("Casual")
									&& Type.equals("T-Shirts")) {
					%>
					<option value="Tops">Tops</option>
					<option value="Jeans">Jeans</option>
					<option value="Skirts">Skirts</option>
					<%
						} else if (rs.getString("Category").equals("Casual")
									&& Type.equals("Jeans")) {
					%>
					<option value="Tops">Tops</option>
					<option value="Skirts">Skirts</option>
					<option value="T-Shirt">T-Shirt</option>
					<%
						}
					%>
					<%
						if (rs.getString("Category").equals("Ethnic")
									&& Type.equals("Kurtas & Kurtis")) {
					%>
					<option value="Sarees">Sarees</option>
					<option value="Salwar Kurta & Dupattas">Salwar Kurta & Dupattas</option>
					<%
						} else if (rs.getString("Category").equals("Ethnic")
									&& Type.equals("Sarees")) {
					%>
					<option value="Kurtas & Kurtis">Kurtas & Kurtis</option>
					<option value="Salwar Kurta & Dupattas">Salwar Kurta & Dupattas</option>
					<%
						} else if (rs.getString("Category").equals("Ethnic")
									&& Type.equals("Salwar Kurta & Dupattas")) {
					%>
					<option value="Kurtas & Kurtis">Kurtas & Kurtis</option>
					<option value="Sarees">Sarees</option>
					<%
						}
					%>

			</select></td>
			<td></td>
		</tr>
		<tr>
									<td style="width:26%;">
									<label class="control-label" for="brand"
											style="text-align: left;">Brand Name:</label>
									</td>
									<td>
									<input type="text" class="form-control" id="BrandName" name="BrandName"
												placeholder="Enter Brand Name of Product" value="<%=rs.getString("BrandName")%>">
									</td>
		</tr>
		
		<tr>
									<td>
									<label class="control-label" for="fit"
											style="text-align: left;">Fittings:</label>
									</td>
									<td>
									<input type="text" class="form-control" id="Fit" name="Fit"
												placeholder="Enter Type of Fitting" value="<%=rs.getString("Fittings")%>">
									
									</td>
		</tr>
		
		<tr>
									<td>
									<label class="control-label" for="price"
											style="text-align: left;">Price:</label>
									</td>
									<td>
									<input type="text" class="form-control" id="Price" name="Price"
												placeholder="Enter Price of Product" value="<%=rs.getDouble("Price")%>">
									</td>
		</tr>
		
		<tr>
									<td>
									<label class="control-label" for="aboutPrd"
											style="text-align: left;">About Product:</label>
									</td>
									<td>
									<textarea class="form-control" rows="5" id="About_The_Product" name="About_The_Product"><%=rs.getString("About")%> </textarea>
									</td>
		</tr>
		
		<tr>
									<td>
									<label class="control-label" for="tagLine"
											style="text-align: left;">Tagline:</label>
									</td>
									<td>
									<input type="text" class="form-control" id="Header" name="Header"
												placeholder="Enter your Address" maxlength="70" value="<%=rs.getString("Tagline")%>">
									</td>
									</tr>
									
		
		</tbody>
	</table>

	<%
		}
	%>

</body>
</html>