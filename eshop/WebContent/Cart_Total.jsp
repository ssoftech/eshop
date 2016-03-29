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
<% ArrayList<Cart_Shopping> arr1=(ArrayList<Cart_Shopping>)session.getAttribute("cc"); 
 double total_price=0.0;

 Iterator<Cart_Shopping> it=arr1.iterator();
 while(it.hasNext())
{
	 Cart_Shopping bn=it.next();
	 total_price+=bn.getTotal_Price();
}  
 /* double total_price=0;
     for(int i=0;i<arr1.size();i++) {  
    	 Cart_Shopping  b=(Cart_Shopping)arr1.get(i);
    	 total_price+=b.getTotal_Price();
  	 
     } */%>
 <%=total_price%>
</body>
</html>