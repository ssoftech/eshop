<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Bean.Cart_Shopping"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
      String Product_Id=request.getParameter("id");
     int Count=Integer.parseInt(request.getParameter("cnt"));
     Double price=Double.parseDouble(request.getParameter("price"));
     int Qty=Integer.parseInt(request.getParameter("quantity"));
     System.out.println(Product_Id+" "+Count+" "+price+" "+Qty);
     
     double Subtotal=Qty*price;
     out.println(Subtotal);   
     
     ArrayList<Cart_Shopping> arr1=(ArrayList<Cart_Shopping>)session.getAttribute("cc"); 
     Cart_Shopping b=null;
     for(int i=0;i<arr1.size();i++) {  
  	   b=(Cart_Shopping)arr1.get(i);
  	   if(Product_Id.equals(b.getProduct_Id()))
  	   {
  		   System.out.println("same ");
  		   b.setProduct_Id(Product_Id);
  		   b.setTotal_Price(Subtotal);
  		   arr1.set(i,b);
  		  
  	   }
  	   
  	   
     } 
    
     
%>

</body>
</html>