

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<% String str=request.getParameter("TypeSelect");
if(str.equals("Category_Selected"))
{
%>
<select name="Type">
<option selected="selected" value="Id">Select Your Type</option>
</select>
<% 	
}


if(str.equals("Men"))
{
%>
<select name="Type" onchange="View_FullProduct(this.value)" >
<option selected="selected" value="Id">Select Your Type</option>
<option value="Formals">Formals</option>
<option value="Casual">Casual</option>
<option value="Ethnic">Ethnic Wear</option>
</select>
<%}
if(str.equals("Women"))
{%>
<select name="Type" onchange="View_FullProduct(this.value)">
<option selected="selected" value="Id">Select Your Type</option>
<option value="Formals">Formals</option>
<option value="Casual">Casual</option>
<option value="Ethnic">Ethnic Wear</option>
</select>
<%}
if(str.equals("Kids"))
{%>
<select name="Type" onchange="View_FullProduct(this.value)">
<option selected="selected" value="Id">Select Your Type</option>
<option value="Kids_And_Baby_Clothing">Kids And Baby Clothing</option>
</select>
<%} 
if(str.equals("Electronics"))
{%>
<select name="Type" onchange="View_FullProduct(this.value)">
<option selected="selected" value="Id">Select Your Type</option>
<option value="Laptops">Laptops</option>
<option value="Mobiles">Mobiles</option>
</select>
<%} 

%>
</body>
</html>