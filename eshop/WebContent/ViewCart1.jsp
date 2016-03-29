<%@page import="Bean.Cart_Shopping"%>
<%@page import="java.util.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />

<link href="http://fonts.googleapis.com/css?family=Cookie"
	rel="stylesheet" type="text/css" />

<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />

<link rel="stylesheet" href="css1/Cart1Style.css" type="text/css"
	media="screen" />

<title>Online Shopping India: Buy Mobiles Electronics Shoes
	Books Clothings Accessories and more @ Dukaan.com</title>

<style>
body {
	background: #eee url(images1/BodyBG1.jpg) fixed center 0px;
	padding-top: 5px;
	color: white;
}
</style>
<script type="text/javascript">
 /* function total(Product_Id,cnt,price,q){
	subtotal(Product_Id,cnt,price,q);
	show();
}  */
function subtotal(Product_Id,cnt,price,q){

	 var xhttp;
	
	  var url="Cart_Subtotal_Change.jsp?id="+Product_Id+"&price="+price+"&quantity="+q+"&cnt="+cnt;
	  if (window.XMLHttpRequest) {
	    // code for modern browsers
	    xhttp = new XMLHttpRequest();
	    } else {
	    // code for IE6, IE5
	    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
	  }
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("d"+cnt).innerHTML = xhttp.responseText;
	     show();
	    }
	  };
	  xhttp.open("GET", url, true);
	  xhttp.send(); 
	 
	
	}
function show()
{
	//var q=document.f.quantity.value;
	//var q=5;
	//var url="total.jsp?val="+v+"&id="+i+"&pr="+price+"&n="+n;
	var url="Cart_Total.jsp";
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


	/* function status(){
		if ("${param.Message}") {
			alert("${param.Message}");
	} */
</script>

</head>
<body>



	<div id="CartDetails">
		<h4 style="text-align: center; text-shadow: 0px 0px 2px white;">YOUR
			CART</h4>
		<table class="CartTab1" border="1" rules="rows">

			<tr style="height: 25px; text-align: center;">
				<td></td>
				<td style="width: 300px;">Product</td>
				<td>Qty</td>
				<td>Delivery</td>
				<td>Sub-Total</td>
				<td>Remove</td>
			</tr>

			<%
			Calendar now = Calendar.getInstance();
			String current_date =((now.get(Calendar.DATE)) + "-" + (now.get(Calendar.MONTH) + 1) + "-" + now.get(Calendar.YEAR));

			// add days to current date using Calendar.add method
			now.add(Calendar.DATE, 5);

			String delivery_date = ((now.get(Calendar.DATE)) + "-" + (now.get(Calendar.MONTH) + 1) + "-" + now.get(Calendar.YEAR));
			

                int cnt=0;
                ArrayList<Cart_Shopping> cart_show=(ArrayList<Cart_Shopping>)request.getAttribute("cc");
                session.setAttribute("cc", cart_show);
               Iterator<Cart_Shopping> it=cart_show.iterator();
				while(it.hasNext())
					{
				Cart_Shopping ob=it.next();
					String Product_Id=ob.getProduct_Id();

				%>
			<tr>
			<td
					style="text-align: center; padding-bottom: 5px; padding-top: 5px;"><img
					src="Image?pid=<%=Product_Id%>" height="70" width="55"></td>
				<td><%=ob.getBrand()%><br><%=ob.getTagline()%><br>Color</td>
				<% cnt=cnt+1;%>
				<td style="text-align: center;"><select id="quantity"
					onchange="subtotal('<%=ob.getProduct_Id()%>',<%=cnt%>,<%=ob.getPrice()%>,this.value);">
						<option selected="selected" value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
				</select></td>

				<td style="text-align: center;">by<br /><%=delivery_date%></td>
				<td id="d<%=cnt%>" style="text-align: center;"><i
					class="fa fa-inr"></i><%=ob.getTotal_Price() %></td>
				<td style="text-align: center;"><a href="Delete"
					title="Remove Item"><i class="fa fa-times fa-lg"></i></a></td>
			</tr>

			<%
				}
			%>
		</table>
		<hr style="margin-top: 10px; border: 1px solid white;">

		<table class="CartTab2" rules="rows">
			<tr>
				<td><a href="index.jsp" style="color: black;"><i
						class="fa fa-mail-reply fa-lg">&nbsp&nbsp</i>Continue Shopping</a></td>
				<td>&nbsp&nbsp&nbsp&nbsp</td>
			</tr>
		</table>
	</div>
	<div id="CartTotalPay" style="margin-top: 130px;">
		<table class="TotPayTab1">
			<tr>
				<td id="total"
					style="font-size: 26px; font-weight: bold; text-shadow: 0px 0px 1px gray;">TOTAL
					&nbsp&nbsp<i class="fa fa-inr"></i>&nbsp <%double total_price=0.0;
					Cart_Shopping b=null;
					for(int i=0;i<cart_show.size();i++) {  b=(Cart_Shopping)cart_show.get(i);

					total_price=total_price+b.getTotal_Price();



						}%> <%=total_price%></td>
			</tr>
		</table>

		<table class="TotPayTab2">
			<tr>
				<td><input type="submit" value="PLACE ORDER" name="PlaceOrder"></td>
			</tr>
		</table>

		<hr>

		<p
			style="width: 150px; font-weight: bold; text-align: left; margin-left: 5px; margin-top: 25px;">ORDER
			SUMMARY</p>
		<table class="TotPayTab3">
			<tr>
				<td style="width: 150px; height: 40px;">Price</td>
				<td style="width: 20px">:</td>
				<td><i class="fa fa-inr"></i>&nbsp <%=total_price%></td>
			</tr>
			<tr>
				<td style="height: 40px;">Handling Charges</td>
				<td>:</td>
				<td>FREE</td>
			</tr>
		</table>

		<hr>

		<table class="TotPayTab4">
			<tr>
				<td style="width: 178px; height: 40px; font-weight: bold;">TOTAL</td>
				<td><i class="fa fa-inr"></i>&nbsp<%=total_price%></td>
			</tr>
		</table>
		<a href="index.jsp"
			style="color: white; float: right; text-decoration: none; margin-top: 113px; margin-right: 10px;"><i
			class="fa fa-mail-reply fa-lg">&nbsp&nbsp</i>Continue Shopping</a>


	</div>