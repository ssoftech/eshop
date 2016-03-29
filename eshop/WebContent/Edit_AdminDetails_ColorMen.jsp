<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
		String Product_Id = request.getParameter("Product_Id");
		if (Product_Id.equals("Id")) {
	%>
	<table id="color" style="margin-left: 14.8%;" cellspacing="3">
		<tr>
			<td style="padding-left: 18px;"><input type="text" name="Color1"
				placeholder="Available Color 1" size="16"></td>
			<td style="padding-left: 20px;"><input type="text"
				name="Quantity1" placeholder="Available Quantity 1" size="16"
				class="size"></td>
		</tr>

		<tr>
			<td style="padding-left: 18px;"><input type="text" name="Color2"
				placeholder="Available Color 2" size="16"></td>
			<td style="padding-left: 20px;"><input type="text"
				name="Quantity2" placeholder="Available Quantity 2" size="16"
				class="size"></td>
		</tr>
		<tr>
			<td style="padding-left: 18px"><input type="text" name="Color3"
				placeholder="Available Color 3" size="16"></td>
			<td style="padding-left: 20px;"><input type="text"
				name="Quantity3" placeholder="Available Quantity 3" size="16"
				class="size"></td>
		</tr>


		<tr>
			<td style="padding-left: 18px;"><input type="text" name="Color4"
				placeholder="Available Color 4" size="16"></td>
			<td style="padding-left: 20px;"><input type="text"
				name="Quantity4" placeholder="Available Quantity 4" size="16"
				class="size"></td>
		</tr>

		<tr>
			<td style="padding-left: 18px;"><input type="text" name="Color5"
				placeholder="Available Color 5" size="16"></td>
			<td style="padding-left: 20px;"><input type="text"
				name="Quantity5" placeholder="Available Quantity 5" size="16"
				class="size"></td>
		</tr>
	</table>

	<%
		}

		Connection con3 = Conct.conect();
		PreparedStatement ps3 = null;
		String sql3 = "Select * from admin_colorinsrt_women where Product_Id=?";
		ps3 = con3.prepareStatement(sql3);
		ps3.setString(1, Product_Id);
		ResultSet rs3 = ps3.executeQuery();
	%>
	<form action="Admin_Women_Edit_ColorPrdct" method="post">
		<table id="color" style="margin-left: 14.8%;" cellspacing="3">

			<%
				while (rs3.next()) {
			%>
			<tr>
				<td style="padding-left: 18px;"><input type="text" name="Color"
					placeholder="Available Color 1" size="16"
					value="<%=rs3.getString("ColorName")%>"></td>
				<td style="padding-left: 20px;"><input type="text"
					name="Quantity" placeholder="Available Quantity 1" size="16"
					value="<%=rs3.getString("Quantity")%>" class="size"></td>
				<td><input type="hidden" name="Color_Id"
					value="<%=rs3.getInt("ColorId")%>"></td>
					<td><input type="hidden" name="Product_Id"
					value="<%=rs3.getString("Product_Id")%>"></td>
				<td><input type="submit" value="Edit"></td>

			</tr>
			<%
				}
			%>

		</table>
	</form>
</body>
</html>