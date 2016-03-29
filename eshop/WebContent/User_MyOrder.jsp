<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="css1/navstyle1.css" type="text/css"
	media="screen" />
<!-- <link rel="stylesheet" href="css1/signinstyle.css" type='text/css'
	media="screen" /> -->
<link rel="stylesheet" href="css1/searchstyle.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/carticon.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/orderStyle.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/body5style.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/menshirtban.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/body6style.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/body7style.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/loginPop1.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="css1/feedback1ModalStyle.css"
	type="text/css" media="screen" />

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />

<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />

<link href="http://fonts.googleapis.com/css?family=Cookie"
	rel="stylesheet" type="text/css" />

<script src="http://code.jquery.com/jquery-latest.min.js"
	type="text/javascript"></script>
<script src="js1/6aLeftMenu.js"></script>


<title>xyzshop men formals shirts</title>
<style>
body {
	background: #eee url(images1/BodyBG1.jpg) fixed center 0px;
	padding-top: 5px;
}
</style>
<script>
	function show_branduser(str1, str2, str3) {
		if (str1.length == 0 || str2.length == 0 || str3.length == 0) {
			document.getElementById("body6b").innerHTML = "";
			return;
		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("body6b").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "Show_BrandForUser.jsp?BrandName=" + str1
					+ "&Type=" + str2 + "&Category=" + str3, true);
			xmlhttp.send();
		}
	}
	function showPrice2(str1, str2, str3) {
		if (str1.length == 0 || str2.length == 0 || str3.length == 0) {
			document.getElementById("body6b").innerHTML = "";
			return;
		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("body6b").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "Show_Price2ForUser.jsp?Price=" + str1
					+ "&Type=" + str2 + "&Category=" + str3, true);
			xmlhttp.send();
		}

	}

	function showPrice3(str1, str2, str3) {
		if (str1.length == 0 || str2.length == 0 || str3.length == 0) {
			document.getElementById("body6b").innerHTML = "";
			return;
		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("body6b").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "Show_Price3ForUser.jsp?Price=" + str1
					+ "&Type=" + str2 + "&Category=" + str3, true);
			xmlhttp.send();
		}

	}

	function showPrice4(str1, str2, str3) {
		if (str1.length == 0 || str2.length == 0 || str3.length == 0) {
			document.getElementById("body6b").innerHTML = "";
			return;
		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("body6b").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "Show_Price4ForUser.jsp?Price=" + str1
					+ "&Type=" + str2 + "&Category=" + str3, true);
			xmlhttp.send();
		}

	}
	function showPrice5(str1, str2, str3) {
		if (str1.length == 0 || str2.length == 0 || str3.length == 0) {
			document.getElementById("body6b").innerHTML = "";
			return;
		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("body6b").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "Show_Price5ForUser.jsp?Price=" + str1
					+ "&Type=" + str2 + "&Category=" + str3, true);
			xmlhttp.send();
		}

	}
</script>

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
	
	function status() {
		if ("${param.Message}") {
			alert("${param.Message}");
		}
	}
</script>

</head>

<body onload="status()">

	<div id="WinLay">

		<%
		
		DateFormat df = new SimpleDateFormat("dd/MM/yy");
		String formattedDate = df.format(new Date());
			String name = "";
				HttpSession sees = request.getSession();
				String email = (String)sees.getAttribute("email");
				
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
			ArrayList<Cart_Shopping> cart_show = (ArrayList<Cart_Shopping>) session.getAttribute("cc");
				session.setAttribute("cc", cart_show);
				String Type = request.getParameter("Type");
				String Category = request.getParameter("Category");
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
						<a href="User_MyOrder.jsp">Welcome <%=username%>
							&nbsp&nbsp<i class="fa fa-smile-o fa-lg"></i></a>
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
									<li><a href="womenshirts.jsp?Type=Shirts &Category=Formals">Shirts</a></li>
									<li><a href="womenshirts.jsp?Type=Skirts &Category=Formals">Skirts</a></li>
									<li><a href="womenshirts.jsp?Type=Scarves &Category=Formals">Scarves & Stoles</a></li>
									<li><a href="womenshirts.jsp?Type=Trousers &Category=Formals">Trousers</a></li>
									<li><a href="womenshirts.jsp?Type=Waistcoats &Category=Formals">Waistcoats</a></li>
								</ul>
							</div>

							<div class="col_1">
								<h3>CASUALS</h3>
								<ul>
									<li><a href="womenshirts.jsp?Type=Tops &Category=Casual">Tops</a></li>
									<li><a href="womenshirts.jsp?Type=Jeans &Category=Casual">Jeans</a></li>
									<li><a href="womenshirts.jsp?Type=T-Shirts &Category=Casual">T-Shirts</a></li>
									<li><a href="womenshirts.jsp?Type=Skirts &Category=Casual">Skirts</a></li>
								</ul>
							</div>

							<div class="col_1">
								<h3>ETHNIC WEAR</h3>
								<ul>
									<li><a href="womenshirts.jsp?Type=Kurtas &Category=Ethnic">Kurtas & Kurtis</a></li>
									<li><a href="womenshirts.jsp?Type=Sarees &Category=Ethnic">Sarees</a></li>
									<li><a href="womenshirts.jsp?Type=Salwar &Category=Ethnic">Salwar Kurta & Dupattas</a></li>
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
									<li><a href="#">Boys Clothing</a></li>
									<li><a href="#">Girls Clothing</a></li>
								</ul>
							</div>
						</div></li>
					<li><a href="index.jsp">GROCERIES</a></li>
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

		<div id="orderBody6">
				<h4 style="text-align: center; text-shadow: 0px 0px 2px white;">YOUR
					ORDERS</h4>
               <table class="orderTab1" border="1" rules="rows">
                  
					<tr style="height: 25px; text-align: center;">
						<td></td>
						<td style="width: 140px;">Order Id</td>
						<td>Purchase Date</td>
						<td style="width: 250px; text-align: center; padding-left: 10px">Product</td>
						<td>Qty</td>
						<td>Status</td>
						<td>Sub-Total</td>
					</tr>
					
                       <%
                      String emai=(String) session.getAttribute("Email");
                       String pid="";
                       String Tagline="";
                       String order_no="";
                       Connection con=Conct.conect();
                 String sql="Select a1.Order_No,a1.BrandName,a1.Quantity,a1.Product_Id,a1.Price,a2.Order_Date,a2.Status, a3.Tagline, a3.ColorName,a3.Delivery_Date from order_details a1 inner join order_table a2 on a1.Order_No=a2.Order_No and a2.Email=?   join registered_cart a3 on a1.Product_Id=a3.Product_Id  order by a2.Order_Date DESC limit 20 ";
                 PreparedStatement ps=con.prepareStatement(sql);
                 ps.setString(1,emai);
                 ResultSet rs=ps.executeQuery();
                 while(rs.next())
                 {	
                	 pid=rs.getString("Product_Id");
                	 String status=rs.getString("Status");
                	 Tagline=rs.getString("Tagline");
                	 order_no=rs.getString("Order_No");
                 %> 
					<tr style="text-align: center;">
						<td><img src="Image?pid=<%=pid %>" height="90" width="80" style="border: 1px solid white; box-shadow: 0px 0px 4px white;" /></td>
						<td><%=rs.getString("Order_No") %></td>
						<td><%=rs.getString("Order_Date") %></td>
						<td style="text-align: left; padding-left: 15px"><h3><%=rs.getString("BrandName") %></h3><br><p style="margin-top: -38px;"><%=rs.getString("Tagline") %></p><br><p style="margin-top: -30px;"><%=rs.getString("ColorName") %></p></td>
						<td><%=rs.getString("Quantity") %></td>
						<% if(status.equals("Delivered"))
						{
							%>
						<td><%=rs.getString("Status") %> on <%=rs.getString("Delivery_Date") %><a href="#feedModal"> <input type="submit" name="Refund" value="Return Product"/></a> </td>
						
						<%
						String fname="";
						String lname="";
						String eml="";
						Connection con9=Conct.conect();
						String sql9="Select FirstName, LastName, Email from user_register where Email=?";
						PreparedStatement ps9=con.prepareStatement(sql9);
						ps9.setString(1, email);
						ResultSet rs9=ps9.executeQuery();
						if(rs9.next())
						{
						   fname=rs9.getString("FirstName");
						   lname=rs9.getString("LastName");
						   eml=rs9.getString("Email");
						
						}
						String nam=fname+" "+lname;
						%>

				<div id="feedModal" class="feedModalDialog" style="margin-top: -40px;">
					<div>
						<a href="#close" title="Close" class="close"
							style="text-shadow: 0px 0px 6px #ffffff;">X</a> <strong><u><font
								style="font-family: monospace; font-size: large; color: black;">You are returning <%=Tagline %></font></u></strong> <br /> <br />
						<form name="refund"  method="post" action="Return_Product">

							<input type="text" class="tb1" name="Name" id="name" value="<%=nam %>"
								placeholder="Enter Your Name Here" required
								style="height: 30px; width: 250px;"/><br /> <input
								type="text" class="tb2" name="Date" id="date"
								value="<%=formattedDate%>" readonly="readonly"
								style="height: 30px; width: 100px;"/>
							<!-- space for date fetching script -->
							<input type="email" class="email1" name="usermailid"
								id="usermailid" value="<%=eml %>" placeholder="Enter Your Email-ID Here" required
								style="height: 30px; width: 500px;"/><br /> Why would you like to return the product?<br />
							<textarea class="ta1" name="feedback" id="feedback"
								placeholder="Provide Your Reason To Return The Product Here..."
								align="top" wrap="hard" maxlength="1000" required
								style="height: 150px; width: 500px;"></textarea>
							<br />
								<p>BANK DETAILS</p>
								<input type="text" class="tb1" name="BankName" id="b_name"
								placeholder="Enter Your Bank's Name Here" required
								style="height: 30px; width: 250px;"/><br />
								<input type="text" class="tb1" name="Ifsc" id="ifsc"
								placeholder="Enter Your Bank's IFSC Code Here" required
								style="height: 30px; width: 250px;"/><br />
								<input type="number" class="tb1" name="Bank_AcNo" id="b_acno"
								placeholder="Enter Your Account Number Here" required
								style="height: 30px; width: 250px;"/><br />
								<input type="hidden" name="pid" value="<%= pid%>"></input>
								<input type="hidden" name="orderno" value="<%=order_no %>"></input>
								<input	type="submit" value="Submit" style="height: 40px; width: 140px;"/>
						</form>

					</div>
				</div>
						
						<%}
						else
						{
						%>
						<td><%=rs.getString("Status") %></td>
						<%} %>
						<td><i class="fa fa-inr"></i>&nbsp<%=rs.getString("Price") %></td>
					</tr>
					<%
                 }
					%>
				</table>

				<hr style="margin-top: 10px; border: 1px solid white;">
			</div>
		</div>

		<div id="body7"></div>

		<!-- <hr>
		<footer class="footer1">
		<div class="footer-left">
			<h3>
				Company<span>logo</span>
			</h3>

			<p class="footer-links">
				<a href="#">Home</a> � <a href="#">Blog</a> � <a href="#">Pricing</a>
				� <a href="#">About</a> � <a href="#">Faq</a> � <a href="#">Contact</a>
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
					class="fa fa-twitter"></i></a> <a href="#"><i
					class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-github"></i></a>

			</div>

		</div>
		</footer> -->
	</div>
</body>
</html>
