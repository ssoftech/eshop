<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% String str=request.getParameter("State");
if(str.equals("Id"))
{
%>
<td  id="yiyeee">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<select>
<option selected="selected">Select Your City</option>
</select>
</td>
<% 	
}
%>
<td  id="yiyeee">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<% if(str.equals("Karnataka"))
{
%>
<select name="City">
<option selected="selected">Select Your City</option>
<option value="Bengaluru">Bengaluru</option>
</select>
<%}
if(str.equals("WestBengal"))
{%>
<select name="City">
<option selected="selected">Select Your City</option>
<option value="Kolkata">Kolkata</option>
</select>
<%}
if(str.equals("Assam"))
{%>
<select name="City">
<option selected="selected">Select Your City</option>
<option value="Silchar">Silchar</option>
</select>
<%} 
if(str.equals("TamilNaidu"))
{%>
<select name="City">
<option selected="selected">Select Your City</option>
<option value="TamilNaidu">Chennai</option>
</select>
<%} 

%>
</td>
</body>
</html>