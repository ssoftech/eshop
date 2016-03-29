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
String Product_Id=request.getParameter("Product_Id");
if(Product_Id.equals("Id"))
{
%>
<form action="Admin_Men_Edit_ColorPrdct" method="post">
			<table id="Color_Table"  style="width:44.3%; height:200px;" cellspacing="4"   align="center" >
			
			<tr><th colspan="2">Edit Color Details</th></tr>
			<tr><td colspan="2"><select name="Product_Id"  >
					<option selected="selected" value="Id">Select Your Product</option>
					<%
					
					Connection con2=Conct.conect();
					PreparedStatement ps2=null;
					String sql2="Select Product_Id from admin_productinsert_men where Product_Id!=?";
					ps2.setString(1, Product_Id);
					ps2=con2.prepareStatement(sql2);
					ResultSet rs2=ps2.executeQuery();
					while(rs2.next())
					{	
					%>
					<option value="<%=rs2.getString(1)%>"><%=rs2.getString(1) %></option>
					
					<%
					} 
					%>
					</select>
			</td></tr>
		   <tr><td style="padding-left:12.3%;"><input type="text" name="Color1" placeholder="Available Color 1" size="16"></td>
			<td style="padding-right:10%;"><input type="text" name="Quantity1" placeholder="Available Quantity 1" size="16" class="size"></td>
			</tr>
			
			<tr><td style="padding-left:12.3%;"><input type="text" name="Color2" placeholder ="Available Color 2" size="16"></td>
			<td style="padding-right:10%;"><input type="text" name="Quantity2" placeholder="Available Quantity 2" size="16" class="size"></td>
			</tr>
			<tr><td style="padding-left:12.3%;"><input type="text" name="Color3" placeholder ="Available Color 3" size="16"></td>
			<td style="padding-right:10%;"><input type="text" name="Quantity3" placeholder="Available Quantity 3" size="16" class="size"></td>
			</tr>
			
			
			<tr><td style="padding-left:12.3%;"><input type="text" name="Color4" placeholder="Available Color 4" size="16"></td>
			<td style="padding-right:10%;"><input type="text" name="Quantity4" placeholder="Available Quantity 4" size="16" class="size"></td>
			</tr>
			
			<tr><td style="padding-left:12.3%;"><input type="text" name="Color5" placeholder="Available Color 5" size="16"></td>
			<td style="padding-right:10%;"><input type="text" name="Quantity5" placeholder="Available Quantity 5" size="16" class="size"></td>
			</tr>
			
			<tr><td style="padding-left:12.3%;"><input type="Submit" value="Edit Color" ></td>
			<td style="padding-right:10%;"><input type="text" name="Total Quantity" placeholder=" Total Quantity" size="16" id="Total_Quantity" ></td><td></td></tr>
			</table>
           </form>
           
<% 
}

Connection con3=Conct.conect();
PreparedStatement ps3=null;
String sql3="Select * from admin_colorinsrt_men where Product_Id=?";
ps3=con3.prepareStatement(sql3);
ps3.setString(1,Product_Id);
ResultSet rs3=ps3.executeQuery();
if(rs3.next())
{
%>	
	
<!-- <form action="Admin_Men_Edit_ColorPrdct" method="post"> -->
			<table id="Color_Table"  style="width:49.3%; height:200px;" cellspacing="4"   align="center" >
			
			<tr><th colspan="2">Edit Color Details</th></tr>
			<tr><td colspan="2"><select name="Product_Id" >
					<option selected="selected" value="Id">Select Your Product</option>
					</select>
			</td></tr>
		    <tr><td style="padding-left:12.3%;"><input type="text" name="Color1" placeholder="Available Color 1" size="16" value="<%=rs3.getString("ColorName1") %>"></td>
			<td style="padding-right:10%;"><input type="text" name="Quantity1" placeholder="Available Quantity 1" size="16" value="<%=rs3.getString("Quantity1") %>" class="size"></td>
			</tr>
			
			<tr><td style="padding-left:12.3%;"><input type="text" name="Color2" placeholder ="Available Color 2" size="16" value="<%=rs3.getString("ColorName2") %>"></td>
			<td style="padding-right:10%;"><input type="text" name="Quantity2" placeholder="Available Quantity 2" size="16" value="<%=rs3.getString("Quantity2") %>" class="size"></td>
			</tr>
			<tr><td style="padding-left:12.3%;"><input type="text" name="Color3" placeholder ="Available Color 3" value="<%=rs3.getString("ColorName3")%>" size="16"></td>
			<td style="padding-right:10%;"><input type="text" name="Quantity3" placeholder="Available Quantity 3" size="16" value="<%=rs3.getString("Quantity3") %>" class="size"></td>
			</tr>
			
			
			<tr><td style="padding-left:12.3%;"><input type="text" name="Color4" placeholder="Available Color 4" value="<%=rs3.getString("ColorName4")%>"size="16"></td>
			<td style="padding-right:10%;"><input type="text" name="Quantity4" placeholder="Available Quantity 4" value="<%=rs3.getString("Quantity4")%>" size="16" class="size"></td>
			</tr>
			
			<tr><td style="padding-left:12.3%;"><input type="text" name="Color5" placeholder="Available Color 5" value="<%=rs3.getString("ColorName5") %>" size="16"></td>
			<td style="padding-right:10%;"><input type="text" name="Quantity5" placeholder="Available Quantity 5" value="<%=rs3.getString("Quantity5") %>" size="16" class="size"></td>
			</tr>
			
			<tr>
			<td style="padding-right:10%;" colspan="2"><input type="hidden" name="Product_Id_Color"  value="<%=Product_Id%>" size="16" class="size"></td>
			</tr>
			
			<tr><td style="padding-left:12.3%;"><input type="Submit" value="Edit Color" ></td>
			<td style="padding-right:10%;"><input type="text" name="Total Quantity" placeholder=" Total Quantity" size="16" id="Total_Quantity" ></td></tr>
			
			
			</table>
         <!--   </form> -->

<%
}

%>

</body>
</html>