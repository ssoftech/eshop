<%@page import="Bean.Conct"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="Bean.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
if(prdct.equals("Price"))
{
%>	
<td id="sort">
<select name="sort" onchange="fullsort(this.value)">
<option value="id" selected="selected">Select Your Sub Type</option>
<option value="Price1">Price(LowToHigh)</option>
<option value="Price2">Price(HighToLow)</option>
</select>

</td>
<% 
}

if(prdct.equals("RetailerName"))
{
	%>
	<td id="sort">
		<select name="sort" onchange="full_sort(this.value)">
		<option value="id" selected="selected">	Select Your Sub Type</option>
		<%
		Connection con=Conct.conect();
		String sql="Select DISTINCT(a1.Retailer_Name) from retailer_productinsertmen a1 inner join retailer_register a2 on a1.Retailer_Name=a2.FirstName and a2.Email!=? ";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, email);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
		%>
		<option value="<%=rs.getString(1) %>"><%=rs.getString(1) %></option>
		<% 	
			
		}
		%>
		</select>
		</td>
<%
}

if(prdct.equals("BrandName"))
{
%>
<td id="sort">
<select name="sort" onchange="full_sortBrand(this.value)">
<option value="id" selected="selected">Select Your Sub Type</option>
<%
  Connection con=Conct.conect();
  String sql="Select DISTINCT(BrandName) from retailer_productinsertmen";
  PreparedStatement ps=con.prepareStatement(sql);
  ResultSet rs=ps.executeQuery();
  while(rs.next())
  {
  %>
  <option value="<%=rs.getString(1) %>"><%=rs.getString(1) %></option>
  <% 	  
  }
con.close();
%>

</select>
<%
}
if(prdct.equals("Date"))
{
 %>
 <table>
 <tr>
 <td>From:</td> 
 <td><input type="text" name="from_date" id="from_date"></td><td>To:</td><td><input type="text" name="to_date" id="to_date"></td><td><input type="button" name="Search" value="Search" onclick="sort_date()" ></td>
 </tr>
 </table>
 <%
}
%>
</body>
</html>