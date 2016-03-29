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
		String Product = request.getParameter("Product_Id");
		String Color = request.getParameter("Color");
		if (Color.equals("Id")) {
	%>
	<select>
		<option selected="selected">Select Your Color</option>
	</select>
	<table id="im"
		style="width: 24.5%; height: 50px; margin-top: 0px; padding-top: 0px;"
		id="fileUpload" cellspacing="2" align="center">
		<%
			} else {
				Connection con = Conct.conect();
				String sql = "Select Filename from admin_imageinsrt_men where Product_Id=? and ColorName=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, Product);
				ps.setString(2, Color);
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
		%>


		<tr>
			<td><a href="Show_ImageEdit.jsp?Filename=<%=rs.getString("Filename")%>"><%=rs.getString("FileName")%></a></td>
		</tr>



		<%
			}

			}
		%>
	</table>


</body>
</html>