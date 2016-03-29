<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/style_masterpage.css" rel='stylesheet' type='text/css' />
</head>
<body>
<%
String product=request.getParameter("Product_Id");
Connection con=Conct.conect();
String sql="Select Product_Id from admin_productinsert_men where Product_Id=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,product);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
	 
%>	

	<tr id="product">
		 <td style="padding-left: 5%;" "><input type="text" 
			name="Product_Id" placeholder="Product_Id" size="39" id="Product_Id"></td>
		<td id="productloc"><img src="images/Wrong_mark.png"></td>
	 
	</tr>
<%}
else
{
%>
<tr id="product">

	<td style="padding-left: 5%;" id="product"><input type="text" 
		name="Product_Id" placeholder="Product_Id" size="39" id="Product_Id" value="<%=product%>"></td>
	<td id="productloc"></td>
	</tr>
<% 
}
%>

</body>
</html>