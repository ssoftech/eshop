<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- Font Awesome Link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
</head>
<body>
<%
String Product_id=request.getParameter("Product_Id");
if(Product_id.equals("Id"))
{
%>
<div class="col-sm-9" id="select_2">
<select class="form-control">
<option selected="selected">Select Your Color</option>
</select>
</div>
<% 	
}
else
{
	Connection con2=Conct.conect();
	PreparedStatement ps2=null;
	String sql2="Select ColorName from admin_colorinsrt_men where Product_Id=?";
	ps2=con2.prepareStatement(sql2);
	ps2.setString(1, Product_id);
	ResultSet rs2=ps2.executeQuery();
%>
   <div class="col-sm-9" id="select_2">
	<select name="Image_ColorTable2" class="form-control" onchange="show_image_name(this.value)">
	<option selected="selected" value="Id" >Select Your Color</option>
	<% 
	while(rs2.next())
	{	
	%>
	<option value="<%=rs2.getString("ColorName")%>"><%=rs2.getString("ColorName") %></option>
	
	<%
	}
	} 
	
	%>
	</select>
	</div>	

</body>
</html>