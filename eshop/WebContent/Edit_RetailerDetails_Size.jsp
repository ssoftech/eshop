<%@page import="Bean.Conct"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
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
	String sql="Select SizeId,Size from retailer_sizeinsrt_men where Product_Id=? and ColorName=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1, Product_Id);
	ps.setString(2, color);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
	%>	
           <form action="Retailer_Men_Edit_Size" method="post">
			<div class="form-group">
										
									   <div class="col-sm-8">
									     <input type="text" class="form-control text-center" id="Size" name="Size" placeholder="Size Here" value="<%=rs.getString("Size")%>"> 
									</div>
									 <div class="col-sm-4" style="border-right:1px solid #DDD;">
									 <input type="hidden" name="Product_Id" value="<%=Product_Id%>">
									 <input type="hidden" name="SizeId" value="<%=rs.getString("SizeId") %>">
									 <input type="hidden" name="Color" value="<%=color%>">
									 <button type="submit" class="btn btn-primary btn-block">Edit Size</button>
									 
									 </div>
								
									</div>
									</form>
									
									
    <%
	}
	%>
	
<%	
}
else
{
%>
<div class="col-sm-6" id="image_sizetable" style="padding-left:0px;">
                                     <input type="text" class="form-control" id="Size1"
													placeholder="Size 1"><br>
									 <input type="text" class="form-control" id="Size2" placeholder="Size 2"><br>
									 <input type="text" class="form-control" id="Size3" placeholder="Size 3"><br>
									 <input type="text" class="form-control" id="Size4" placeholder="Size 4"><br>
									 <input type="text" class="form-control" id="Size5" placeholder="Size 5"><br>
									 <button type="submit" class="btn btn-primary btn-block">Edit
													Size</button>
							          </div>

<%
}
%>
</body>
</html>