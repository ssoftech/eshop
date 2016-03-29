<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String Product_id = request.getParameter("Product_Id");
	   System.out.println("Product Id is"+Product_id);
		if (Product_id.equals("Id")) {
	%>
	<select>
		<option selected="selected">Select Your Color</option>
	</select>
	<%
		} else {
			Connection con2 = Conct.conect();
			PreparedStatement ps2 = null;
			String sql2 = "Select ColorName from retailer_colorinsertwomen where Product_Id=?";
			ps2 = con2.prepareStatement(sql2);
			ps2.setString(1, Product_id);
			ResultSet rs2 = ps2.executeQuery();
	%>
	
											<select class="form-control" onchange="show_image_name(this.value);show_size(this.value)">
												<option selected="selected" value="Id">Select Color Here....</option>
											
		<%
			while (rs2.next()) {
		%>
		<option value="<%=rs2.getString("ColorName")%>"><%=rs2.getString("ColorName")%></option>

		<%
			}
			}
		%>
	</select>

</body>
</html>