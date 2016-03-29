<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Bean.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<th style="padding: 10px;">Order_No</th>
<th style="padding: 10px;">Customer Name</th>
<th style="padding: 10px;">Email</th>
<th style="padding: 10px;">Phone No</th>
<th style="padding: 10px;">Order Date</th>
<th style="padding: 10px;">Order Amount</th>
<th style="padding-left: 10px; padding-right: 10px;">Status</th>
</tr>

<%
String status=request.getParameter("Status");
if(status.equals("Processing"))
{
Connection con=Conct.conect();
String sql="Select * from order_table where Status=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, status);
ResultSet rs= ps.executeQuery();
while(rs.next())
{
%>

<tr>
<td><%=rs.getString("Order_No") %></td>
<td><%=rs.getString("Customer_Name") %></td>
<td><%=rs.getString("Email") %></td>
<td><%=rs.getString("PhoneNo") %></td>
<td><%=rs.getString("Order_Date") %></td>
<td><%=rs.getString("Order_Amount") %></td>
<td><%=rs.getString("Status") %></td>
</tr>
<%
}
%>
<%
}

else if(status.equals("Cancelled"))
{
Connection con=Conct.conect();
String sql="Select * from order_table where Status=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, status);
ResultSet rs= ps.executeQuery();
while(rs.next())
{
%>

<tr>
<td><%=rs.getString("Order_No") %></td>
<td><%=rs.getString("Customer_Name") %></td>
<td><%=rs.getString("Email") %></td>
<td><%=rs.getString("PhoneNo") %></td>
<td><%=rs.getString("Order_Date") %></td>
<td><%=rs.getString("Order_Amount") %></td>
<td><%=rs.getString("Status") %></td>
</tr>
<%
}
%>
<%
}
else if(status.equals("Delivered"))
{
Connection con=Conct.conect();
String sql="Select * from order_table where Status=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, status);
ResultSet rs= ps.executeQuery();
while(rs.next())
{
%>

<tr>
<td><%=rs.getString("Order_No") %></td>
<td><%=rs.getString("Customer_Name") %></td>
<td><%=rs.getString("Email") %></td>
<td><%=rs.getString("PhoneNo") %></td>
<td><%=rs.getString("Order_Date") %></td>
<td><%=rs.getString("Order_Amount") %></td>
<td><%=rs.getString("Status") %></td>
</tr>
<%
}
%>
<%
}
else if(status.equals("Refunded"))
{
Connection con=Conct.conect();
String sql="Select * from order_table where Status=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, status);
ResultSet rs= ps.executeQuery();
while(rs.next())
{
%>

<tr>
<td><%=rs.getString("Order_No") %></td>
<td><%=rs.getString("Customer_Name") %></td>
<td><%=rs.getString("Email") %></td>
<td><%=rs.getString("PhoneNo") %></td>
<td><%=rs.getString("Order_Date") %></td>
<td><%=rs.getString("Order_Amount") %></td>
<td><%=rs.getString("Status") %></td>
</tr>
<%
}
%>
<%
}
%>
</table>
</body>
</html>