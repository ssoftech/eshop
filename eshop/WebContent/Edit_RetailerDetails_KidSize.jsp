<%@page import="Bean.Conct"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String color=request.getParameter("Color");
String Product_Id=request.getParameter("Product_Id");

if(Product_Id!="" && color!="")
{
	
	Connection con=Conct.conect();
	String sql="Select Size from retailer_sizeinsrt_kids where Product_Id=? and ColorName=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1, Product_Id);
	ps.setString(2, color);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{


%>
<table id="image_sizetable"
							style="width: 23.5%; height: 50px; margin-top: 0px; padding-top: 0px; padding-left: 4%;"
							cellspacing="2" align="center">
							<tr>
								<td style="padding-left: 6%;"><input type="text"
									placeholder="Size 1" size="16" class="size" value="<%=rs.getString("Size")%>"></td>	
							</tr>

						</table>
						<%
                      }
}
						%>
</body>
</html>