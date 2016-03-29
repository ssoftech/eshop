<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="css1/navstyle1.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="css1/searchstyle.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/carticon.css" type='text/css'
	media="screen" />
<link rel="stylesheet" href="css1/loginPop1.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="css1/styleUserDash.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="css1/signoutstyle.css" type='text/css'
	media="screen" />

<script src="http://code.jquery.com/jquery-latest.min.js"
	type="text/javascript"></script>
<script src="js1/6aLeftMenu.js"></script>

<title>USER DASHBOARD</title>

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
	function status() {
		if ("${param.Message}") {
			alert("${param.Message}");
		}
	}

	function show_userdet(str) {
		if (str.length == 0) {
			document.getElementById("dashMain").innerHTML = "";
			return;
		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("dashMain").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET", "ShowUserDetails.jsp?UserInfo=" + str, true);
			xmlhttp.send();
		}
	}
</script>

</head>
<body>
	<div id="WinLay">
		<%
			String name = "";
			HttpSession sees = request.getSession();
			String email = (String) sees.getAttribute("email");
			session.setAttribute("Email", email);
			System.out.println("Email is in " + email);
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
				<div id="topmessage" style="margin-left: 0px;">NO DELIVERY
					CHARGES ON ORDERS ABOVE Rs500 | EXTRA 5% OFF ON ORDERS ABOVE Rs1499</div>
				<div class="retailLogin">
					<a href="Login_Retailer.jsp">- RETAILER LOGIN - </a>
				</div>
				<div class="help">
					<a target="_blank" href="help.html" title="Help">HELP</a> <span>|</span>
				</div>
				<div class="signin">
					<a href="javascript:login('show');" title="Sign In">SIGN IN</a> <span>|</span>
				</div>
				<div class="signup">
					<a href="Register_User.jsp" title="Sign Up">SIGN UP</a>
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



			<div id="loginwrapper">
				<div id="topmessageB">NO DELIVERY CHARGES ON ORDERS ABOVE
					Rs500 | EXTRA 5% OFF ON ORDERS ABOVE Rs1499</div>
				<div class="greetUserExt">
					<div class="greetUser">
						<a href="UserDashboard.jsp">Welcome <%=username%> &nbsp&nbsp<i
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
									<li><a href="#">Boys Clothing</a></li>
									<li><a href="#">Girls Clothing</a></li>
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
			<li><a href="#" title="View Cart"><img
					src="images1/NavBar/Cart1.png"></a></li>
		</div>
		<div id="SearchWrap">
			<section class="webdesigntuts-workshop">
			<form action="" method="">
				<input type="search" placeholder="Search...">
				<button>Search</button>
			</form>
			</section>
		</div>

		<!-- Side Nav Menu -->

		<div id="dashNav">
			<div class="leftDashMenu">
				<div id="leftMenu">
					<ul>
						<li class='active'><a href='#'
							onclick="show_userdet('<%=email%>')"><span>MY ACCOUNT</span></a></li>
						<li class='has-sub'><a href='#'><span>MY ORDERS</span></a>
							<ul>
								<li><a href="User_MyOrder.jsp"><span>My Orders</span></a></li>
							</ul></li>

						<li class='has-sub'><a href='#'><span>PAYMENTS</span></a>
							<ul>
								<li><a href='#'><span>Gift Card</span></a></li>
								<li class='last'><a href='#'><span>Saved Cards</span></a></li>
							</ul></li>
						<li class='last'><a href='#'><span>MY REVIEWS</span></a></li>
						<li class='has-sub'><a href='#'><span>SETTINGS</span></a>
							<ul>
								<li><a href="#"><span>Change Password</span></a></li>
								<li><a href="#"><span>Addresses</span></a></li>
								<li><a href="#"><span>Update Mobile No.</span></a></li>
								<li class='last'><a href="#"><span>Deactivate
											Account</span></a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- Side Nav Menu Ends -->
		<div id="dashMain" style="margin-left: 30%;"></div>
		<!-- Main Content Page Starts-->


	</div>
</body>
</html>