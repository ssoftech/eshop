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
<link rel="stylesheet" href="css1/body1style.css" type='text/css'
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
			ArrayList<Cart_Shopping> cart_show = (ArrayList<Cart_Shopping>) session.getAttribute("cc");
				session.setAttribute("cc", cart_show);
				String Type = request.getParameter("Type");
				String Category = request.getParameter("Category");
		%>
		<div id="body1">

			<%
				String username = (String) session.getAttribute("Name");
				System.out.println("Username is" + username);
				if (username == "" || username == null)
				{
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

		<div id="shirtsBanner" class="shirtsBanner1">
			<div class="shirtBan1">
				<img src="images1/MenShirts/shirtsBanner.jpg">
			</div>
		</div>

		<div id="body6">
			<div class="body6a">
				<div id='leftMenu'>
					<%
						Connection con8 = Conct.conect();
						String sql8 = "Select BrandName from retailer_productinsertmen where Category=? And Type=?";
						PreparedStatement ps8 = con8.prepareStatement(sql8);
						ps8.setString(1, Category);
						ps8.setString(2, Type);
						ResultSet rs8 = ps8.executeQuery();
					%>
					<ul>
						<li class='active'><a href='#'><span>Filter By</span></a></li>
						<li class='has-sub'><a href='#'><span>BRAND</span></a>
							<ul>
								<%
									while (rs8.next())
									{
								%>
								<li><a href="#"
									onclick="show_branduser('<%=rs8.getString("BrandName")%>', '<%=Type%>','<%=Category%>' )"><span><%=rs8.getString("BrandName")%></span></a></li>

								<%
									}
								%>
							</ul></li>

						<li class='has-sub'><a href='#'><span>STYLE</span></a>
							<ul>
								<li><a href='#'><span>Solid</span></a></li>
								<li><a href='#'><span>Checked</span></a></li>
								<li><a href='#'><span>Printed</span></a></li>
								<li><a href='#'><span>Striped</span></a></li>
								<li class='last'><a href='#'><span>Washed</span></a></li>
							</ul></li>
						<li class='has-sub'><a href='#'><span>PRICE</span></a>
							<ul>
								<li><a href="#"
									onclick="showPrice1('1000','<%=Type%>','<%=Category%>')"><span>Below
											1000</span></a></li>
								<li><a href="#"
									onclick="showPrice2('1000-1499','<%=Type%>','<%=Category%>')"><span>1000-1499</span></a></li>
								<li><a href="#"
									onclick="showPrice3('1500-1999','<%=Type%>','<%=Category%>')"><span>1500-1999</span></a></li>
								<li><a href="#"
									onclick="showPrice4('2000-2499','<%=Type%>','<%=Category%>')"><span>2000-2499</span></a></li>
								<li><a href="#"
									onclick="showPrice5('2499','<%=Type%>', '<%=Category%>')"><span>Above
											2499</span></a></li>
								<table id="priceBox" align="center">
									<tr>
										<td><input type="text" name="priceStart"
											placeholder="Min Price" size="10" /></td>
										<td style="color: #FFF">-</td>
										<td><input type="text" name="priceEnd"
											placeholder="Max Price" size="10" /></td>
									</tr>
									<tr>
										<td colspan="3" align="center"><input type="submit"
											value="GO!" /></td>
									</tr>
								</table>
							</ul></li>
						<li class='last'><a href='#'><span>Contact</span></a></li>
					</ul>

				</div>

			</div>
			<div class="body6b">
				<table id="body6b">
					<%
						String type = request.getParameter("Type");
						String category = request.getParameter("Category");

						Connection con = Conct.conect();
						//String sql="Select  DISTINCT ad1.Product_Id,ad2.Price, ad2.Tagline, ad1.ColorName, ad1.Filename from admin_imageinsrt_men ad1 inner join admin_productinsert_men ad2 on ad1.Product_Id=ad2.Product_Id and Type=? and Category=?";
						String sql = "Select  DISTINCT ad1.Product_Id, ad1.ColorName from retailer_imageinsrt_men ad1 inner join retailer_productinsertmen ad2 on ad1.Product_Id=ad2.Product_Id and Type=? and Category=?";
						PreparedStatement ps = con.prepareStatement(sql);
						ps.setString(1, type);
						ps.setString(2, category);
						ResultSet rs = ps.executeQuery();
						boolean status = true;
						ArrayList<String> ar= new ArrayList<String>();
						Double price = 0.0;
						String Filename = "";
						while (status)
						{
					%><tr>

						<%
							for (int i = 1; i <= 3; i++)
								{

									if (rs.next())
									{
										String product_id = rs.getString("Product_Id");
										String Colorname = rs.getString("ColorName");
										String sql2 = "Select  ad2.Price, ad2.Tagline,ad1.Filename from retailer_imageinsrt_men ad1 inner join retailer_productinsertmen ad2 on ad1.Product_Id=ad2.Product_Id and ad1.Product_Id=?";
										//Connection con1=Conct.conect();
										PreparedStatement ps1 = con.prepareStatement(sql2);
										ps1.setString(1, product_id);

										ResultSet rs1 = ps1.executeQuery();
										if (rs1.next())
										{
											
											price = rs1.getDouble("Price");
											String Tagline = rs1.getString("Tagline");
											Filename = rs1.getString("Filename");
											
											if(!ar.contains(product_id))
											{
												ar.add(product_id);
						%><td><table id="MainThumb">
								<tr>
									<td><a 
										href="MenShirtsRed1.jsp?Pid=<%=product_id%> &Category=<%=category%> &Price=<%=price%> &Colorname=<%=Colorname%> &Filename=<%=Filename%>">
											<img src="Image?pid=<%=product_id%> " height="340"
											width="240"></img>
									</a></td>
								</tr>
								<tr>
									<td
										style="color: white; text-shadow: 3px 2px 5px black; font-size: 18px; padding-bottom: 3px;">&nbsp&nbsp<%=Tagline%></td>
								</tr>
								<tr>
									<td style="color: white; text-shadow: 3px 2px 5px black;">&nbsp&nbsp<i
										class="fa fa-inr fa-lg"></i>&nbsp&nbsp<%=price%></td>

								</tr>
							</table></td>


						<%
							}
								}
									}
									else
									{
										status = false;
										break;
									}
								}
						%>
					</tr>
					<%
						}
					%>


				</table>

				<div
					style="width: 923px; height: 25px; text-align: center; margin-left: 0px; padding: 1px; padding-bottom: 17px; background-color: #343C3C; border-radius: 10px 10px 0px 0px;">

					<p style="color: #1ADEE3; text-shadow: 0px 0px 10px #ffffff;">
						<i class="fa fa-frown-o fa-lg"></i>&nbsp&nbspNo More Products To
						Display
					</p>
				</div>


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
