<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*, Bean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Insert title here</title>
</head>
<body>
	<%
		String str = request.getParameter("UserInfo");
		System.out.println(str + "UserInfor visible");
	%>

	<div id="dashMain"
		style="width: 100%; border: 1px solid white; border-radius: 10px; min-height: 100px;">
		<%
			Connection con = Conct.conect();
			String sql = "select FirstName, LastName, Email, PhoneNo from user_register where Email=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, str);

			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
		%>
			<form name="" action="" method="post">
			<ul style="list-style: none; margin-top: 7%; margin-bottom: 10%;">
				<li style="margin-bottom: 40px; font-size: large;"><label for="FirstName"
					style="color: white; text-shadow: 0px 0px 3px white; margin-left: 25%;">First Name : </label>
					<input type="text" name="FirstName" id="FirstName" value="<%=rs.getString("FirstName")%>" readonly="readonly"
					style="font-size: medium; height: 40px; width: 240px; float: right; margin-right: 25%; margin-top: -30px; padding-left: 4px; text-shadow: 0px 0px 3px white; background: transparent; color: white; border: 1px solid #DBD2D2; border-radius: 5px; box-shadow: 0px 0px 7px 1px white;" /></li>
				<li style="margin-bottom: 40px; font-size: large;"><label for="LastName"
					style="color: white; text-shadow: 0px 0px 3px white; margin-left: 25%;">Last Name : </label>
					<input type="text" name="LastName" value="<%=rs.getString("LastName")%>" readonly="readonly"
					style="font-size: medium; height: 40px; width: 240px; float: right; margin-right: 25%; margin-top: -30px; padding-left: 4px; text-shadow: 0px 0px 3px white; background: transparent; color: white; border: 1px solid #DBD2D2; border-radius: 5px; box-shadow: 0px 0px 7px 1px white;" /></li>
				<li style="margin-bottom: 40px; font-size: large;"><label for="FirstName"
					style="color: white; text-shadow: 0px 0px 3px white; margin-left: 25%;">Email ID : </label>
					<input type="text" name="Email" id="Email" value="<%=rs.getString("Email")%>" readonly="readonly"
					style="font-size: medium; height: 40px; width: 240px; float: right; margin-right: 25%; margin-top: -30px; padding-left: 4px; text-shadow: 0px 0px 3px white; background: transparent; color: white; border: 1px solid #DBD2D2; border-radius: 5px; box-shadow: 0px 0px 7px 1px white;" /></li>
				<li style="margin-bottom: 40px; font-size: large;"><label for="FirstName"
					style="color: white; text-shadow: 0px 0px 3px white; margin-left: 25%;">Phone Number : </label>
					<input type="text" name="PhoneNo" id="PhoneNo" value="<%=rs.getString("PhoneNo")%>" readonly="readonly"
					style="font-size: medium; height: 40px; width: 240px; float: right; margin-right: 25%; margin-top: -30px; padding-left: 4px; text-shadow: 0px 0px 3px white; background: transparent; color: white; border: 1px solid #DBD2D2; border-radius: 5px; box-shadow: 0px 0px 7px 1px white;" /></li>
			</ul>
		</form>
		<%
			}
		%>

	</div>
</body>
</html>