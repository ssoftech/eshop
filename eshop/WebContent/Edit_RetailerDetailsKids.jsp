<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/style_masterpageretailer.css" rel='stylesheet'
	type='text/css' />
<link rel='stylesheet' type='text/css' href="css/style_navmenu.css" />
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
			xmlhttp.open("GET", "ShowTypeKids.jsp?Category=" + str, true);
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

	<table align="center" class="Edit_Table"
		style="width: 94%; height: 304px; margin-top: -10px;" cellspacing="8"
		id="Product_Entry_Details">
		<tr>
			<td style="padding-left: 0%"><select name="Category_KidsWear"
				id="fff">
					<option selected="selected" value="Category">Select Your
						Category</option>
					<option value="KidsBaby">Kids & Baby Clothing</option>
			</select></td>
			<td></td>
		</tr>
		<tr>
			<td style="padding-left: 0%"><select name="Type_KidsWear">
					<option selected="selected">Select Your Type</option>
			</select></td>
			<td></td>
		</tr>
		<tr>
			<td style="padding-left: 0%"><input type="text" name="BrandName"
				placeholder="Brand Name" size="39"></td>
			<td></td>
		</tr>

		<tr>
			<td style="padding-left: 0%"><input type="text" name="Fit"
				placeholder="Fittings like Regular,Tappered,Skinny etc" size="39"></td>
			<td></td>
		</tr>
		<tr>
			<td style="padding-left: 0%"><input type="text" name="Price"
				placeholder="Price" size="39"></td>
			<td></td>
		</tr>

		<tr>
			<td style="padding-left: 0%"><textarea rows="6" cols="41"
					name="About_The_Product" placeholder="About the Product"></textarea></td>
			<td></td>
		</tr>
		<tr>
			<td style="padding-left: 0%"><input type="text" name="Header"
				placeholder="Tag line about The Product" size="39"></td>
			<td></td>
		</tr>

	</table>
	<%
		}

		Connection con = Conct.conect();
		PreparedStatement ps = null;
		String sql = "Select * from retailer_productinsertkids where Product_Id=?";
		ps = con.prepareStatement(sql);
		ps.setString(1, Product_Id);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			String Type = rs.getString("Type");
	%>

	<table align="center" class="Edit_Table"
		style="width: 94%; height: 304px; margin-top: -10px;" cellspacing="8"
		id="Product_Entry_Details">
		<tr>
			<td style="padding-left: 0"><select name="Category_KidsWear">
					<option selected="selected" value="<%=rs.getString("Category")%>"><%=rs.getString("Category")%></option>
					<%
						if (rs.getString("Category").equals("KidsBaby")) {
					%>
					<option value="Boys">Boys</option>
					<option value="Girls">Girls</option>
					<%
						}
					%>
			</select></td>
			<td></td>
		</tr>
		<tr>
			<td id="fff" style="padding-left: 0"><select name="Type_KidsWear"
				id="Type_MenWear">
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
						} else {
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

			</select></td>
			<td></td>
		</tr>
		<tr>
			<td style="padding-left: 0"><input type="text" name="BrandName"
				placeholder="Brand Name" size="39"
				value="<%=rs.getString("BrandName")%>"></td>
			<td></td>
		</tr>

		<tr>
			<td style="padding-left: 0"><input type="text" name="Fit"
				id="bbb" placeholder="Fittings like Regular,Tappered,Skinny etc"
				size="39" value="<%=rs.getString("Fittings")%>"></td>
			<td></td>
		</tr>
		<tr>
			<td style="padding-left: 0"><input type="text" name="Price"
				placeholder="Price" size="39" value="<%=rs.getDouble("Price")%>"></td>
			<td></td>
		</tr>

		<tr>
			<td style="padding-left: 0"><textarea rows="6" cols="41"
					name="About_The_Product" placeholder="About the Product"><%=rs.getString("About")%> </textarea></td>
			<td></td>
		</tr>
		<tr>
			<td style="padding-left: 0"><input type="text" name="Header"
				placeholder="Tag line about The Product" size="39"
				value="<%=rs.getString("Tagline")%>"></td>
			<td></td>
		</tr>
	</table>


	<%
		}
	%>

</body>
</html>