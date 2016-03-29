<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*, java.util.*,Model.ShowFullProduct.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String value=request.getParameter("TypeSelect"); 
%>
<table rules="cols">
<tr>
<th style="padding: 10px;">Product_Id</th>
<th style="padding: 10px;">BrandName</th>
<th style="padding: 10px;">Category</th>
<th style="padding: 10px;">Type</th>
<th style="padding: 10px;">Fittings</th>
<th style="padding: 10px;">Price</th>
<th style="padding-left: 10px; padding-right: 10px;">About The Product</th>
<th style="padding: 10px;">Tagline</th>
<th style="padding: 10px;">Image</th>
</tr>
<%

if(!value.equals("Id"))
{
	
	ArrayList<Men_Prdct> arr=Model.ShowFullProduct.FullProductDetails(value);
	if(arr!=null)
	{
		Iterator<Men_Prdct> it=arr.iterator();
		
		 while(it.hasNext())
		{
		   Men_Prdct ob=it.next();
		%>
			<tr>
			<td><%=ob.getProduct_Id() %></td>
			<td><%=ob.getBrand_Name() %></td>
			<td><%=ob.getCategory() %></td>
			<td><%=ob.getType() %></td>
			<td><%=ob.getFittings() %></td>
			<td><%=ob.getPrice() %></td>
			<td><%=ob.getAbout_The_Product() %></td>
			<td><%=ob.getHeader() %></td>
			<td><img src="Image?pid=<%= ob.getProduct_Id()%>" height="70" width="70"></td>
			
			
			</tr>
	
			
	<% 	
		}
		
	}
	
}


%>

</table>
</body>
</html>