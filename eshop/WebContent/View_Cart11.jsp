<%@page import="Bean.Conct"%>
<%@page import="Model.Model_Cart"%>
<%@page import="Bean.*"%>
<%@page import="java.util.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">



<!-- bootstrap font-awesome link -->
 <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<!-- Bootstrap Links & Scripts -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>



<title>Online Shopping India: Buy Mobiles Electronics Shoes
	Books Clothings Accessories and more @ Dukaan.com</title>

<style>
@import url('http://fonts.googleapis.com/css?family=Ubuntu');

* {
	font-family: Ubuntu;
}

body {
	overflow: scroll;
	overflow-x: hidden;
}
</style>

<script>
	/* 	function status(){
	 if ("${param.Message}") {
	 alert("${param.Message}");
	 } */
	
	 function subTotal(id,cnt,price,q,email)
		{
			
			
			var url="Quantitytotal.jsp?id="+id+"&price="+price+"&quantity="+q+"&cnt="+cnt+"&email="+email;
		var xmlhttp;
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    {
		    document.getElementById("d"+cnt).innerHTML=xmlhttp.responseText;
		    show_Total(email);
		    }
		  }
		xmlhttp.open("POST",url,true);
		xmlhttp.send();
		}
		function show_Total(email)
		{
			
			//var q=5;
			//var url="total.jsp?val="+v+"&id="+i+"&pr="+price+"&n="+n;
			var url="Quantity_all_total.jsp?email="+email;
		var xmlhttp;
		if (window.XMLHttpRequest)
		  {// code for IE7+, Firefox, Chrome, Opera, Safari
		  xmlhttp=new XMLHttpRequest();
		  }
		else
		  {// code for IE6, IE5
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		  }
		xmlhttp.onreadystatechange=function()
		  {
		  if (xmlhttp.readyState==4 && xmlhttp.status==200)
		    {
		    document.getElementById("total").innerHTML=xmlhttp.responseText;
		    }
		  }
		xmlhttp.open("POST",url,true);
		xmlhttp.send();
		}
		
	function quantity_Check(str,str1)
	{ 
		alert(str);
		alert(str1);
		
		if(str>str1)
			{
			   alert("Total quantity available is "+str1+" .Please select lesser quantity");
			}
		
	}
		
</script>

</head>
<body>

   <!-- HEADER -->
	<%@include file="cxHeader1.jsp"%>
	
	 <div class="container">
	  
	  <div class="rows">
	  <h3 class="text-center">Your Cart</h3>
	  <hr>
	  <div class="col-xs-9 col-sm-9 col-md-8" style="border-bottom:1px groove black;">
	  
	  <div class="rows">
	  
	  <div class="col-xs-1 col-sm-1 col-md-1 text-center">
	  <h5>IMAGE</h5>
	  </div>
	  
	  <div class="col-xs-5 col-sm-5 col-md-5 text-center">
	  <h5>PRODUCT DETAILS</h5>
	  </div>
	  
	   <div class="col-xs-1 col-sm-2 col-md-1 text-center">
	  <h5>QTY</h5>
	  </div>
	  
	  <div class="col-xs-2 col-sm-2 col-md-2 text-center">
	  <h5>DELIVERY</h5>
	  </div>
	  
	  <div class="col-xs-2 col-sm-1 col-md-2 text-center">
	  <h5>SUB-TOTAL</h5>
	  </div>
	  
	  <div class="col-xs-1 col-sm-1 col-md-1 text-center">
	  <h5>REMOVE</h5>
	  </div>
	  </div>	
		  </div>
				<%
				    HttpSession sees=request.getSession();
					String email = (String)sees.getAttribute("email");
		            System.out.println("Email is in cart"+email);
					ArrayList<Cart_Shopping> cart_show = Model_Cart.View_cart(email);
					sees.setAttribute("cc1", cart_show);
					if (cart_show != null) {
						Iterator<Cart_Shopping> it = cart_show.iterator();
	
					Double Price = 0.00;
					Double TotPrice = 0.00;
					int i = 0;
				    String color="";
					int cnt = 0;
					String pid = "";
					String filename="";
					    
					while(it.hasNext())
					    {
					 
						    Cart_Shopping ob = it.next();
							TotPrice =TotPrice+ob.getTotal_Price();
							Price = ob.getPrice();
							pid = ob.getProduct_Id();
							filename=ob.getFilename();
							color=ob.getColor();
				%>
	
				<div class="col-xs-3 col-sm-3 col-md-3 col-offset-1 pull-right text-center" style="border-left:1px solid #DDD;margin-top:0.9%; background-color: #E1E1E1;">
	 <h5 id="total">TOTAL PRICE:&nbsp;<i class="fa fa-inr fa-lg"></i>&nbsp;<%=TotPrice %></h5>
	 <button type="submit" class="btn btn-info btn-block">Place Order</button>
	 <hr>
	 <h5 style="font-weight: bold; font-stretch: expanded;">PAYMENT SUMMARY</h5>
	 <br/>
	 <h5 style="font-weight:bold; text-align: left;">Price:&nbsp;<i class="fa fa-inr"></i>&nbsp;<%=TotPrice%></h5>
	 <p></p>
	 <h5 style="font-weight:bold; text-align: left;">Handling Charges:&nbsp;<i class="fa fa-inr"></i>&nbsp;XXXX.XX</h5>
	 <p></p>
	 <h5 style="font-weight:bold; text-align: left;">VAT:&nbsp;<i class="fa fa-inr"></i>&nbsp;XXXX.XX</h5>
	 <hr>
	 <h5 style="font-weight:bold;" id="total">TOTAL PAYMENT:&nbsp;<i class="fa fa-inr fa-lg"></i>&nbsp;<%=TotPrice%></h5>
	 
	 <button type="submit" class="btn btn-warning btn-block"><i
			class="fa fa-mail-reply fa-lg">&nbsp;&nbsp;</i>Continue Shopping</button>
		<br>	
	 </div>
	 </div>
	 <%
	
			String check=Model_Cart.Product_IdCheck(pid);
			int qty=Model_Cart.QuantityCheck(pid, check,color);
			if(check.equals("Men"))
			{
	 %>
		 
	 <div class="rows">
	 
	 <div class="col-xs-9 col-sm-9 col-md-8" style="border:1px solid #ddd; margin-top:1%; background-color: #E1E1E1;">
	  
	  <div class="rows" style="margin-top:1%; padding-bottom:1%;">
	  
	  <div class="col-xs-1 col-sm-1 col-md-1 text-center" style="padding-left:0.9px; margin-top:1%;">
	  <img class="thumbnail" src="Image_Women?pid=<%=pid%>" height="100" width="102">
	  </div>
	  
	  <div class="col-xs-5 col-sm-5 col-md-5 text-center">
	  <h5><%=ob.getBrand() %></h5>
	  <h5><%=ob.getTagline() %></h5>
	  <h5><%=ob.getColor() %></h5>
	  <h5>SIZE</h5>
	  <% if(qty<=6)
	  {
	  %>
	  <h5 style="color:purple;">Only <%=qty %> stock left</h5>
	  <% 
	  } 
	  %>
	  </div>
	  <%
	    cnt = cnt + 1;
	  %>
	   <div class="col-xs-1 col-sm-2 col-md-1 text-center" style="margin-top:1%;">
	  <select id="quantity" onchange="subTotal('<%=ob.getProduct_Id()%>',<%=cnt%>,<%=ob.getPrice()%>,this.value,'<%=email%>'); quantity_Check(this.value,'<%=qty%>')">
						<option selected="selected" value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
				</select>
	  </div>
	  
	  <div class="col-xs-2 col-sm-2 col-md-2 text-center">
	  <h5><%=ob.getDelivery_Date() %></h5>
	  </div>
	  
	  <div class="col-xs-2 col-sm-1 col-md-2 text-center">
	  <h5 id="d<%=cnt%>"><%=ob.getTotal_Price() %></h5>
	  </div>
	  
	  <div class="col-xs-1 col-sm-1 col-md-1 text-center" style="margin-top:1%;">
	  <a href=""><i class="fa fa-times fa-2x"></i></a>
	  </div>
	  </div>	
	  </div>
	 </div>
	 <%
			}
		else
			if(check.equals("Women"))
			{
	 %>
	 <div class="rows">
	 
	 <div class="col-xs-9 col-sm-9 col-md-8" style="border:1px solid #ddd; margin-top:1%; background-color: #E1E1E1;">
	  
	  <div class="rows" style="margin-top:1%; padding-bottom:1%;">
	  
	  <div class="col-xs-1 col-sm-1 col-md-1 text-center" style="padding-left:0.9px; margin-top:1%;">
	  <img class="thumbnail" src="Image_Women?pid=<%=pid%>" height="100" width="102">
	  </div>
	  
	  <div class="col-xs-5 col-sm-5 col-md-5 text-center">
	  <h5><%=ob.getBrand() %></h5>
	  <h5><%=ob.getTagline() %></h5>
	  <h5><%=ob.getColor() %></h5>
	  <h5>SIZE</h5>
	  <% 
	  if(qty<=6)
	  {
	  %>
	  <h5 style="color:purple;">Only <%=qty %> stock left</h5>
	  <%
	  }
	  %>
	  </div>
	  <%
	    
		cnt = cnt + 1;
	  %>
	   <div class="col-xs-1 col-sm-2 col-md-1 text-center" style="margin-top:1%;">
	  <select id="quantity" onchange="subTotal('<%=ob.getProduct_Id()%>',<%=cnt%>,<%=ob.getPrice()%>,this.value,'<%=email%>'); quantity_Check(this.value,'<%=qty%>')">
						<option selected="selected" value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
				</select>
	  </div>
	  
	  <div class="col-xs-2 col-sm-2 col-md-2 text-center">
	  <h5><%=ob.getDelivery_Date() %></h5>
	  </div>
	  
	  <div class="col-xs-2 col-sm-1 col-md-2 text-center">
	  <h5 id="d<%=cnt%>"><%=ob.getTotal_Price() %></h5>
	  </div>
	  
	  <div class="col-xs-1 col-sm-1 col-md-1 text-center" style="margin-top:1%;">
	  
	  <form action="Delete_Cart" method="post">
		  <input type="hidden" name="Product_Id" value="<%=pid %>">
		  <input type="hidden" name="Color" value="<%=ob.getColor() %>">
		   <button type="submit"><i class="fa fa-times fa-2x"></i></button>
		  </form>
	  </div>
	  </div>	
	  </div>
	 </div>
	 <%
				}
			
			else
				{
		 %>
	   <div class="rows">
	 
	 <div class="col-xs-9 col-sm-9 col-md-8" style="border:1px solid #ddd; margin-top:1%; background-color: #E1E1E1;">
	  
	  <div class="rows" style="margin-top:1%; padding-bottom:1%;">
	  
	  <div class="col-xs-1 col-sm-1 col-md-1 text-center" style="padding-left:0.9px; margin-top:1%;">
	  <img class="thumbnail" src="Image_Women?pid=<%=pid%>" height="100" width="102">
	  </div>
	  
	  <div class="col-xs-5 col-sm-5 col-md-5 text-center">
	  <h5><%=ob.getBrand() %></h5>
	  <h5><%=ob.getTagline() %></h5>
	  <h5><%=ob.getColor() %></h5>
	  <h5>SIZE</h5>
	  <% 
	  if(qty<=6)
	  {
	  %>
	  <h5 style="color:purple;">Only <%=qty %> stock left</h5>
	  <%
	  }
	  %>
	  </div>
	  <%
	    
		cnt = cnt + 1;
	  %>
	   <div class="col-xs-1 col-sm-2 col-md-1 text-center" style="margin-top:1%;">
	  <select id="quantity" onchange="subTotal('<%=ob.getProduct_Id()%>',<%=cnt%>,<%=ob.getPrice()%>,this.value,'<%=email%>'); quantity_Check(this.value,'<%=qty%>')">
						<option selected="selected" value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
				</select>
	  </div>
	  
	  <div class="col-xs-2 col-sm-2 col-md-2 text-center">
	  <h5><%=ob.getDelivery_Date() %></h5>
	  </div>
	  
	  <div class="col-xs-2 col-sm-1 col-md-2 text-center">
	  <h5 id="d<%=cnt%>"><%=ob.getTotal_Price() %></h5>
	  </div>
	  
	  <div class="col-xs-1 col-sm-1 col-md-1 text-center" style="margin-top:1%;">
	  
	  <form action="Delete_Cart" method="post">
		  <input type="hidden" name="Product_Id" value="<%=pid %>">
		  <input type="hidden" name="Color" value="<%=ob.getColor() %>">
		   <button type="submit"><i class="fa fa-times fa-2x"></i></button>
		  </form>
	  </div>
	  </div>	
	  </div>
	 </div>
	 <%
				}
					    }
					}
	 %>
	 </div>
	
	</body>
	</html>