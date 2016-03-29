<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- Font Awesome Link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<script>


</script>
</head>
<body>

	<%
		String Product_Id = request.getParameter("Product_Id");
	    System.out.println("Product_Id is"+Product_Id);
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
        System.out.println("Hello");
		Connection con = Conct.conect();
		PreparedStatement ps = null;
		String sql = "Select * from retailer_productinsertmen where Product_Id=?";
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
									<select class="form-control" id="ff" id="Type_MenWear" name="Type_MenWear">
												<option selected="selected" value="<%=rs.getString("Type")%>"><%=rs.getString("Type")%></option>
												
												<%
						if (rs.getString("Category").equals("Formals")
									&& Type.equals("Trousers")) {
					%>
					<option value="Shirts">Shirts</option>
					<option value="Blazers">Blazers</option>
					<option value="Vest Coats">Vest Coats</option>
					<%
						} else if (rs.getString("Category").equals("Formals")
									&& Type.equals("Vest Coats")) {
					%>
					<option value="Shirts">Shirts</option>
					<option value="Blazers">Blazers</option>
					<option value="Trousers">Trousers</option>
					<%
						} else if (rs.getString("Category").equals("Formals")
									&& Type.equals("Blazers")) {
					%>
					<option value="Shirts">Shirts</option>
					<option value="Vest Coats">Vest Coats</option>
					<option value="Trousers">Trousers</option>
					<%
						} else if(rs.getString("Category").equals("Formals")
								&& Type.equals("Shirts")){
					%>
					<option value="Trousers">Trousers</option>
					<option value="Blazers">Blazers</option>
					<option value="Vest Coats">Vest Coats</option>
					<%
						}
		
					%>
					<%
						if (rs.getString("Category").equals("Casual")
									&& Type.equals("Shirt")) {
					%>
					<option value="Jeans">Jeans</option>
					<option value="T-Shirt">T-Shirt</option>
					<option value="TrackSuits">TrackSuits</option>
					<%
						} else if (rs.getString("Category").equals("Casual")
									&& Type.equals("Jeans")) {
					%>
					<option value="Shirt">Shirt</option>
					<option value="T-Shirt">T-Shirt</option>
					<option value="Tracksuits">TrackSuits</option>
					<%
						} else if (rs.getString("Category").equals("Casual")
									&& Type.equals("T-Shirt")) {
					%>
					<option value="Shirt">Shirt</option>
					<option value="Jeans">Jeans</option>
					<option value="Tracksuits">TrackSuits</option>
					<%
						} else if (rs.getString("Category").equals("Casual")
									&& Type.equals("Tracksuits")) {
					%>
					<option value="Shirt">Shirt</option>
					<option value="Jeans">Jeans</option>
					<option value="T-Shirt">T-Shirt</option>
					<%
						}
					
					%>
					<%
						if (rs.getString("Category").equals("Ethnic")
									&& Type.equals("Kurtas")) {
					%>
					<option value="Dhotis">Dhotis</option>
					<option value="Sherwani">Sherwani</option>
					<%
						} else if (rs.getString("Category").equals("Ethnic")
									&& Type.equals("Dhotis")) {
					%>
					<option value="Kurtas">Kurtas</option>
					<option value="Sherwani">T-Sherwani</option>
					<%
						} else if (rs.getString("Category").equals("Ethnic")
									&& Type.equals("Sherwani")) {
					%>
					<option value="Dhotis">Dhotis</option>
					<option value="Kurtas">Kurtas</option>
					<%
						}
					%>

			
											</select>
									</td>
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