<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="Model.Model_Cart"%>
<%@page import="Bean.*"%>
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
String email=request.getParameter("email");
   String id=request.getParameter("id");
   double price=Double.parseDouble(request.getParameter("price"));
   int quantity=Integer.parseInt(request.getParameter("quantity")); 
   int cnt=Integer.parseInt(request.getParameter("cnt"));
   
   /* ArrayList<TotalBean> ar=(ArrayList<TotalBean>)session.getAttribute("cc1"); */
  
   double total_price=price*quantity;
    Cart_Shopping bn=new Cart_Shopping();
   bn.setProduct_Id(id);
   bn.setQuantity(quantity);
   bn.setPrice(price);
   
   bn.setTotal_Price(total_price);
   
   out.println(bn.getTotal_Price());
   
   int i=Model_Cart.Update_Quantity_TotalPrice(bn);
   /* Connection con=Conct.conect();
   String sql="select Total_Price from registered_cart where Email=?";
   PreparedStatement ps=con.prepareStatement(sql);
   ps.setString(1,email);
   ResultSet rs=ps.executeQuery();
   while(rs.next())
   {
   	System.out.println(total_price+"+"+rs.getDouble("Total_Price"));
   	total_price=total_price+rs.getDouble("Total_Price");
   	System.out.println("="+total_price);
   	
   	TotalBean tb=new TotalBean(email,total_price);
   	ar.add(tb);
   	
   	
   } */
   
  
   
    
 
 
%>
</body>
</html>