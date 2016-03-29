<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Bean.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel='stylesheet' type='text/css' href="css/style_showproductdetails.css" />
<title>Insert title here</title>
<script  type = "text/javascript" language = "javascript">
function myfunction()
{
	confirm("Are you sure you want to proceed?");
	
	
	
}


</script>
</head>
<body>
<% String category=request.getParameter("Product"); %>
<table  id="show_imagedelete" cellspacing="4" >
            
            <tr >
            <th colspan="10" style="font-size: 18px;">Show Product Details</th>
            </tr>
            
             <tr>
            <td colspan="10" style="padding-bottom: 4px;">
            <select name="Product_Id" >
					<option selected="selected" value="Id" >Select Your Product</option>
					<%
					
					Connection con=Conct.conect();
					PreparedStatement ps=null;
					String sql="Select Product_Id from admin_productinsert_men";
					ps=con.prepareStatement(sql);
					ResultSet rs=ps.executeQuery();
					while(rs.next())
					{	
					%>
					<option selected="selected" value="<%=rs.getString(1)%>"><%=rs.getString(1) %></option>
					
					<%
					} 
					%>
					</select>
					</td>
            
            </tr>
            <tr>
            <th>Product Added On</th>
            <th>Product Id</th>
            <th>Category</th>
            <th>Type</th>
            <th>Brand Name</th>
            <th>Fittings</th>
            <th>Price</th>
            <th>About Product</th>
            <th>Tagline</th>
            <th>Delete</th>
            </tr>
            <tr>
            <% 


Connection con3=Conct.conect();
String sql3="Select * from admin_productinsert_men where Product_Id=?";
PreparedStatement ps3=con.prepareStatement(sql3);
ps3.setString(1, category);
ResultSet rs3=ps3.executeQuery();

while(rs3.next())
{

%>
	
<td style="padding-left:0.4%;"><%=rs3.getString("ProductAddedOn") %></td>
<td><%=rs3.getString("Product_Id") %></td>
<td><%=rs3.getString("Category") %></td>
<td><%=rs3.getString("Type") %></td>
<td><%=rs3.getString("BrandName")%></td>
<td><%=rs3.getString("Fittings") %></td>
<td><%=rs3.getInt("Price")%></td>
<td><%=rs3.getString("About") %></td>
<td><%=rs3.getString("Tagline") %></td>
<td><a href="Admin_DeletePrdct_Men?ProductId=<%=rs3.getString("Product_Id") %>">Delete</a></td>
<% 

}

%>
   </tr>         
   </table>







</body>
</html>