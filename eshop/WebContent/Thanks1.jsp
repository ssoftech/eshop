<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="Bean.Conct, java.sql.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css1/navstyle1.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="css1/indexbannerareastyle.css"
	type='text/css' media="screen" />

<link rel="stylesheet" href="css1/searchstyle.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/carticon.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/body1style.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/body2style.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/indexofferstyle.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/body3style.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/body4style.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/body5style.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/loginPop1.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="css1/Cart1Style.css" type="text/css"
	media="screen" />


<link href="http://fonts.googleapis.com/css?family=Cookie"
	rel="stylesheet" type="text/css" />

<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />

<link href="http://fonts.googleapis.com/css?family=Cookie"
	rel="stylesheet" type="text/css" />


<title>Online Shopping India: Buy Mobiles Electronics Shoes
	Books Clothings Accessories and more @ Dukaan.com</title>
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
</head>

<body>
	<div id="WinLay">
		<%
			String name = "";
			HttpSession sees = null;
			String email = request.getParameter("Email");
			System.out.println("Email is" + email);
			if (email != "" || email != null) {
				Connection con = Conct.conect();
				String sql = "Select FirstName from user_register where Email=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, email);
				ResultSet rs = ps.executeQuery();
				if (rs.next()) {
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

		<div id="body1">

			<%
				String username = (String) session.getAttribute("Name");
				System.out.println("Username is" + username);
				if (username == "" || username == null) {
			%>
			<link rel="stylesheet" href="css1/signinstyle.css" type='text/css'
				media="screen" />

			<div id="loginwrapper">
				<div id="topmessage">NO DELIVERY CHARGES ON ORDERS ABOVE Rs500
					| EXTRA 5% OFF ON ORDERS ABOVE Rs1499</div>
				<div class="retailLogin">
					<a href="Login_Retailer.jsp">- RETAILER LOGIN -
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
				} else {
			%>
			<%
				if (username != null) {
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
									<li><a href="#">Shirts</a></li>
									<li><a href="#">Skirts</a></li>
									<li><a href="#">Scarves & Stoles</a></li>
									<li><a href="#">Trousers</a></li>
									<li><a href="#">Waistcoats</a></li>
								</ul>
							</div>

							<div class="col_1">
								<h3>CASUALS</h3>
								<ul>
									<li><a href="#">Tops</a></li>
									<li><a href="#">Jeans</a></li>
									<li><a href="#">T-Shirts</a></li>
									<li><a href="#">Skirts</a></li>
								</ul>
							</div>

							<div class="col_1">
								<h3>ETHNIC WEAR</h3>
								<ul>
									<li><a href="#">Kurtas & Kurtis</a></li>
									<li><a href="#">Sarees</a></li>
									<li><a href="#">Salwar Kurta & Dupattas</a></li>
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
									<li><a href="menshirts.jsp?Type=Shirts &Category=Casual">Shirts</a></li>
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
					<li><a href="index.jsp">OFFERS</a></li>
				</ul>

			</div>
		</div>
		<div id="carticon">
				<li><a href="Cart" title="View Cart"><img src="images1/NavBar/Cart1.png"/></a></li>
		</div>
		<div id="SearchWrap">
			<section class="webdesigntuts-workshop">
			<form action="" method="">
				<input type="search" placeholder="Search..."/>
					<button>Search</button>
			</form>
			</section>
		</div>
		
		<div class="Thanks">
			<p style="font-size: 38px; font-weight: bolder; text-shadow: 2px 2px 10px black;">THANK YOU</p>
			<p style="font-size: 20px; margin-top: -20px; text-shadow: 1px 1px 10px black;">for shopping with us @dukaan.com</p>
			<p style="font-size: 16px; margin-top: 0px; text-shadow: 1px 1px 5px black;"><i class="fa fa-spinner fa-spin"></i> Your order is under process</p>
			<hr>
			<p style="font-size: 16px; margin-top: 0px; text-shadow: 1px 1px 5px black;"><i class="fa fa-envelope"></i> The invoice will be mailed to your registered email ID within 24-hours of delivery</p>
			<hr>
			<p style="font-size: 16px; margin-top: 0px; text-shadow: 1px 1px 5px black;">We hope you had a pleasant experience in shopping with us. <br/></>We would love for you to visit us again. <i class="fa fa-thumbs-up"></i></p>
		</div>
		
		<table class="ThanksCont" rules="rows">
			<tr>
				<td><a href="index.jsp" style="color: black;"><i
						class="fa fa-mail-reply fa-lg">&nbsp&nbsp</i>Continue Shopping</a></td>
				<td>&nbsp&nbsp&nbsp&nbsp</td>
			</tr>
		</table>
		
		<hr style="margin-top: 20px;">
			<div class="footer1">
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
					has a goal to deliver branded products at the best discounted
					prices at the best way possible to its valuable customers (or)
					users.</p>

				<div class="footer-icons">

					<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
						class="fa fa-twitter"></i></a> <a href="#"><i
						class="fa fa-linkedin"></i></a> <a href="#"><i
						class="fa fa-github"></i></a>

				</div>

			</div>
			</div>
	</div>
</body>
</html>
