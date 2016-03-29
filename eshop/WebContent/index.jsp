
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Online Shopping: Electronics, Clothing, Groceries</title>
<meta charset="utf-8">
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

<script>
	$(document).ready(function() {
		$('#Carousel').carousel({
			interval : 5000
		})
	});
	
	function status() {

		if ("${param.Message}") {
			alert("${param.Message}");
		}
	}
</script>

<style>
@import url('http://fonts.googleapis.com/css?family=Ubuntu');

* {
	font-family: Ubuntu;
}

body {
	overflow: scroll;
	overflow-x: hidden;
}

/* SignIn Modal */
input[type=number]::-webkit-inner-spin-button, input[type=number]::-webkit-outer-spin-button
	{
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	margin: 0;
}

/* OFFERS CAROUSEL */
.carousel {
	margin-bottom: 0;
	padding: 0 40px 30px 40px;
	background-image: none;
}
/* The controlsy */
.carousel-control.right {
	right: -12px;
	background-image: none;
}

</style>

</head>
<body onload="status()">
	<!-- HEADER -->
	<%@include file="cxHeader1.jsp"%>

      		<%
			String name = "";
				HttpSession sees = request.getSession();
				String email =(String)sees.getAttribute("email");
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
				
				System.out.println("Name"+name);
		%>
	<!-- Carousel Slider For Banner -->
	<div id="CxBanner" class="container-fluid" style="height: 400px; overflow: hidden;">
		<div class="row">
			<div id="carousel-example-generic" class="carousel slide col-md-8"
				data-ride="carousel" data-interval="2000"
				style="width: auto; height: auto; margin-left: 2%; float: left; border: 1px solid black;">
				<!-- Indicators -->
				<ol class="carousel-indicators" style="bottom: -2%;">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					<li data-target="#carousel-example-generic" data-slide-to="3"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="images1/SliderImg/banner1.jpg" alt="...">
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="images1/SliderImg/banner2.jpg" alt="...">
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="images1/SliderImg/banner3.jpg" alt="...">
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="images1/SliderImg/banner4.jpg" alt="...">
						<div class="carousel-caption"></div>
					</div>
				</div>

				<!-- Controls -->
				<a data-slide="prev" href="#carousel-example-generic"
					class="left carousel-control"
					style="padding: 135px 70px 0px 0px; background-image: none; font-size: xx-large;"><i
					class="fa fa-caret-left" style="color: #d4c0c0;"></i></a> <a
					data-slide="next" href="#carousel-example-generic"
					class="right carousel-control"
					style="padding: 135px 0px 0px 70px; background-image: none; font-size: xx-large;"><i
					class="fa fa-caret-right" style="color: #d4c0c0;"></i></a>
			</div>
			<div class="col-md-4"
				style="width: auto; height: auto; border: 1px solid black; margin-left: 1%; float: left;">
				<h3 align="center"
					style="margin-top: 27%; margin-left: 30%; margin-right: 15%;">OFFERS'
					BANNER</h3>
				<h3 align="center"
					style="margin-top: 27%; margin-left: 30%; margin-right: 15%;">OFFERS'
					BANNER</h3>
				<h3 align="center"
					style="margin-top: 27%; margin-left: 30%; margin-right: 15%;">OFFERS'
					BANNER</h3>
			</div>
		</div>
	</div>
	<hr style="border: 1px solid #b2a4a4;">

	<!-- OFFERS THUMBNAIL CAROUSEL -->
	<h3 style="color: gray; text-decoration: underline;" align="center">OFFERS</h3>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-10" style="margin-left: -3%;">
				<div id="CarouselOffer" class="carousel slide"
					style="height: 210px;">

					<!--Carousel items -->
					<div class="carousel-inner">

						<div class="item active">
							<div class="row">
								<div class="col-md-4">
									<a href="#" class="thumbnail" width="180" height="180"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-4">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-4">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

						<div class="item">
							<div class="row">
								<div class="col-md-4">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-4">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-4">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

						<div class="item">
							<div class="row">
								<div class="col-md-4">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-4">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-4">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

					</div>
					<!--.carousel-inner-->
					<a data-slide="prev" href="#CarouselOffer"
						class="left carousel-control"
						style="padding: 90px 130px 0px 0px; background-image: none;"><i
						class="fa fa-caret-left" style="color: black;"></i></a> <a
						data-slide="next" href="#CarouselOffer"
						class="right carousel-control"
						style="padding: 90px 0px 0px 130px; background-image: none;"><i
						class="fa fa-caret-right" style="color: black;"></i></a>
				</div>
				<!--.Carousel-->

			</div>
		</div>
	</div>
	<!--.container-->
	<hr style="border: 1px solid #b2a4a4;">

	<!-- ELECTRONICS THUMBNAIL CAROUSEL -->
	<h3 style="color: gray; text-decoration: underline;" align="center">ELECTRONICS</h3>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-12" style="margin-left: -3%;">
				<div id="CarouselElec" class="carousel slide" style="height: 210px;">

					<!--Carousel items -->
					<div class="carousel-inner">

						<div class="item active">
							<div class="row">
								<div class="col-md-3">
									<a href="#" class="thumbnail" width="180" height="180"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

						<div class="item">
							<div class="row">
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

						<div class="item">
							<div class="row">
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

					</div>
					<!--.carousel-inner-->
					<a data-slide="prev" href="#CarouselElec"
						class="left carousel-control"
						style="padding: 90px 130px 0px 0px; background-image: none;"><i
						class="fa fa-caret-left" style="color: black;"></i></a> <a
						data-slide="next" href="#CarouselElec"
						class="right carousel-control"
						style="padding: 90px 0px 0px 130px; background-image: none;"><i
						class="fa fa-caret-right" style="color: black;"></i></a>
				</div>
				<!--.Carousel-->

			</div>
		</div>
	</div>
	<!--.container-->
	<hr style="border: 1px solid #b2a4a4;">

	<!-- MEN THUMBNAIL CAROUSEL -->
	<h3 style="color: gray; text-decoration: underline;" align="center">MENS
		CLOTHING</h3>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-12" style="margin-left: -3%;">
				<div id="CarouselMen" class="carousel slide" style="height: 210px;">

					<!--Carousel items -->
					<div class="carousel-inner">

						<div class="item active">
							<div class="row">
								<div class="col-md-3">
									<a href="#" class="thumbnail" width="180" height="180"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

						<div class="item">
							<div class="row">
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

						<div class="item">
							<div class="row">
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

					</div>
					<!--.carousel-inner-->
					<a data-slide="prev" href="#CarouselMen"
						class="left carousel-control"
						style="padding: 90px 130px 0px 0px; background-image: none;"><i
						class="fa fa-caret-left" style="color: black;"></i></a> <a
						data-slide="next" href="#CarouselMen"
						class="right carousel-control"
						style="padding: 90px 0px 0px 130px; background-image: none;"><i
						class="fa fa-caret-right" style="color: black;"></i></a>
				</div>
				<!--.Carousel-->

			</div>
		</div>
	</div>
	<!--.container-->
	<hr style="border: 1px solid #b2a4a4;">

	<!-- WOMEN THUMBNAIL CAROUSEL -->
	<h3 style="color: gray; text-decoration: underline;" align="center">WOMENS
		CLOTHING</h3>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-12" style="margin-left: -3%;">
				<div id="CarouselWom" class="carousel slide" style="height: 210px;">

					<!--Carousel items -->
					<div class="carousel-inner">

						<div class="item active">
							<div class="row">
								<div class="col-md-3">
									<a href="#" class="thumbnail" width="180" height="180"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

						<div class="item">
							<div class="row">
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

						<div class="item">
							<div class="row">
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

					</div>
					<!--.carousel-inner-->
					<a data-slide="prev" href="#CarouselWom"
						class="left carousel-control"
						style="padding: 90px 130px 0px 0px; background-image: none;"><i
						class="fa fa-caret-left" style="color: black;"></i></a> <a
						data-slide="next" href="#CarouselWom"
						class="right carousel-control"
						style="padding: 90px 0px 0px 130px; background-image: none;"><i
						class="fa fa-caret-right" style="color: black;"></i></a>
				</div>
				<!--.Carousel-->

			</div>
		</div>
	</div>
	<!--.container-->
	<hr style="border: 1px solid #b2a4a4;">

	<!-- KIDS THUMBNAIL CAROUSEL -->
	<h3 style="color: gray; text-decoration: underline;" align="center">KIDS
		CLOTHING</h3>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-12" style="margin-left: -3%;">
				<div id="CarouselKid" class="carousel slide" style="height: 210px;">

					<!--Carousel items -->
					<div class="carousel-inner">

						<div class="item active">
							<div class="row">
								<div class="col-md-3">
									<a href="#" class="thumbnail" width="180" height="180"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

						<div class="item">
							<div class="row">
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

						<div class="item">
							<div class="row">
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

					</div>
					<!--.carousel-inner-->
					<a data-slide="prev" href="#CarouselKid"
						class="left carousel-control"
						style="padding: 90px 130px 0px 0px; background-image: none;"><i
						class="fa fa-caret-left" style="color: black;"></i></a> <a
						data-slide="next" href="#CarouselKid"
						class="right carousel-control"
						style="padding: 90px 0px 0px 130px; background-image: none;"><i
						class="fa fa-caret-right" style="color: black;"></i></a>
				</div>
				<!--.Carousel-->

			</div>
		</div>
	</div>
	<!--.container-->
	<hr style="border: 1px solid #b2a4a4;">

	<!-- GROCERY THUMBNAIL CAROUSEL -->
	<h3 style="color: gray; text-decoration: underline;" align="center">GROCERIES</h3>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-12" style="margin-left: -3%;">
				<div id="CarouselGrocery" class="carousel slide"
					style="height: 210px;">

					<!--Carousel items -->
					<div class="carousel-inner">

						<div class="item active">
							<div class="row">
								<div class="col-md-3">
									<a href="#" class="thumbnail" width="180" height="180"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

						<div class="item">
							<div class="row">
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

						<div class="item">
							<div class="row">
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/MenShirts/Koala2.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

					</div>
					<!--.carousel-inner-->
					<a data-slide="prev" href="#CarouselGrocery"
						class="left carousel-control"
						style="padding: 90px 130px 0px 0px; background-image: none;"><i
						class="fa fa-caret-left" style="color: black;"></i></a> <a
						data-slide="next" href="#CarouselGrocery"
						class="right carousel-control"
						style="padding: 90px 0px 0px 130px; background-image: none;"><i
						class="fa fa-caret-right" style="color: black;"></i></a>
				</div>
				<!--.Carousel-->

			</div>
		</div>
	</div>
	<!--.container-->
	<hr style="border: 1px solid #b2a4a4;">

	<!-- BRAND CAROUSEL -->
	<h3 style="color: gray; text-decoration: underline;" align="center">BRANDS</h3>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-12" style="margin-left: -3%;">
				<div id="CarouselBrand" class="carousel slide"
					style="height: 300px;">

					<!--Carousel items -->
					<div class="carousel-inner">

						<div class="item active">
							<div class="row">
								<div class="col-md-3">
									<a href="#" class="thumbnail" width="180" height="180"><img
										src="images1/BrandZone/adidas.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/adidas.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/bluemarine.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/bluemarine.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<br>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/calvinklein.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/calvinklein.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/dolcengabbana.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/dolcengabbana.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

						<div class="item">
							<div class="row">
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/gorgioarmani.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/gorgioarmani.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/gucci.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/gucci.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<br>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/lacoste.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/lacoste.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/levis.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/levis.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

						<div class="item">
							<div class="row">
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/poloralphlauren.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/poloralphlauren.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/puma.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/puma.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<br>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/riviera.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/riviera.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/spykar.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
								<div class="col-md-3">
									<a href="#" class="thumbnail"><img
										src="images1/BrandZone/spykar.jpg" alt="Image"
										style="max-width: 100%;"></a>
								</div>
							</div>
							<!--.row-->
						</div>
						<!--.item-->

					</div>


					<!--.carousel-inner-->
					<a data-slide="prev" href="#CarouselBrand"
						class="left carousel-control"
						style="padding: 120px 130px 0px 0px; background-image: none;"><i
						class="fa fa-caret-left" style="color: black;"></i></a> <a
						data-slide="next" href="#CarouselBrand"
						class="right carousel-control"
						style="padding: 120px 0px 0px 130px; background-image: none;"><i
						class="fa fa-caret-right" style="color: black;"></i></a>
				</div>
				<!--.Carousel-->

			</div>

		</div>
	</div>
	<!--.container-->
	<hr style="border: 1px solid #b2a4a4;">

	<!-- FOOTER -->
	<%@include file="cxFooter1.jsp"%>
</body>
</html>
