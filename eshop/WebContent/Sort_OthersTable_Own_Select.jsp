<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String prdct=request.getParameter("Product");
HttpSession sees=request.getSession();
String email=(String)sees.getAttribute("Email");

if(prdct.equals("MensWear")|| prdct.equals("WomensWear")||prdct.equals("KidsWear"))
{
%>	
<select class="form-control" name="sort" onchange="fullsort(this.value,'<%=prdct%>');datewise(this.value,'<%=prdct%>')">
	<option value="Price1">Price(Low To High)</option>
	<option value="Price2">Price(High To Low)</option>
	<option value="Date">DateWise Sort</option>
						</select>
<% 
}

%>
</body>
</html>