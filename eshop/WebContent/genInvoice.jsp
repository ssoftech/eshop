<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import ="Bean.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Invoice</title>

<link rel="stylesheet" href="css1/invoiceStyle101.css">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />

<link href="http://fonts.googleapis.com/css?family=Cookie"
	rel="stylesheet" type="text/css" />

<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />


</head>
<body>
<p>
			<% 
			HttpSession sss=request.getSession();
			String email=(String)sss.getAttribute("Email");
			%>
			Logged in as <%=email %> <a href="Logout_Retailer">Log Out</a>
			
			</p>

			<%
			String First_Name="";
			String Last_Name="";
			String Full_Name="";
			int Order_No=0;
			String Order_Date="";
			String Customer_Name="";
			Connection con=Conct.conect();
			String sql="Select a1.FirstName, a1.LastName,a3.Order_No,a4.Order_Date,a4.Customer_Name from retailer_register a1 inner join retailer_productinsertmen a2 on a1.FirstName=a2.Retailer_Name join order_details a3 on a2.Product_Id=a3.Product_Id join order_table a4 on a3.Order_No=a4.Order_No and a1.Email=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				First_Name=rs.getString("FirstName");
				Last_Name=rs.getString("LastName");
				Order_No=rs.getInt("Order_No");
				Order_Date=rs.getString("Order_Date");
				Customer_Name=rs.getString("Customer_Name");
				
			}
			
			Full_Name=First_Name +" "+Last_Name;
			
			
			
			%>
	<!-- part 1 -->
	<table id="invoiceTab" class="part1">
		<tr>
			<td width="85%" style="text-align: center; font-size: xx-large;">
				INVOICE</td>
			<td align="center" width="5%"><i class="fa fa-floppy-o fa-lg" title="Download"></i></td>
			<td align="center" width="5%"><i class="fa fa-print fa-lg" title="Print"></i></td>
			<td align="center" width="5%"><i class="fa fa-share-square-o fa-lg" title="Share With..."></i></td>
		</tr>
	</table>

   
	<!-- part 2 -->
	<table class="part2">
		<tr>
			<td>Invoice No.</td>
			<td><input type="text" name="txtInvoiceNo" /></td>
			<td>Delivery Date</td>
			<td><input type="text" name="txtInvoiceDate"  /></td>
			<td>Customer</td>
			<td><input type="text" name="txtUserName"  value="<%=Customer_Name%>" readonly="readonly"/></td>
			<td>Retailer</td>
			<td><input type="text" name="txtRetailerName" value="<%= Full_Name%>" /></td>
		</tr>
		<tr>
			<td>Order No.</td>
			<td><input type="text" name="txtOrderNo" value="<%=Order_No%>" readonly="readonly"/></td>
			<td>Order Date</td>
			<td><input type="text" name="txtOrderDate" value="<%=Order_Date %>" readonly="readonly"/></td>
		</tr>
		<tr>
			<td></td>
		</tr>
	</table>

	<!-- part 3 -->
	<table class="part3">
		<tr>
			<td><label>INVOICE LINE</label></td>
		</tr>
	</table>

	<!-- part 4 -->
	<table class="part4" width="100%" rules="cols">
		<tr style="border-bottom: 1px solid black;">
			<th width="30">Sl No.</th>
			<th width="170"><label>Product ID</label></th>
			<th width="200"><label>Product Name</label></th>
			<th width="80"><label>Quantity</label></th>
			<th width="130"><label>Price</label></th>
			<th width="130"><label>Total Price</label></th>
		</tr>
		<%
   
   String sql2="Select Product_Id,BrandName,Quantity,Price from order_details where Order_No=?";
   PreparedStatement ps2=con.prepareStatement(sql2);
   ps2.setInt(1, Order_No);
   ResultSet rs2=ps2.executeQuery();
   while(rs2.next())
   {
	   int i=1;
   %>
		<tr>
			<td><%=i %></td>
			<td><%=rs2.getString("Product_Id") %></td>
			<td><%=rs2.getString("BrandName") %></td>
			<td><%=rs2.getString("Quantity") %></td>
			<td><%=rs2.getDouble("Price") %></td>
			<td><%=rs2.getDouble("Price") %></td>
		</tr>
		<%
		i++;
   }
		%>
	</table>

	<!-- part 5 -->
	<table class="part5" width="100%">
		<tr>
			<td width="80%" align="right"><label>Total Amount: </label></td>
			<td align="center"><input type="text" name="txtTotalAmount" id="txtTotalAmount"></td>
		</tr>
		<tr>
			<td width="80%" align="right"><label>VAT: </label></td>
			<td align="center"><input type="text" name="txtVAT" id="txtVAT"></td>
		</tr>
	</table>

	<p>

	<!-- part 6 -->
	<table class="part6" style="text-align: right;">
		<tr>
			<td width="85%"></td>
			<td align="center" width="5%"> <i class="fa fa-floppy-o fa-lg" title="Download" onclick="window.print();"></i></td>
			<td align="center" width="5%"><i class="fa fa-print fa-lg" title="Print"></i></td>
			<td align="center" width="5%"><i class="fa fa-share-square-o fa-lg" title="Share With..."></i></td>
		</tr>
	</table>

	<hr>


</body>
</html>