<!DOCTYPE html>
<html lang="en">
<head>
<title>Customer Side Header</title>
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
	$(document).ready(
			function() {
				$(".dropdown").hover(
						function() {
							$('.dropdown-menu', this).not('.in .dropdown-menu')
									.stop(true, true).slideDown("450");
							$(this).toggleClass('open');
						},
						function() {
							$('.dropdown-menu', this).not('.in .dropdown-menu')
									.stop(true, true).slideUp("450");
							$(this).toggleClass('open');
						});
			});

	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
	});
</script>

<!-- CSS For -->
<style>
@import url('http://fonts.googleapis.com/css?family=Ubuntu');

* {
	font-family: Ubuntu;
}

/* SignIn Modal */
input[type=number]::-webkit-inner-spin-button, input[type=number]::-webkit-outer-spin-button
	{
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	margin: 0;
}

input[type=number] {
	-moz-appearance: textfield;
}

/* NAVBAR */
.mega-dropdown {
	position: static !important;
}

.mega-dropdown-menu {
	padding: 20px 0px;
	width: 100%;
	box-shadow: none;
	-webkit-box-shadow: none;
}

.mega-dropdown-menu>li>ul {
	padding: 0;
	margin: 0;
}

.mega-dropdown-menu>li>ul>li {
	list-style: none;
}

.mega-dropdown-menu>li>ul>li>a {
	display: block;
	color: #222;
	padding: 3px 5px;
}

.mega-dropdown-menu>li ul>li>a:hover, .mega-dropdown-menu>li ul>li>a:focus
	{
	text-decoration: none;
}

.mega-dropdown-menu .dropdown-header {
	font-size: 18px;
	color: #ff3546;
	padding: 5px 60px 5px 5px;
	line-height: 30px;
}

/* .carousel-control {
	width: 30px;
	height: 30px;
	top: -35px;
}

.left.carousel-control {
	right: 30px;
	left: inherit;
} */
.carousel-control .glyphicon-chevron-left, .carousel-control .glyphicon-chevron-right
	{
	font-size: 15px;
	line-height: 30px;
	text-shadow: 2px 2px 1px black;
	color: #ffffff;
}
</style>


</head>
<body>
	<!-- HEADER -->
	<header class="row">
		<h5 class="col-sm-10" style="width: 60%; margin-left: 1.3%;">NO
			DELIVERY CHARGES ON ORDERS ABOVE Rs500 | EXTRA 5% OFF ON ORDERS ABOVE
			Rs1499</h5><span class="col-sm-1"
			style="float: right;"><a href="#">HELP</a></span>
	</header>


	<!-- NAVBAR -->
	<div class="container" style="width: 100%;">
		<nav class="navbar navbar-inverse">
			<div class="navbar-header">
				<button class="navbar-toggle" type="button" data-toggle="collapse"
					data-target=".js-navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">My Store
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
			</div>

			<div class="collapse navbar-collapse js-navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="dropdown mega-dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Electronics <span
							class="caret"></span></a>
						<ul class="dropdown-menu mega-dropdown-menu">
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Electronics</li>
									<div id="menCollection" class="carousel slide"
										data-ride="carousel">
										<div class="carousel-inner">
											<div class="item active">
												<a href="#"><img
													src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 1"></a>
												<h4>
													<small>Summer dress floral prints</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 2"></a>
												<h4>
													<small>Gold sandals with shiny touch</small>
												</h4>
												<button class="btn btn-primary" type="button">9,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 3"></a>
												<h4>
													<small>Denin jacket stamped</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
										</div>
										<!-- End Carousel Inner -->
										<!-- Controls -->
										<a class="left carousel-control" href="#menCollection"
											role="button" data-slide="prev"> <span
											class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
											<span class="sr-only">Previous</span>
										</a> <a class="right carousel-control" href="#menCollection"
											role="button" data-slide="next"> <span
											class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
											<span class="sr-only">Next</span>
										</a>
									</div>
									<!-- /.carousel -->
									<li class="divider"></li>
									<li><a href="#">View all Collection <span
											class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">LAPTOPS</li>
									<li><a href="#">Asus</a></li>
									<li><a href="#">Dell</a></li>
									<li><a href="#">Fujitsu</a></li>
									<li><a href="#">Hewlett-Packard</a></li>
									<li><a href="#">Lenovo</a></li>
									<li><a href="#">MSI</a></li>
									<li><a href="#">Sony</a></li>
									<li><a href="#">Toshiba</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Laptop/Computer Accessories</li>
									<li><a href="#">Navbar Inverse</a></li>
									<li><a href="#">Pull Right Elements</a></li>
									<li><a href="#">Coloured Headers</a></li>
									<li><a href="#">Primary Buttons & Default</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Much more</li>
									<li><a href="#">Easy to Customize</a></li>
									<li><a href="#">Calls to action</a></li>
									<li><a href="#">Custom Fonts</a></li>
									<li><a href="#">Slide down on Hover</a></li>
								</ul>
							</li>
						</ul></li>
					<li class="dropdown mega-dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Men <span
							class="caret"></span></a>
						<ul class="dropdown-menu mega-dropdown-menu">
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Features</li>
									<li><a href="#">Auto Carousel</a></li>
									<li><a href="#">Carousel Control</a></li>
									<li><a href="#">Left & Right Navigation</a></li>
									<li><a href="#">Four Columns Grid</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">Fonts</li>
									<li><a href="#">Glyphicon</a></li>
									<li><a href="#">Google Fonts</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Plus</li>
									<li><a href="#">Navbar Inverse</a></li>
									<li><a href="#">Pull Right Elements</a></li>
									<li><a href="#">Coloured Headers</a></li>
									<li><a href="#">Primary Buttons & Default</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Much more</li>
									<li><a href="#">Easy to Customize</a></li>
									<li><a href="#">Calls to action</a></li>
									<li><a href="#">Custom Fonts</a></li>
									<li><a href="#">Slide down on Hover</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Men Collection</li>
									<div id="womenCollection" class="carousel slide"
										data-ride="carousel">
										<div class="carousel-inner">
											<div class="item active">
												<a href="#"><img
													src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 1"></a>
												<h4>
													<small>Summer dress floral prints</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 2"></a>
												<h4>
													<small>Gold sandals with shiny touch</small>
												</h4>
												<button class="btn btn-primary" type="button">9,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 3"></a>
												<h4>
													<small>Denin jacket stamped</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
										</div>
										<!-- End Carousel Inner -->
										<!-- Controls -->
										<a class="left carousel-control" href="#womenCollection"
											role="button" data-slide="prev"> <span
											class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
											<span class="sr-only">Previous</span>
										</a> <a class="right carousel-control" href="#womenCollection"
											role="button" data-slide="next"> <span
											class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
											<span class="sr-only">Next</span>
										</a>
									</div>
									<!-- /.carousel -->
									<li class="divider"></li>
									<li><a href="#">View all Collection <span
											class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
								</ul>
							</li>
						</ul></li>
					<li class="dropdown mega-dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Women <span
							class="caret"></span></a>
						<ul class="dropdown-menu mega-dropdown-menu">
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Women Collection</li>
									<div id="menCollection" class="carousel slide"
										data-ride="carousel">
										<div class="carousel-inner">
											<div class="item active">
												<a href="#"><img
													src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 1"></a>
												<h4>
													<small>Summer dress floral prints</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 2"></a>
												<h4>
													<small>Gold sandals with shiny touch</small>
												</h4>
												<button class="btn btn-primary" type="button">9,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 3"></a>
												<h4>
													<small>Denin jacket stamped</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
										</div>
										<!-- End Carousel Inner -->
										<!-- Controls -->
										<a class="left carousel-control" href="#menCollection"
											role="button" data-slide="prev"> <span
											class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
											<span class="sr-only">Previous</span>
										</a> <a class="right carousel-control" href="#menCollection"
											role="button" data-slide="next"> <span
											class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
											<span class="sr-only">Next</span>
										</a>
									</div>
									<!-- /.carousel -->
									<li class="divider"></li>
									<li><a href="#">View all Collection <span
											class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Features</li>
									<li><a href="#">Auto Carousel</a></li>
									<li><a href="#">Carousel Control</a></li>
									<li><a href="#">Left & Right Navigation</a></li>
									<li><a href="#">Four Columns Grid</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">Fonts</li>
									<li><a href="#">Glyphicon</a></li>
									<li><a href="#">Google Fonts</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Plus</li>
									<li><a href="#">Navbar Inverse</a></li>
									<li><a href="#">Pull Right Elements</a></li>
									<li><a href="#">Coloured Headers</a></li>
									<li><a href="#">Primary Buttons & Default</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Much more</li>
									<li><a href="#">Easy to Customize</a></li>
									<li><a href="#">Calls to action</a></li>
									<li><a href="#">Custom Fonts</a></li>
									<li><a href="#">Slide down on Hover</a></li>
								</ul>
							</li>
						</ul></li>
					<li class="dropdown mega-dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Kids <span
							class="caret"></span></a>
						<ul class="dropdown-menu mega-dropdown-menu">
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Features</li>
									<li><a href="#">Auto Carousel</a></li>
									<li><a href="#">Carousel Control</a></li>
									<li><a href="#">Left & Right Navigation</a></li>
									<li><a href="#">Four Columns Grid</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">Fonts</li>
									<li><a href="#">Glyphicon</a></li>
									<li><a href="#">Google Fonts</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Plus</li>
									<li><a href="#">Navbar Inverse</a></li>
									<li><a href="#">Pull Right Elements</a></li>
									<li><a href="#">Coloured Headers</a></li>
									<li><a href="#">Primary Buttons & Default</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Much more</li>
									<li><a href="#">Easy to Customize</a></li>
									<li><a href="#">Calls to action</a></li>
									<li><a href="#">Custom Fonts</a></li>
									<li><a href="#">Slide down on Hover</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Kids Collection</li>
									<div id="womenCollection" class="carousel slide"
										data-ride="carousel">
										<div class="carousel-inner">
											<div class="item active">
												<a href="#"><img
													src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 1"></a>
												<h4>
													<small>Summer dress floral prints</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 2"></a>
												<h4>
													<small>Gold sandals with shiny touch</small>
												</h4>
												<button class="btn btn-primary" type="button">9,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 3"></a>
												<h4>
													<small>Denin jacket stamped</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
										</div>
										<!-- End Carousel Inner -->
										<!-- Controls -->
										<a class="left carousel-control" href="#womenCollection"
											role="button" data-slide="prev"> <span
											class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
											<span class="sr-only">Previous</span>
										</a> <a class="right carousel-control" href="#womenCollection"
											role="button" data-slide="next"> <span
											class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
											<span class="sr-only">Next</span>
										</a>
									</div>
									<!-- /.carousel -->
									<li class="divider"></li>
									<li><a href="#">View all Collection <span
											class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
								</ul>
							</li>
						</ul></li>
					<li class="dropdown mega-dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">Groceries <span
							class="caret"></span></a>
						<ul class="dropdown-menu mega-dropdown-menu">
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Groceries</li>
									<div id="menCollection" class="carousel slide"
										data-ride="carousel">
										<div class="carousel-inner">
											<div class="item active">
												<a href="#"><img
													src="http://placehold.it/254x150/ff3546/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 1"></a>
												<h4>
													<small>Summer dress floral prints</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/3498db/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 2"></a>
												<h4>
													<small>Gold sandals with shiny touch</small>
												</h4>
												<button class="btn btn-primary" type="button">9,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
											<div class="item">
												<a href="#"><img
													src="http://placehold.it/254x150/2ecc71/f5f5f5/&text=New+Collection"
													class="img-responsive" alt="product 3"></a>
												<h4>
													<small>Denin jacket stamped</small>
												</h4>
												<button class="btn btn-primary" type="button">49,99
												</button>
												<button href="#" class="btn btn-default" type="button">
													<span class="glyphicon glyphicon-heart"></span> Add to
													Wishlist
												</button>
											</div>
											<!-- End Item -->
										</div>
										<!-- End Carousel Inner -->
										<!-- Controls -->
										<a class="left carousel-control" href="#menCollection"
											role="button" data-slide="prev"> <span
											class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
											<span class="sr-only">Previous</span>
										</a> <a class="right carousel-control" href="#menCollection"
											role="button" data-slide="next"> <span
											class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
											<span class="sr-only">Next</span>
										</a>
									</div>
									<!-- /.carousel -->
									<li class="divider"></li>
									<li><a href="#">View all Collection <span
											class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Features</li>
									<li><a href="#">Auto Carousel</a></li>
									<li><a href="#">Carousel Control</a></li>
									<li><a href="#">Left & Right Navigation</a></li>
									<li><a href="#">Four Columns Grid</a></li>
									<li class="divider"></li>
									<li class="dropdown-header">Fonts</li>
									<li><a href="#">Glyphicon</a></li>
									<li><a href="#">Google Fonts</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Plus</li>
									<li><a href="#">Navbar Inverse</a></li>
									<li><a href="#">Pull Right Elements</a></li>
									<li><a href="#">Coloured Headers</a></li>
									<li><a href="#">Primary Buttons & Default</a></li>
								</ul>
							</li>
							<li class="col-sm-3">
								<ul>
									<li class="dropdown-header">Much more</li>
									<li><a href="#">Easy to Customize</a></li>
									<li><a href="#">Calls to action</a></li>
									<li><a href="#">Custom Fonts</a></li>
									<li><a href="#">Slide down on Hover</a></li>
								</ul>
							</li>
						</ul></li>
					<li><a href="#">Store locator</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">My
							account <span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Profile</a></li>
							<li><a href="#">Change Password</a></li>
							<li><a href="#">My Orders</a></li>
							<li class="divider"></li>
							<li><a href="#">Sign Out</a></li>
						</ul></li>
					<li><a href="#"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> My cart <span class="badge" style="margin-top: -3%;">5</span></a></li>
				</ul>
			</div>
			<!-- /.nav-collapse -->
		</nav>
	</div>
</body>
</html>
