
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="Bean.*,java.sql.*,java.util.Calendar, java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="css1/navstyle1.css" type="text/css"
	media="screen" />
<!-- <link rel="stylesheet" href="css1/signinstyle.css" type='text/css'
	media="screen" /> -->
<link rel="stylesheet" href="css1/searchstyle.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/carticon.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/body1style.css" type='text/css'
	media="screen" />

<link rel="stylesheet" href="css1/body5style.css" type='text/css'
	media="screen" />

<link rel="stylesheet" href="css1/body6style.css" type='text/css'
	media="screen" />

<link rel="stylesheet" href="css1/loginPop1.css" type="text/css"
	media="screen" />

<link rel="stylesheet" href="css1/feedback1ModalStyle.css"
	type="text/css" media="screen" />

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />

<link href="http://fonts.googleapis.com/css?family=Cookie"
	rel="stylesheet" type="text/css" />

<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />



<title>xyzshop men formals shirts</title>
<style>
body {
	background: #eee url(images1/BodyBG1.jpg) fixed center 0px;
	padding-top: 5px;
}
</style>


<script language="JavaScript" type="text/javascript">
	function login(showhide) {
		if (showhide == "show") {
			document.getElementById('popupbox').style.visibility = "visible";
		} else if (showhide == "hide") {
			document.getElementById('popupbox').style.visibility = "hidden";
		}
	}

	function gotoRegister() {
		window.location = "Register_User.jsp";
	}
</script>

<script type="text/javascript">
	function Show_ColorImage(str1, str2) {
		/* if (str.length == 0) { 
		    document.getElementById("image").innerHTML = "";
		    return;
		} else {
		    var xmlhttp = new XMLHttpRequest();
		    xmlhttp.onreadystatechange = function() {
		        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
		            document.getElementById("image").innerHTML = xmlhttp.responseText;
		        }
		    }
		    xmlhttp.open("GET", "Show_ColorImage.jsp?Product_Id="+str1+"&Color="+str2, true);
		    xmlhttp.send();
		} */

		alert("jhfjgfjgfjf");
	}

	/* function validate_size() {
	   /*  var size = document.getElementsByName("Size");
	    if (size[0].checked == false && size[1].checked==false && size[2].checked==false && size[3].checked==false && size[4].checked==false) 
	    {
	        alert("Please Select A Size To Buy");
	        return false;
	    }
	    return true; */

	/*  alert("hello"); */
	/* }
	} */

	function gotoBuy() {

		alert("Please Login To Buy ");
	}
</script>


<script>
	function addSlashes(input) {
		var v = input.value;
		if (v.match(/^\d{2}$/) !== null) {
			input.value = v + '/';
		} else if (v.match(/^\d{2}\/\d{2}$/) !== null) {
			input.value = v + '/';
		}
	}

	function status() {
		if ("${param.Message}") {
			alert("${param.Message}");
		}
	}
</script>

</head>

<body>

	<div id="WinLay">

		<%
			String name = "";
				HttpSession sees = null;
				String email = request.getParameter("Email");
				System.out.println("Email is" + email);
				if (email != "" || email != null)
				{
			Connection con = Conct.conect();
			String sql = "Select FirstName from user_register where Email=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			if (rs.next())
			{
				name = rs.getString("FirstName");
				sees = request.getSession();
				sees.setAttribute("Name", name);
			}
				}
		%>


		<div id="popupbox" class="LoginFormCx cf">
			<form name="index.jsp" action="Login_VerifyUser" method="post">
				<ul>
					<li><label for="usermail"
						style="color: white; text-shadow: 0px 0px 3px white;">Email</label>
						<input type="email" name="usermail" id="usermail"
						placeholder="yourmail@email.com" required
						title="Enter Your EMAIL ID" style="height: 30px; width: 240px;" /></li>
					<li><label for="password"
						style="color: white; text-shadow: 0px 0px 3px white;">Password</label>
						<input type="password" name="password" placeholder="password"
						required title="Enter Your PASSWORD"
						style="height: 30px; width: 240px;" /></li>
					<li><input type="submit" value="Login"
						style="height: 40px; width: 140px;" /></li>
					<li><input type="button" value="Register"
						style="height: 40px; width: 140px; box-shadow: 0px 0px 50px #FF0000"
						onclick="gotoRegister()" /></li>
				</ul>
			</form>

			<li
				style="margin-left: 390px; margin-top: -70px; border-radius: 5px; box-shadow: 0px 0px 14px #ffffff; padding: 6px 7px 4px 7px;"><a
				href="javascript:login('hide');"
				style="color: white; text-decoration: none !important;"
				title="Close">X</a></li>
			<li
				style="margin-top: 4px; margin-left: -126px; margin-bottom: 10px;"><a
				href="#"
				style="color: white; text-decoration: none !important; text-shadow: 0px 0px 3px white; font-size: 14px;">Forgot
					Password?</a></li>

			<div class="LoginFormDec">
				<hr
					style="margin-top: 30px; margin-bottom: 10px; margin-left: -10px; width: 98%;">
				<ul>
					<li><img src="images1/LoginImgs/genuineLogo2.png"
						style="margin-left: 30px; margin-top: 20px; width: 210px; height: 160px;"></li>
					<li style="padding-top: 40px; margin-left: 110px;"><img
						src="images1/LoginImgs/deliveryTruckLogo.png"
						style="width: 210px; height: 160px;"></li>
					<li style="padding-top: 33px; margin-left: 110px;"><img
						src="images1/LoginImgs/returnLogo2.png"
						style="width: 210px; height: 140px;"></li>
			</div>
			<div class="LoginFormDec2">
				<p
					style="color: white; margin-top: 200px; margin-left: 80px; width: 120px; height: 40px; text-shadow: 0px 0px 2px white;">
					100% Genuine<br>&nbsp&nbsp&nbsp&nbsp&nbspProducts
				</p>
				<p
					style="color: white; margin-top: -70px; margin-left: 360px; width: 200px; height: 40px; text-shadow: 0px 0px 2px white;">
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspManage Orders<br>Easily
					View and Edit Orders
				</p>
				<p
					style="color: white; margin-top: -20px; margin-left: 720px; width: 180px; height: 30px; text-shadow: 0px 0px 2px white;">Easy
					Return Policies</p>
			</div>

		</div>






		<%
			DateFormat df = new SimpleDateFormat("dd/MM/yy");
				String formattedDate = df.format(new Date());
				String Product_id = request.getParameter("Pid");

				//For delivery date
				Calendar now = Calendar.getInstance();
				String delivery_date = ("Current date : " + (now.get(Calendar.DATE)) + "-" + (now.get(Calendar.MONTH) + 1) + "-" + now.get(Calendar.YEAR));

				// add days to current date using Calendar.add method
				now.add(Calendar.DATE, 5);

				delivery_date = ((now.get(Calendar.DATE)) + "-" + (now.get(Calendar.MONTH) + 1) + "-" + now.get(Calendar.YEAR));
		%>
		<div id="body1">

			<%
				String username = (String) session.getAttribute("Name");
						
						if (username == "" || username == null)
						{
			%>

			<link rel="stylesheet" href="css1/signinstyle.css" type='text/css'
				media="screen" />

			<div id="loginwrapper">
				<div id="topmessage">NO DELIVERY CHARGES ON ORDERS ABOVE Rs500
					| EXTRA 5% OFF ON ORDERS ABOVE Rs1499</div>
				<div class="retailLogin">
					<a target="_blank" href="Login_Retailer.jsp">- RETAILER LOGIN -
					</a>
				</div>
				<div class="help">
					<a target="_blank" href="help.html">HELP</a> <span>|</span>
				</div>
				<div class="signin">
					<a href="javascript:login('show');">SIGN IN</a> <span>|</span>
				</div>
				<div class="signup">
					<a href="Register_User.jsp">SIGN UP</a>
				</div>
			</div>


			<%
				}
						else
						{
			%>
			<%
				if (username != null)
							{
			%>

			<script type="text/javascript">
				onload = function() {
					status();
				}
			</script>

			<link rel="stylesheet" href="css1/signoutstyle.css" type='text/css'
				media="screen" />

			<div id="loginwrapper">
				<div id="topmessageB">NO DELIVERY CHARGES ON ORDERS ABOVE
					Rs500 | EXTRA 5% OFF ON ORDERS ABOVE Rs1499</div>
				<div class="greetUserExt">
					<div class="greetUser">
						<a href="ShowUserDetails.jsp">Welcome <%=username%> &nbsp&nbsp<i
							class="fa fa-smile-o fa-lg"></i></a>
					</div>
				</div>
				<%
					}
				%>
				<div class="help">
					<a target="_blank" href="help.html">HELP</a> <span>|</span>
				</div>
				<div class="signout">
					<a href="signout">SIGN OUT</a>
				</div>
			</div>
			<%
				}
			%>

		</div>


		<div id="navncontent">
			<div id="navbar">

				<div id="logo"></div>

				<ul id="navmenu">
					<li><a href="index.jsp" class="drop">ELECTRONICS</a> <!--ELECTRONICS menu and submenus-->
						<div class="dropdown_electronics">
							<!--Beginning of 2 columns-container for electronics-->
							<div class="col_1">
								<h3>LAPTOPS</h3>
								<ul>
									<li><a href="#">Asus</a></li>
									<li><a href="#">Dell</a></li>
									<li><a href="#">Fujitsu</a></li>
									<li><a href="#">Hewlett Packard</a></li>
									<li><a href="#">Lenovo</a></li>
								</ul>
							</div>

							<div class="col_1">
								<h3>MOBILES</h3>
								<ul>
									<li><a href="#">Asus</a></li>
									<li><a href="#">Blackberry</a></li>
									<li><a href="#">Gionee</a></li>
									<li><a href="#">Huawei</a></li>
									<li><a href="#">Motorola</a></li>
									<li><a href="#">Nokia</a></li>
									<li><a href="#">Samsung</a></li>
									<li><a href="#">Sony</a></li>
								</ul>
							</div>
						</div></li>
					<li><a href="index.jsp" class="drop">WOMEN</a>
						<div class="dropdown_women">
							<!--Beginning of 3 columns-container for women-->
							<div class="col_1">
								<h3>FORMALS</h3>
								<ul>
									<li><a
										href="womenshirts.jsp?Type=Shirts &Category=Formals">Shirts</a></li>
									<li><a
										href="womenshirts.jsp?Type=Skirts &Category=Formals">Skirts</a></li>
									<li><a
										href="womenshirts.jsp?Type=Scarves &Category=Formals">Scarves
											& Stoles</a></li>
									<li><a
										href="womenshirts.jsp?Type=Trousers &Category=Formals">Trousers</a></li>
									<li><a
										href="womenshirts.jsp?Type=Waistcoats &Category=Formals">Waistcoats</a></li>
								</ul>
							</div>

							<div class="col_1">
								<h3>CASUALS</h3>
								<ul>
									<li><a href="womenshirts.jsp?Type=Tops &Category=Casual">Tops</a></li>
									<li><a href="womenshirts.jsp?Type=Jeans &Category=Casual">Jeans</a></li>
									<li><a
										href="womenshirts.jsp?Type=T-Shirts &Category=Casual">T-Shirts</a></li>
									<li><a href="womenshirts.jsp?Type=Skirts &Category=Casual">Skirts</a></li>
								</ul>
							</div>

							<div class="col_1">
								<h3>ETHNIC WEAR</h3>
								<ul>
									<li><a href="womenshirts.jsp?Type=Kurtas &Category=Ethnic">Kurtas
											& Kurtis</a></li>
									<li><a href="womenshirts.jsp?Type=Sarees &Category=Ethnic">Sarees</a></li>
									<li><a href="womenshirts.jsp?Type=Salwar &Category=Ethnic">Salwar
											Kurta & Dupattas</a></li>
								</ul>
							</div>
						</div></li>

					<li><a href="index.jsp" class="drop">MEN</a>
						<div class="dropdown_women">
							<!--same number of columns as the container for womens' menu-->
							<div class="col_1">
								<h3>FORMALS</h3>
								<ul>
									<li><a href="menshirts.jsp?Type=Shirts &Category=Formals">Shirts</a></li>
									<li><a href="menshirts.jsp?Type=Blazers &Category=Formals">Blazers</a></li>
									<li><a
										href="menshirts.jsp?Type=VestCoats &Category=Formals">Vest
											Coats</a></li>
									<li><a
										href="menshirts.jsp?Type=Trousers &Category=Formals">Trousers</a></li>
								</ul>
							</div>

							<div class="col_1">
								<h3>CASUALS</h3>
								<ul>
									<li><a href="menshirts.jsp?Type=Shirt &Category=Casual">Shirts</a></li>
									<li><a href="menshirts.jsp?Type=Jeans &Category=Casual">Jeans</a></li>
									<li><a href="menshirts.jsp?Type=TShirts &Category=Casual">T-Shirts</a></li>
									<li><a
										href="menshirts.jsp?Type=Tracksuits &Category=Casual">Tracksuits</a></li>
								</ul>
							</div>

							<div class="col_1">
								<h3>ETHNIC WEAR</h3>
								<ul>
									<li><a href="menshirts.jsp?Type=Kurtas &Category=Ethnic">Kurtas</a></li>
									<li><a href="menshirts.jsp?Type=Dhotis &Category=Ethnic">Dhotis</a></li>
									<li><a href="menshirts.jsp?Type=Sherwani &Category=Ethnic">Sherwani</a></li>
								</ul>
							</div>
						</div></li>

					<li><a href="index.jsp" class="drop">KIDS</a>
						<div class="dropdown_kids">
							<!--Beginning of 1 column-container for kids-->
							<div class="col_1">
								<h3>KIDS & BABY CLOTHING</h3>
								<ul>
									<li><a href="kidshirts.jsp?Type=Boys &Category=KidBaby">Boys Clothing</a></li>
									<li><a href="kidshirts.jsp?Type=Girls &Category=KidBaby">Girls Clothing</a></li>
								</ul>
							</div>
						</div></li>
					<li><a href="index.jsp">GROCERIES</a>
						<div class="dropdown_women">
							<!--same number of columns as the container for womens' menu-->
							<div class="col_1">
								<h3>FOOD</h3>
								<ul>
									<li><a href="grocery.jsp?Type=Fruits &Category=Food">Fruits</a></li>
									<li><a href="grocery.jsp?Type=Vegies &Category=Food">Vegetables</a></li>
									<li><a href="grocery.jsp?Type=Pulses &Category=Food">Pulses</a></li>
									<li><a href="grocery.jsp?Type=Meat &Category=Food">Meat</a></li>
								</ul>
							</div>

							<div class="col_1">
								<h3>BEVERAGES</h3>
								<ul>
									<li><a href="grocery.jsp?Type=Water &Category=Beverage">Water</a></li>
									<li><a href="grocery.jsp?Type=Juice &Category=Beverage">Juices</a></li>
									<li><a
										href="grocery.jsp?Type=ColDrinks &Category=Beverage">Cold/Soft
											Drinks</a></li>
									<li><a href="grocery.jsp?Type=Alco &Category=Beverage">Liquor</a></li>
								</ul>
							</div>

							<div class="col_1">
								<h3>UTILITIES</h3>
								<ul>
									<li><a href="grocery.jsp?Type=Bath &Category=Utils">Bath
											Essentials</a></li>
									<li><a href="grocery.jsp?Type=Dine &Category=Utils">Kitchen
											& Dining</a></li>
									<li><a href="grocery.jsp?Type=House &Category=Utils">Housekeeping</a></li>
									<li><a href="grocery.jsp?Type=Laundry &Category=Utils">Laundry</a></li>
								</ul>
							</div>
						</div></li>
				</ul>

			</div>
		</div>

		<div id="carticon">
			<li><a href="#"><img src="images1/NavBar/Cart1.png"></a></li>
		</div>
		<div id="SearchWrap">
			<section class="webdesigntuts-workshop">
			<form action="" method="">
				<input type="search" placeholder="Search...">
				<button>Search</button>
			</form>
			</section>
		</div>

		<div id="ShirtThumbTable" class="ShirtThumb1">
			<%
				String category = request.getParameter("Category");

				Double price = Double.parseDouble(request.getParameter("Price"));
				String filename = request.getParameter("Filename");
				String Color = request.getParameter("Colorname");
			%>
			<table>
				<tr
					style="position: inherit; z-index: 99; border-bottom: 2px solid white;">
					<td style="padding-left: 11.3%; position: static; z-index: 9999;"
						id="image"><img
						src="Image_SmallKids?pid=<%=Product_id%> &FileName=<%=filename%>"
						height="400" width="310"></img></td>
				</tr>
				<tr id="subThumb">
					<td
						style="padding-top: 1.5%; padding-left: 3%; padding-right: 3%; position: inherit; background: white; border-top: 2px solid white;">
						<%
							Connection con3 = Conct.conect();
							String sql3 = "Select DISTINCT Filename from retailer_imageinsrt_kids where Product_Id=? AND Filename!=? AND ColorName=?";
							PreparedStatement ps3 = con3.prepareStatement(sql3);
							ps3.setString(1, Product_id);
							ps3.setString(2, filename);
							ps3.setString(3, Color);
							ResultSet rs3 = ps3.executeQuery();

							while (rs3.next()) {
								String file = rs3.getString("Filename");
						%> <a
						href="KidsRed.jsp?Pid=<%=Product_id%> &Category=<%=category%> &Filename=<%=file%> &Price=<%=price%> &Colorname=<%=Color%>"><img
							src="Image_SmallKids?pid=<%=Product_id%> &FileName=<%=file%>"
							height="70" width="60" border="2px solid"></img></a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						<%
 	}
 %>
					</td>
				</tr>
			</table>
		</div>
		<div id="ColSizeTable">
			<div class="Details1">
				<table
					style="margin-left: 0px; margin-top: 3px; position: relative;"
					border="1">

					<%
						Connection con9 = Conct.conect();
						String sql9 = "Select  BrandName,Tagline,Price from retailer_productinsertkids where Product_Id=? ";
						PreparedStatement ps9 = con9.prepareStatement(sql9);
						ps9.setString(1, Product_id);

						ResultSet rs9 = ps9.executeQuery();

						while (rs9.next()) {
							String BrandName = rs9.getString("BrandName");
							String Tagline = rs9.getString("Tagline");
							Double Price = rs9.getDouble("Price");
					%>
					<tr>
						<th style="font-size: 25px;"><%=BrandName%></th>
					</tr>
					<tr>
						<td><%=Tagline%></td>
					</tr>
					<tr>
						<td><i class="fa fa-inr"></i>&nbsp<%=Price%></td>
					</tr>
					<%
						}
					%>
				</table>
			</div>

			<div class="Colors">
				<table
					style="margin-left: 0px; margin-top: 10px; position: relative;">
					<tr>
						<th style="height: 10px;">Colors Available:</th>
					</tr>
					<tr>
						<td><a href="#" style="color: olive;"><%=Color%></a>&nbsp <%
							Connection con4 = Conct.conect();
							String sql4 = "Select DISTINCT ad1.ColorName,ad2.Product_Id  from retailer_colorinsertkids ad1 inner join retailer_imageinsrt_kids ad2 on ad1.Product_Id=ad2.Product_Id and ad2.Product_Id=? and ad1.ColorName!=? ";
							//String sql4 = "Select  ColorName from admin_colorinsrt_men where Product_Id=? and ColorName!=?";
							PreparedStatement ps4 = con4.prepareStatement(sql4);
							ps4.setString(1, Product_id);
							ps4.setString(2, Color);
							ResultSet rs4 = ps4.executeQuery();

							while (rs4.next()) {
								String color = rs4.getString("ColorName");
								String filename1 = rs4.getString("Product_Id");
						%><a
							href="KidShirtsColor.jsp?Pid=<%=Product_id%> &Colorname=<%=color%>  &Price=<%=price%> &Category=<%=category%>"><%=color%></a>
							<%
								}
							%></td>
					</tr>

				</table>
			</div>

			<div class="Size">
				<table
					style="margin-left: 0px; margin-top: 10px; position: relative;">
					<tr>
						<th style="height: 10px;">Size Available:</th>
					</tr>
					<tr>
						<td>
							<%
								String size = "";
								Connection con5 = Conct.conect();
								String sql5 = "Select  Size from retailer_sizeinsrt_kids where Product_Id=? And ColorName=?";
								PreparedStatement ps5 = con5.prepareStatement(sql5);
								ps5.setString(1, Product_id);
								ps5.setString(2, Color);
								ResultSet rs5 = ps5.executeQuery();

								while (rs5.next()) {
									size = rs5.getString("Size");
							%> <input type="radio" name="Size" id="Size" value="<%=size%>"><%=size%>


							<%
								}
							%>
						</td>
					</tr>

				</table>
				<div class="AddBuy1">

					<!--For Cart  -->
					<%
						ArrayList<Cart_Shopping> show_cart = (ArrayList<Cart_Shopping>) session
								.getAttribute("cc");
						//System.out.println("in menshirts show cart" + show_cart);
						session.setAttribute("cc", show_cart);
						System.out.println("Username is before form" + username);

						if (username != null) {
					%>
					<form action="Cart" method="post" onsubmit="validate_size();">
						<input type="hidden" name="product_id" value="<%=Product_id%>">
						<input type="hidden" name="color" value="<%=Color%>">
						<input type="hidden" name="filename" value="<%=filename%>">
						 <input
							type="submit" value="ADD_TO_CART" name="AddToCart"
							style="margin-left: 60px; margin-top: 40px;"></input> <input
							type="submit" value="BUY_NOW" name="BuyNow"
							style="margin-left: 15px; margin-top: 40px;"></input>
					</form>
					<%
						}

						else {
					%>
					<form action="Cart" method="post">
						<input type="hidden" name="product_id" value="<%=Product_id%>">
						<input type="hidden" name="color" value="<%=Color%>"> <input
							type="submit" value="ADD_TO_CART" name="AddToCart"
							style="margin-left: 60px; margin-top: 40px;"></input> <input
							type="button" value="BUY_NOW" name="BuyNow" onclick="gotoBuy()"
							style="margin-left: 15px; margin-top: 40px;"></input>

					</form>
					<%
						}
					%>
				</div>
			</div>
		</div>

		<div class="PayDet1">
			<p style="margin: 0; padding: 0; color: #ccccff;">
				<i class="fa fa-money fa-lg" style="color: #00FF00;"></i> The
				maximum order value for 'Cash On Delivery' is <i class="fa fa-inr"></i>&nbsp50,000,
				Cash-Only payment at the time of delivery.
			</p>
			<br>
			<hr style="color: #545454; width: 400px; margin-top: -10px;">
			<p
				style="margin: 0; padding: 0; color: #ccccff; margin-bottom: -10px;">
				<i class="fa fa-truck fa-lg" style="color: yellow;"></i> Your
				product will delivered on or before
				<%=delivery_date%>.
			</p>
			<br>
		</div>

		<div id="ProDetTable" class="ProDet">
			<p style="text-decoration: underline; font-size: xx-large;">Product
				Info:</p>
			<table border="1" rules="rows"
				style="table-layout: fixed; margin-left: 0%; margin-top: 0%; position: relative; border-color: orange;">

				<%
					String BrandName = "";
					String Tagline = "";
					Connection con6 = Conct.conect();
					String sql6 = "Select Category, Type, BrandName, Fittings, Price, About, Tagline from retailer_productinsertkids where Product_Id=? ";
					PreparedStatement ps6 = con4.prepareStatement(sql6);
					ps6.setString(1, Product_id);

					ResultSet rs6 = ps6.executeQuery();

					while (rs6.next()) {
						String Category = rs6.getString("Category");
						String Type = rs6.getString("Type");
						BrandName = rs6.getString("BrandName");
						String Fittings = rs6.getString("Fittings");
						Double Price = rs6.getDouble("Price");
						String About = rs6.getString("About");
						Tagline = rs6.getString("Tagline");
				%>

				<caption style="font-size: 20px;">
					<b><i><%=Tagline%></i></b>
				</caption>
				<tr>
					<td
						style="padding-left: 30%; font-weight: bold; padding-right: 0%;"
						width="210px">Brand</td>
					<td width="10">:</td>
					<td style="padding-left: 5%;"><%=BrandName%></td>
				</tr>
				<tr>
					<td style="padding-left: 30%; font-weight: bold;">Occasion</td>
					<td width="10">:</td>
					<td style="padding-left: 5%;"><%=Category%></td>
				</tr>
				<tr>
					<td style="padding-left: 30%; font-weight: bold;">Type</td>
					<td width="10">:</td>
					<td style="padding-left: 5%;"><%=Type%></td>
				</tr>
				<tr>
					<td style="padding-left: 30%; font-weight: bold;">Price</td>
					<td width="10">:</td>
					<td style="padding-left: 5%;"><%=Price%></td>
				</tr>
				<tr>
					<td style="padding-left: 30%; font-weight: bold;">Brand Fit</td>
					<td width="10">:</td>
					<td style="padding-left: 5%;"><%=Fittings%></td>
				</tr>
				<tr style="">
					<td style="padding-left: 30%; font-weight: normal;">About</td>
					<td width="10">:</td>
					<td
						style="padding-left: 5%; padding-top: 10px; padding-bottom: 15px; word-wrap: break-word;"><%=About%></td>
				</tr>
				<%
					}
				%>

			</table>

			<div
				style="margin-top: 30px; text-align: center; font-family: monospace; font-weight: lighter; font-size: 20px; color: white; text-shadow: 2px 2px black;">
				WRITE A REVIEW FOR&nbsp<%=BrandName%>
			</div>


			<div style="margin-top: 10px;">
				<a href="#feedModal" style="text-align: center; margin-left: 355px;"><input
					type="submit" value="FEEDBACK / REVIEW" name="Feedback"
					style="margin-left: auto; margin-right: auto; margin-top: 5px;"></input></a>

				<div id="feedModal" class="feedModalDialog">
					<div>
						<a href="#close" title="Close" class="close"
							style="text-shadow: 0px 0px 6px #ffffff;">X</a> <strong><u><font
								style="font-family: monospace; font-size: large;">You are
									reviewing for <%=Tagline%></font></u></strong> <br /> <br />
						<form name="feedback" action="Feedback" method="post">

							<input type="text" class="tb1" name="Name" id="name"
								placeholder="Enter Your Name Here" required
								style="height: 30px; width: 250px;"><br /> <input
								type="text" class="tb2" name="Date" id="date"
								value="<%=formattedDate%>" readonly="readonly"
								style="height: 30px; width: 100px;">
							<!-- space for date fetching script -->
							<input type="email" class="email1" name="usermailid"
								id="usermailid" placeholder="Enter Your Email-ID Here" required
								style="height: 30px; width: 500px;"><br /> Product
							Review/Feedback:<br />
							<textarea class="ta1" name="feedback" id="feedback"
								placeholder="Provide Your Product Review/Feedback Here..."
								align="top" wrap="hard" maxlength="1000" required
								style="height: 150px; width: 500px;"></textarea>
							<br /> <input type="hidden" name="product_id"
								value="<%=Product_id%>"> <input type="hidden"
								name="colorname" value="<%=Color%>"> <input
								type="hidden" name="price" value="<%=price%>"> <input
								type="hidden" name="category" value="<%=category%>"> <input
								type="hidden" name="filename" value="<%=filename%>"> <input
								type="submit" value="Submit" style="height: 40px; width: 140px;">
						</form>

					</div>
				</div>
			</div>


			<div
				style="width: 880px; margin-left: -2px; margin-top: 20px; padding: 3px; font-family: cursive; font-weight: lighter; font-size: 14px; color: white; text-shadow: 2px 2px black; border: 1px solid white;">
				<h3 style="margin-bottom: 0px; text-decoration: underline;">
					<i class="fa fa-cog fa-spin fa-lg"></i> NOTE:
				</h3>
				<br> i) All products sold by Dukaan.com are brand new and
				unused. <br>ii) Any product if received in tampered package,
				then contact our customer care executive within 24hrs of delivery. <br>iii)
				If you have received a damaged or defective product or it is not as
				described, you can get an exchange within 30 days of delivery
				&nbsp&nbsp&nbsp&nbsp at no extra cost. <br>iv) Exchange of
				product will be void if found tampered/damaged by the customer. <br>v)
				Refer <a style="color: white;" target="_blank" href="help.html"
					title="Help">HELP</a> section for more details on Exchange/Return
				policies.
			</div>
		</div>
	</div>


	<hr>
	<footer class="footer1">
	<div class="footer-left">
		<h3>
			Company<span>logo</span>
		</h3>

		<p class="footer-links">
			<a href="#">Home</a> · <a href="#">Blog</a> · <a href="#">Pricing</a>
			Â· <a href="#">About</a> · <a href="#">Faq</a> · <a href="#">Contact</a>
		</p>

		<p class="footer-company-name">XYZ-SHOP &copy; 2015</p>
	</div>
	<div class="footer-center">

		<div>
			<i class="fa fa-map-marker"></i>
			<p>
				<span>#806, Merlin Matrix Building, DN Block, Sector V<br>Salt
					Lake City, Kolkata - 700091 (WB) 
			</p>
		</div>

		<div>
			<br> <i class="fa fa-phone"></i>
			<p>+913312345678</p>
		</div>

		<div>
			<br> <i class="fa fa-envelope"></i>
			<p>
				<a href="mailto:support@xyzshop.com">support@xyzshop.com</a>
			</p>
		</div>

	</div>

	<div class="footer-right">
		<p class="footer-company-aboutH">About the company</p>
		<p class="footer-company-about">XYZ-Shop is a young company that
			has a goal to deliver branded products at the best discounted prices
			at the best way possible to its valuable customers (or) users.</p>

		<div class="footer-icons">

			<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
				class="fa fa-twitter"></i></a> <a href="#"><i class="fa fa-linkedin"></i></a>
			<a href="#"><i class="fa fa-github"></i></a>

		</div>

	</div>
	</footer>

	</div>
</body>
</html>

