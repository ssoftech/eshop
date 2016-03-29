<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String product_id=request.getParameter("Product_Id");
System.out.println("Product_Id is"+product_id);
String retailer_name=request.getParameter("Retailername");
System.out.println("Retailer_name is"+retailer_name);

Connection con=Conct.conect();
String Sql="Select Product_Id, Retailer_Name from retailer_productinsertmen where Product_Id=? And Retailer_Name=?";
PreparedStatement ps=con.prepareStatement(Sql);
ps.setString(1,product_id );
ps.setString(2, retailer_name);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
%>	<tr id="product">
	<td style="padding-left: 5%;"><input type="text"
		name="Product_Id" placeholder="Product_Id" size="39"  id="ProductId"></td>
	<td id="productloc"><img src="images/Wrong_mark.png"></td>
</tr>
<%
}
else
{
%>	
<tr id="product">
	<td style="padding-left: 5%;"><input type="text"
		name="Product_Id" placeholder="Product_Id" size="39"  id="ProductId" value="<%=product_id %>" ></td>
	<td id="productloc"></td>
</tr>
<% 
}
%>

</body>
</html>