<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String prdct=request.getParameter("Product");
if(prdct.equals("Fruits"))
{
%>
<select name="Units" style="width:172px; margin-left:-135px; height: 27px;">
<option value="id">Select The Unit Here</option>
<option value="mg">mg</option>
<option value="gm">gm</option>
<option value="kg">kg</option>
</select>
<%	
}

if(prdct.equals("Vegetables"))
{
%>
<select name="Units" style="width:172px; margin-left:-135px; height: 27px;">
<option value="id">Select The Unit Here</option>
<option value="mg">mg</option>
<option value="gm">gm</option>
<option value="kg">kg</option>
</select>
<% 	
}

if(prdct.equals("Pulses"))
{
%>
<select name="Units" style="width:172px; margin-left:-135px; height: 27px;">
<option value="id">Select The Unit Here</option>
<option value="mg">mg</option>
<option value="gm">gm</option>
<option value="kg">kg</option>
</select>
<%	
}
if(prdct.equals("Meat"))
{
%>
<select name="Units" style="width:172px; margin-left:-135px; height: 27px;">
<option value="id">Select The Unit Here</option>
<option value="mg">mg</option>
<option value="gm">gm</option>
<option value="kg">kg</option>
</select>
<%
}
if(prdct.equals("Water"))
{
%>
<select name="Units" style="width:172px; margin-left:-135px; height: 27px;">
<option value="id">Select The Unit Here</option>
<option value="ml">ml</option>
<option value="L">L</option>
</select>
<%
}
if(prdct.equals("Juices"))
{
%>
<select name="Units" style="width:172px; margin-left:-135px; height: 27px;">
<option value="id">Select The Unit Here </option>
<option value="ml">ml</option>
<option value="L">L</option>
</select>
<%
}
if(prdct.equals("Cold/SoftDrinks"))
{
%>
<select name="Units" style="width:172px; margin-left:-135px; height: 27px;">
<option value="id">Select The Unit Here </option>
<option value="ml">ml</option>
<option value="L">L</option>
</select>
<%
} 
if(prdct.equals("Cold/SoftDrinks"))
{
%>
<select name="Units" style="width:172px; margin-left:-135px; height: 27px;">
<option value="id">Select The Unit Here </option>
<option value="ml">ml</option>
<option value="L">L</option>
</select>
<%
} 
if(prdct.equals("Liquor"))
{
%>
<select name="Units" style="width:172px; margin-left:-135px; height: 27px;">
<option value="id">Select The Unit Here </option>
<option value="ml">ml</option>
<option value="L">L</option>
</select>
<%
}
if(prdct.equals("BathEssentials"))
{
%>
<select name="Units" style="width:172px; margin-left:-135px; height: 27px;">
<option value="id">Select The Unit Here </option>
<option value="piece">piece</option>
<option value="mg">mg</option>
<option value="gm">gm</option>
<option value="kg">kg</option>
</select>	
<%
}
if(prdct.equals("KitchenAndDining"))
{
%>
<select name="Units" style="width:172px; margin-left:-135px; height: 27px;">
<option value="id">Select The Unit Here </option>
<option value="piece">piece</option>
<option value="mg">mg</option>
<option value="gm">gm</option>
<option value="kg">kg</option>
</select>
<%
}
if(prdct.equals("HouseKeeping"))
{
%>
<select name="Units" style="width:172px; margin-left:-135px; height: 27px;">
<option value="id">Select The Unit Here </option>
<option value="piece">piece</option>
<option value="mg">mg</option>
<option value="gm">gm</option>
<option value="kg">kg</option>
</select>
<%
}
if(prdct.equals("Laundry"))
{
%>
<select name="Units" style="width:172px; margin-left:-135px; height: 27px;">
<option value="id">Select The Unit Here </option>
<option value="piece">piece</option>
<option value="mg">mg</option>
<option value="gm">gm</option>
<option value="kg">kg</option>
</select>
<%	
}
%>
</body>
</html>