<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String Retailer_name = request.getParameter("Retailer_Name");

		if (Retailer_name.equals("Id")) {
	%>
	<tr>
		<td style="padding-left: 5%;"><select name="Product_Id"
			onchange="">
				<option selected="selected" value="Id">Select Your Product</option>
		</select></td>
	</tr>
	<%
		} else {
	%>
	<tr>
		<td style="padding-left: 5%;"><select name="Product_Id"
			onchange="show_productdetails(this.value)">
				<option selected="selected" value="Id">Select Your Product</option>
				<%
					Connection con8 = Conct.conect();
						PreparedStatement ps8 = null;
						String sql8 = "Select Product_Id from retailer_productinsertwomen where Retailer_Name=?";
						ps8 = con8.prepareStatement(sql8);
						ps8.setString(1, Retailer_name);
						ResultSet rs8 = ps8.executeQuery();
						while (rs8.next()) {
				%>
				<option value="<%=rs8.getString("Product_Id")%>"><%=rs8.getString("Product_Id")%></option>

				<%
					}
					}
				%>
		</select></td>
	</tr>
</body>
</html>