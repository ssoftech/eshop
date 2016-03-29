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
		String str = request.getParameter("CategorySelect");
		System.out.println(str + "CategorySelect wala Parameter in Ajax");
		if (str.equals("Category")) {
	%>
	<select>
		<option selected="selected">Select Your Type</option>
	</select>
	<%
		}

		if (str.equals("Formals")) {
	%>
	<select name="Type_WomenWear">
		<option selected="selected">Select Your Type</option>
		<option value="Shirt">Shirt</option>
		<option value="Skirts">Skirts</option>
		<option value="Scarves">Scarves & Stoles</option>
		<option value="Trousers">Trousers</option>
		<option value="Waistcoats">Waistcoats</option>
	</select>
	<%
		}
		if (str.equals("Casual")) {
	%>
	<select name="Type_WomenWear">
		<option selected="selected">Select Your Type</option>
		<option value="Tops">Tops</option>
		<option value="Jeans">Jeans</option>
		<option value="T-Shirts">T-Shirts</option>
		<option value="Skirts">Skirts</option>
	</select>
	<%
		}
		if (str.equals("Ethnic")) {
	%>
	<select name="Type_WomenWear">
		<option selected="selected">Select Your Type</option>
		<option value="Kurtas">Kurtas & Kurtis</option>
		<option value="Sarees">Sarees</option>
		<option value="Salwar">Salwar Kurta & Dupattas</option>
	</select>
	
	<%
		}
	%>
</body>
</html>