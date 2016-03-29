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
		String Product = request.getParameter("Product_Id");
	System.out.println("Product_Id in ajax"+Product);
		String Color = request.getParameter("Color");
		System.out.println("Color is"+Color);
		if (Color.equals("Id")) {
	%>
	<select>
		<option selected="selected">Select Your Color</option>
	</select>
	<div class="col-sm-6" id="im" style="padding-left:0px; padding-right:0px;">
		<%
			} else {
				Connection con = Conct.conect();
				String sql = "Select Filename, Product_Id from retailer_imageinsrt_men where Product_Id=? and ColorName=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, Product);
				ps.setString(2, Color);
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					
		%>


		<a href="Show_RetailerImageEdit.jsp?Filename=<%=rs.getString("Filename")%> &Products_Id=<%=rs.getString("Product_Id")%>"> <input class="btn btn-default btn-file btn-block" id="Image2" data-provides="fileinput" value="<%=rs.getString("Filename")%>">
		</a><br>
		



		<%
			}

			}
		%>
	</div>

</body>
</html>