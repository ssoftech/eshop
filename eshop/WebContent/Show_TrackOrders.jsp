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
           <tr align="center">
           <th colspan="7" style="height: 40px; text-align: center;">
           Customer Information
           </th>
           </tr>
           <tr>
            <th style="padding: 10px;">Order_No</th>
            <th style="padding: 10px;">Customer Name</th>
            <th style="padding: 10px;">Email</th>
            <th style="padding: 10px;">Phone No</th>
            <th style="padding: 10px;">Order Date</th>
            <th style="padding: 10px;">Total Order Amount</th>
            <th style="padding-left: 10px; padding-right: 10px;">Status</th>
            </tr>
           
    <%
    String order_no=request.getParameter("Order_id");
Connection con=Conct.conect();
String sql="Select * from order_table where Order_No=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,order_no );
ResultSet rs= ps.executeQuery();
if(rs.next())
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
<tr>
           <th colspan="7" style="background-color: #c3c3c3;">
           Product Information
           </th>
           </tr>
           <tr>
            <th colspan="2" style="padding: 10px;">Order_No</th>
            <th colspan="2" style="padding: 10px;">Brand Name</th>
            <th colspan="2" style="padding: 10px;">Category</th>
            <th colspan="2" style="padding: 10px;">Amount</th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            </tr>
<% 
String sql2="Select Order_No,BrandName,Category,Price from order_details where Order_No=?";
PreparedStatement ps2=con.prepareStatement(sql2);
ps2.setString(1,order_no );
ResultSet rs2= ps2.executeQuery();
while(rs2.next())
{
%>

<tr>
<td colspan="2"><%=rs2.getString("Order_No") %></td>
<td colspan="2"><%=rs2.getString("BrandName") %></td>
<td colspan="2"><%=rs2.getString("Category") %></td>
<td colspan="2"><%=rs2.getString("Price") %></td>

</tr>
<%
}
%>
</table>
</body>
</html>