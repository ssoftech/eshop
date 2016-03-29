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

		if (str.equals("KidsBaby")) {
			System.out.println("if loop entered");
	%>
	<select name="Type_KidsWear">
		<option selected="selected">Select Your Type</option>
		<option value="Boys">Boys</option>
		<option value="Girls">Girls</option>
	</select>
	<%
		}
	%>
</body>
</html>