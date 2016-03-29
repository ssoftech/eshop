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
String pid2=request.getParameter("Product_Id");
System.out.println("Product_Id is"+pid2);
HttpSession sees=request.getSession();
String email=(String)sees.getAttribute("Email");
%>
<table class="OwnProdTab1" border="1" id="Table_Sort">
					<tr>
					<th>Product Added</th>
					<th>Name</th>
					<th>Company Name</th>
					<th>Product Id</th>
					<th>Quantity</th>
					<th>Category</th>
					<th>Type</th>
					<th>BrandName</th>
					<th>Fittings</th>
					<th>Colors Available</th>
					<th>Product Image</th>
					<th>Price</th>
					</tr>
					
					<%  Connection con3=Conct.conect();
					
					
					int count=0;
					String arg[] = new String[5];
					String pid="";
					String s="";
					
					String sql3 = "Select a1.ProductAddedOn,a1.Product_Id,a1.Category,a1.Type,a1.BrandName,a1.Fittings,a1.Price,a1.About,a1.Tagline,a3.FirstName, a3.LastName, a3.OfficeDetails, a4.TotalQuantity from retailer_productinsertmen a1 inner  join retailer_register a3 on a1.Retailer_Name=a3.FirstName join retailer_totalqty a4 on a1.Product_Id=a4.Product_Id and a3.Email=? and a1.BrandName=?  ";
							PreparedStatement ps3 = con3.prepareStatement(sql3);
							ps3.setString(1, email);
							ps3.setString(2, pid2);
							ResultSet rs3 = ps3.executeQuery();
							while(rs3.next()) {
								%>
								<tr>
								<% 
								pid = rs3.getString("Product_Id");
								String sql = "Select count(ColorName)from retailer_colorinsertmen where Product_Id=?";
								PreparedStatement ps = con3.prepareStatement(sql);
								ps.setString(1, pid);
								ResultSet rs = ps.executeQuery();
								while(rs.next()) {
									count = rs.getInt(1);
									/* out.println(count); */

								}
								String sql2 = "Select ColorName from retailer_colorinsertmen where Product_Id=?";
								PreparedStatement ps2 = con3.prepareStatement(sql2);
								ps2.setString(1, pid);
								ResultSet rs2 = ps2.executeQuery();
								int i = 0;
								while (rs2.next()) {
									arg[i] = rs2.getString("ColorName");
									i++;

								}
								
						%>
						<td><%=rs3.getString("ProductAddedOn")%></td>
						<td><%=rs3.getString("FirstName") %> <%=rs3.getString("LastName") %></td>
						<td><%=rs3.getString("OfficeDetails") %></td>
						<td><%=rs3.getString("Product_Id")%></td>
						<td><%=rs3.getInt("TotalQuantity") %></td>
						<td><%=rs3.getString("Category")%></td>
						<td><%=rs3.getString("Type")%></td>
						<td><%=rs3.getString("BrandName")%></td>
						<td><%=rs3.getString("Fittings")%></td>
						<td>
							<%
								for (int j = 0; j < count; j++) {
									s = "  " + arg[j] + "";
									out.println(s);
							 
	 	                    } 
							
							%>&nbsp 
						</td>
						<td style="padding-bottom: 5px;"><img src="Show_Image_AllProducts?Product_Id=<%=pid%>"
							height="80px" width="90px;"></td>
						<td><i class="fa fa-inr" id="total"></i>&nbsp<%=rs3.getDouble("Price")%></td> 
						</tr>
						
						<%
						}
				%>

	 </table>
</body>
</html>