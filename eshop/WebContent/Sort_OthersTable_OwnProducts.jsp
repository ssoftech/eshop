<%@page import="Bean.Conct"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Bean.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String prdct=request.getParameter("Product");
HttpSession sees=request.getSession();
String email=(String)sees.getAttribute("Email");

if(prdct.equals("MensWear"))
{
%>	
	
	<table class="table-bordered" style="margin-bottom: 1.5%;">
						<thead>
							<tr style="background-color: #ddd;">
								<th style="width: 11%; text-align: center;">Product Added
									On</th>
								<th style="text-align: center;">Product Details</th>
								<th style="width: 10%; text-align: center;">Quantity</th>
								<th style="width: 20%; text-align: center;">Colors
									Available</th>
								<th style="width: 15%; text-align: center;">Product Image</th>

							</tr>
						</thead>
						<tbody>
							<%
								Connection con3 = Conct.conect();
						
								int count = 0;
								String arg[] = new String[5];
								String pid = "";
								String s = "";
                            
							    String sql3 = "Select a1.ProductAddedOn,a1.Product_Id,a1.Category,a1.Type,a1.BrandName,a1.Fittings,a1.Price,a1.About,a1.Tagline,a3.FirstName, a3.LastName, a3.OfficeDetails,a4.TotalQuantity from retailer_productinsertmen a1 inner  join retailer_register a3 on a1.Retailer_Name=a3.FirstName join retailer_totalqty a4 on a1.Product_Id=a4.Product_Id and a3.Email=?";
								PreparedStatement ps3 = con3.prepareStatement(sql3);
								ps3.setString(1, email);
								ResultSet rs3 = ps3.executeQuery();
								while (rs3.next()) {
							%>
							<tr>
								<%
									pid = rs3.getString("Product_Id");
										String sql = "Select count(ColorName)from retailer_colorinsertmen where Product_Id=?";
										PreparedStatement ps = con3.prepareStatement(sql);
										ps.setString(1, pid);
										ResultSet rs = ps.executeQuery();
										while (rs.next()) {
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
								<td style="text-align: center;"><%=rs3.getString("ProductAddedOn")%></td>
								<td style="padding-left: 5px;">ID: <%=rs3.getString("Product_Id")%>
									<br>Name: <%=rs3.getString("BrandName")%> <br>Category:
									<%=rs3.getString("Category")%> <br>Type: <%=rs3.getString("Type")%>
									<br>Fittings: <%=rs3.getString("Fittings")%> <br>Price:
									<i class="fa fa-inr" id="total"></i>&nbsp;<%=rs3.getDouble("Price")%>
								</td>
								<td style="text-align: center;"><%=rs3.getInt("TotalQuantity")%></td>
								<td style="text-align: center;">
									<%
										for (int j = 0; j < count; j++) {
												s = "  " + arg[j] + "";
												out.println(s);
											}
									%>&nbsp;
								</td>
								<td style="text-align: center;"><img
									src="Show_Image_AllProducts?Product_Id=<%=pid%>" height="80px"
									width="90px;"></td>
							</tr>
 						
                             <%
								}
							%> 
						</tbody>
						</table>	
<%
}

if(prdct.equals("WomensWear"))
{
%>	
<table class="table-bordered" id="Table_Sort" style="margin-bottom: 1.5%;">
						<thead>
							<tr style="background-color: #ddd;">
								<th style="width: 11%; text-align: center;">Product Added
									On</th>
								<th style="text-align: center;">Product Details</th>
								<th style="width: 10%; text-align: center;">Quantity</th>
								<th style="width: 20%; text-align: center;">Colors
									Available</th>
								<th style="width: 15%; text-align: center;">Product Image</th>

							</tr>
						</thead>
						<tbody>
							<%
								Connection con3 = Conct.conect();
							    int count = 0;
							    String arg[] = new String[5];
							    String pid4 = "";
								String s = "";
								String sql4 = "Select a1.ProductAddedOn,a1.Product_Id,a1.Category,a1.Type,a1.BrandName,a1.Fittings,a1.Price,a1.About,a1.Tagline,a3.FirstName, a3.LastName, a3.OfficeDetails, a4.TotalQuantity from retailer_productinsertwomen a1 inner  join retailer_register a3 on a1.Retailer_Name=a3.FirstName join retailer_totalqtywomen a4 on a1.Product_Id=a4.Product_Id and a3.Email=?";
								PreparedStatement p4 = con3.prepareStatement(sql4);
								p4.setString(1, email);
								ResultSet rs4 = p4.executeQuery();
								while (rs4.next()) {
							%>
							<tr>
								<%
									    pid4 = rs4.getString("Product_Id");
										String sql = "Select count(ColorName)from retailer_colorinsertwomen where Product_Id=?";
										PreparedStatement ps = con3.prepareStatement(sql);
										ps.setString(1, pid4);
										ResultSet rs = ps.executeQuery();
										while (rs.next()) {
											count = rs.getInt(1);
											 /* out.println(count); */

										}
										String sql2 = "Select ColorName from retailer_colorinsertwomen where Product_Id=?";
										PreparedStatement ps2 = con3.prepareStatement(sql2);
										ps2.setString(1, pid4);
										ResultSet rs2 = ps2.executeQuery();
										int i = 0;
										while (rs2.next()) {
											arg[i] = rs2.getString("ColorName");
											i++;
										}
								%>
								<td style="text-align: center;"><%=rs4.getString("ProductAddedOn")%></td>
								<td style="padding-left: 5px;">ID: <%=rs4.getString("Product_Id")%>
									<br>Name: <%=rs4.getString("BrandName")%> <br>Category:
									<%=rs4.getString("Category")%> <br>Type: <%=rs4.getString("Type")%>
									<br>Fittings: <%=rs4.getString("Fittings")%> <br>Price:
									<i class="fa fa-inr" id="total"></i>&nbsp;<%=rs4.getDouble("Price")%>
								</td>
								<td style="text-align: center;"><%=rs4.getInt("TotalQuantity")%></td>
								<td style="text-align: center;">
									<%
										for (int j = 0; j < count; j++) {
												s = "  " + arg[j] + "";
												out.println(s);
											}
									%>&nbsp;
								</td>
								<td style="text-align: center;"><img
									src="Show_Image_AllProducts?Product_Id=<%=pid4%>" height="80px"
									width="90px;"></td>
							</tr>
							<%
								}
							%>
						</tbody>
					</table>
<%
}
%>


</body>
</html>