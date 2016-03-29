<!DOCTYPE html>
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

		if (str.equals("Casual")) {
	%>
	<select name="Type_MenWear">
		<option selected="selected">Select Your Type</option>
		<option value="Shirt">Shirt</option>
		<option value="Jeans">Jeans</option>
		<option value="T-Shirt">T-Shirt</option>
		<option value="TrackSuits">TrackSuits</option>
	</select>
	<%
		}
		if (str.equals("Formals")) {
	%>
	<select name="Type_MenWear">
		<option selected="selected">Select Your Type</option>
		<option value="Shirts">Shirts</option>
		<option value="Blazers">Blazers</option>
		<option value="VestCoats">Vest Coats</option>
		<option value="Trousers">Trousers</option>
	</select>
	<%
		}
		if (str.equals("Ethnic")) {
	%>
	<select name="Type_MenWear">
		<option selected="selected">Select Your Type</option>
		<option value="Kurtas">Kurtas</option>
		<option value="Dhotis">Dhotis</option>
		<option value="Sherwani">Sherwani</option>
	</select>
	<%
		}
		if (str.equals("Food")) {
	%>
	<select name="Type_MenWear" onchange="show_weight(this.value)">
		<option selected="selected">Select Your Type</option>
		<option value="Fruits">Fruits</option>
		<option value="Vegetables">Vegetables</option>
		<option value="Pulses">Pulses</option>
		<option value="Meat">Meat</option>
	</select>
	<%
		}
		if (str.equals("Beverages")) {
	%>
	<select name="Type_MenWear" onchange="show_weight(this.value)">
		<option selected="selected">Select Your Type</option>
		<option value="Water">Water</option>
		<option value="Juices">Juices</option>
		<option value="Cold/SoftDrinks">Cold/Soft Drinks</option>
		<option value="Liquor">Liquor</option>
	</select>
	<%
		}
		if (str.equals("Utilities")) {
	%>
	<select name="Type_MenWear" onchange="show_weight(this.value)">
		<option selected="selected">Select Your Type</option>
		<option value="BathEssentials">Bath Essentials</option>
		<option value="KitchenAndDining">Kitchen And Dining</option>
		<option value="HouseKeeping">House Keeping</option>
		<option value="Laundry">Laundry</option>
	</select>
	<%
		}
	%>
</body>
</html>