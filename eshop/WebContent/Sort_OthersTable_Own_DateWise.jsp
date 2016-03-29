<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<!-- Font Awesome Link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

</head>
<body>
	<%
		HttpSession sees = request.getSession();
		String email = (String) sees.getAttribute("Email");
		String date = request.getParameter("Date");
		String prdct_id=request.getParameter("Product");

		if (date.equals("Date")) {
	%>
	<div class="col-xs-12 col-md-3 col-md-offset-2">
		<input type="text" class="form-control" id="From_Date"
			name="From_Date" placeholder="Select From Date">
	</div>
	<div class="col-xs-12 col-md-3">
		<input type="text" class="form-control" id="End_Date" name="End_Date"
			placeholder="Select End Date">
	</div>
	<div class="col-xs-12 col-md-1">
		<button type="button" class="btn btn-primary btn-block" onclick="sort_date('<%=prdct_id%>')"><i class="fa fa-search fa-lg"></i></button>
	</div>

	<%
		}
	%>
</body>
</html>