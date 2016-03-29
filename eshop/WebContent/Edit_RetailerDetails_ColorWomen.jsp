<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function edit_color(str)
{
	var colorname=document.getElementById("txt1").value;
	alert(str);
	alert(colorname);
	
}</script>
</head>
<body>
	<%
		String Product_Id = request.getParameter("Product_Id");
		if (Product_Id.equals("Id")) {
	%>
	<table class="table" id="color" style="width:100%;">
									<tbody>
									<tr>
									<td>
									<input type="text" class="form-control" id="fit"
												placeholder="Color 1">
									</td>
									<td>
									<input type="text" class="form-control" id="fit"
												placeholder="Quantity 1">
									</td>
									</tr>
									<tr>
									<td>
									<input type="text" class="form-control" id="color2" placeholder="Color 2">
									</td>
									<td>
									<input type="text" class="form-control" id="quantity2" placeholder="Quantity 2"> 
									</td>
									</tr>
									<tr>
									<td>
									<input type="text" class="form-control" id="color3" placeholder="Color 3">
									</td>
									<td>
									<input type="text" class="form-control" id="quantity3" placeholder="Quantity 3"> 
									</td>
									</tr>
									<tr>
									<td>
									<input type="text" class="form-control" id="color4" placeholder="Color 4">
									</td>
									<td>
									<input type="text" class="form-control" id="quantity4" placeholder="Quantity 4">
									</td>
									</tr>
									<tr>
									<td>
									<input type="text" class="form-control" id="color5" placeholder="Color 5">
									</td>
									<td>
									<input type="text" class="form-control" id="quantity5" placeholder="Quantity 5">
									</td>
									</tr>
									<tr>
									<td>
									<button type="submit" class="btn btn-primary btn-block">Add Color & Quantity</button>
									</td>
									<td>
									<input type="text" class="form-control" id="Total_Quantity" placeholder="Total Quantity">
									</td>
									</tr>
									
									</tbody>
									</table>
									
	<div>
	<%
		}

		Connection con3 = Conct.conect();
		PreparedStatement ps3 = null;
		String sql3 = "Select * from retailer_colorinsertwomen where Product_Id=?";
		ps3 = con3.prepareStatement(sql3);
		ps3.setString(1, Product_Id);
		ResultSet rs3 = ps3.executeQuery();
		while(rs3.next())
		{
	%>
            
	      <form action="Retailer_Women_Edit_Color" method="post">
			<div class="form-group">
										
									   <div class="col-sm-4">
									     <input type="text" class="form-control" id="Color2" name="Color" placeholder="ColorName 2" value="<%=rs3.getString("ColorName")%>"> 
									
									</div>
								
									 <div class="col-sm-4">
									   <input type="text" class="form-control" id="Quantity2" name="Quantity" placeholder="Quantity 2" value="<%=rs3.getString("Quantity")%>">
									 </div>
									 <div class="col-sm-4">
									 <button type="submit" class="btn btn-primary btn-block">Edit Color & Quantity</button>
									 <input type="hidden" name="Color_Id" value="<%=rs3.getInt("ColorId") %>">
									 <input type="hidden" name="Product_Id" value="<%=Product_Id%>">
									 </div>
								
									</div>
									</form>
									<%
		}
									%>
									
</div>

</body>
</html>