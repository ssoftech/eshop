
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="Bean.*,java.sql.*,java.util.Calendar, java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Online Shopping: Mens</title>
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

<script type="text/javascript">
	//Stop carousel
	$('#article-photo-carousel').carousel({
		interval : false
	});
</script>

<script>
	$(document).ready(function() {
		$('#myCarouselSim').carousel({
			interval : 5000
		})
	});
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

/* Main carousel style */
#article-photo-carousel.carousel {
	width: 600px;
}

/* Indicators list style */
.article-slide .carousel-indicators {
	bottom: 0;
	left: 0;
	margin-left: 5px;
	width: 100%;
}
/* Indicators list style */
.article-slide .carousel-indicators li {
	border: medium none;
	border-radius: 0;
	float: left;
	height: 54px;
	margin-bottom: 5px;
	margin-left: 0;
	margin-right: 5px !important;
	margin-top: 0;
	width: 100px;
}
/* Indicators images style */
.article-slide .carousel-indicators img {
	border: 2px solid #FFFFFF;
	float: left;
	height: 54px;
	left: 0;
	width: 100px;
}
/* Indicators active image style */
.article-slide .carousel-indicators .active img {
	border: 2px solid #428BCA;
	opacity: 0.7;
}
/* Similar Products Carousel Indicators */
#myCarouselSim .carousel-indicators li {
	background-color: silver;
	border: 1px solid silver;
}

#myCarouselSim .carousel-indicators .active {
	background-color: #5f8fe1;
	border: 1px solid #5f8fe1;
}
</style>

</head>
<body>
	<!-- HEADER -->
	<%@include file="cxHeader1.jsp"%>

	<!-- PRODUCT IMAGE & DETAILS -->
	<div class="container-fluid">
	   
	       <%
				String category = request.getParameter("Category");
				Double price = Double.parseDouble(request.getParameter("Price"));
				String filename = request.getParameter("Filename");
				String Color = request.getParameter("Colorname");
				System.out.println("Color is"+Color);
				String Product_id = request.getParameter("Pid");
				System.out.println("Product_Id is"+Product_id);
			%>
		<div class="row">
			<div class="col-xs-12 col-sm-7 col-md-6 col-md-offset-1">
				<!-- MAIN IMAGE CAROUSEL START -->
				<div class="carousel slide article-slide"
					id="article-photo-carousel">

					<!-- Wrapper for slides -->
					
					<%
					String[] filee=new String[1]; 
					int i=0;
					Connection con=Conct.conect();
				    String sql="Select Filename from retailer_imageinsrt_men where Product_Id=? And ColorName=? And FileName!=?";			
				    PreparedStatement ps=con.prepareStatement(sql);
				    ps.setString(1, Product_id);
				    ps.setString(2, Color);
				    ps.setString(3, filename);
				    
				    ResultSet rs=ps.executeQuery();
				    
				    while(rs.next())
				    {
				    	filee[i]=rs.getString(1);
				    	System.out.println(filee[i]);
				    	i++;
				    }
					
				
					%>
					 <div class="carousel-inner cont-slider">
                        
						<div class="item active">
						<img alt="" src="Image_Small?pid=<%=Product_id%> &FileName=<%=filename%>">
						</div>
						<% 
						for(int j=0; j<filee.length;j++)
						{
						%>
						<div class="item">
						<img  alt="" src="Image_Small?pid=<%=Product_id%> &FileName=<%=filee[j]%>">
						</div>
						<% 	
						}
						%>
					</div>
					<!-- Indicators -->
					<ol class="carousel-indicators" style="margin-left: 6%;">
					
					<%
						/* 	Connection con3 = Conct.conect();
							String sql3 = "Select DISTINCT Filename from retailer_imageinsrt_men where Product_Id=? AND Filename!=? AND ColorName=?";
							PreparedStatement ps3 = con3.prepareStatement(sql3);
							ps3.setString(1, Product_id);
							ps3.setString(2, filename);
							ps3.setString(3, Color);
							ResultSet rs3 = ps3.executeQuery();

							while (rs3.next()) {
								String file = rs3.getString("Filename"); */
						%>
						<li class="active" data-slide-to="0"
							data-target="#article-photo-carousel"><a href="MenShirtsRed1.jsp?Pid=<%=Product_id%> &Category=<%=category%> &Filename=<%=filename%> &Price=<%=price%> &Colorname=<%=Color%>"><img src="Image_Small?pid=<%=Product_id%> &FileName=<%=filename%>" style="border-color: white"></a></li>
						<% 
						for(int k=0; k<filee.length;k++)
						{
							System.out.println(filee.length);
							System.out.println(k);
						%>
						<li data-slide-to="<%=k+1%>" data-target="#article-photo-carousel"><a href="MenShirtsRed1.jsp?Pid=<%=Product_id%> &Category=<%=category%> &Filename=<%=filee[k]%> &Price=<%=price%> &Colorname=<%=Color%>"><img src="Image_Small?pid=<%=Product_id%> &Filename=<%= filee[k] %>&"></a>	
						<% 	
						}
						%>
						
						
						<%
							/* } */
						%>
						
					</ol>
				</div>
				<!-- MAIN IMAGE CAROUSEL END -->
			</div>
			<div class="col-xs-12 col-sm-5 col-md-4">
				<!-- PRODUCT DETAIL START -->
				<div class="jumbotron" style="padding: 5%;">
					<h3 style="margin-top: 0%;">PRODUCT NAME</h3>
					<h5>Tagline</h5>
					<hr style="margin-top: 2%;">
					<h4>Retailer Name</h4>
					<hr style="margin-top: 2%;">
					<h5>
						<i class="fa fa-inr fa-lg"></i> PRICE
					</h5>
					<hr style="margin-top: 2%;">
					<h4>COLORS AVAILABLE</h4>
					<hr style="margin-top: 2%;">
					<h4>SIZES AVAILABLE</h4>
					<label class="radio-inline"><input type="radio"
						name="optradio">Sizes</label>
					<hr style="margin-top: 2%;">
					<button type="button" class="btn btn-success btn-block btn-lg">
						<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
						ADD TO CART
					</button>
				</div>
				<!-- PRODUCT DETAIL END -->
			</div>
		</div>
		<hr>
		<div class="row">
			<div
				class="col-xs-12 col-sm-6 col-md-7 col-sm-offset-1 col-md-offset-1"
				style="min-height: 300px;">
				<div class="jumbotron"
					style="text-align: center; padding-top: 5%; padding-bottom: 5%;">
					<h3 style="text-decoration: underline;">PRODUCT &nbsp; INFO:</h3>
					<h4 style="margin-top: 0%;">TAGLINE</h4>
					<hr>
					<div class="row">
						<p class="col-xs-3 col-sm-3 col-md-3 pull-left"
							style="font-size: large;">BRAND</p>
						<p class="col-xs-1 col-sm-1 col-md-1">:</p>
						<p class="col-xs-8 col-sm-8 col-md-8 pull-right"
							style="font-size: large;">BRAND NAME</p>
					</div>
					<hr style="margin-top: 0%;">
					<div class="row">
						<p class="col-xs-3 col-sm-3 col-md-3 pull-left"
							style="font-size: large;">OCCASSION</p>
						<p class="col-xs-1 col-sm-1 col-md-1">:</p>
						<p class="col-xs-8 col-sm-8 col-md-8 pull-right"
							style="font-size: large;">FORMALS</p>
					</div>
					<hr style="margin-top: 0%;">
					<div class="row">
						<p class="col-xs-3 col-sm-3 col-md-3 pull-left"
							style="font-size: large;">TYPE</p>
						<p class="col-xs-1 col-sm-1 col-md-1">:</p>
						<p class="col-xs-8 col-sm-8 col-md-8 pull-right"
							style="font-size: large;">SHIRT</p>
					</div>
					<hr style="margin-top: 0%;">
					<div class="row">
						<p class="col-xs-3 col-sm-3 col-md-3 pull-left"
							style="font-size: large;">PRICE</p>
						<p class="col-xs-1 col-sm-1 col-md-1">:</p>
						<p class="col-xs-8 col-sm-8 col-md-8 pull-right"
							style="font-size: large;">
							<i class="fa fa-inr"></i>&nbsp; MONEY.00
						</p>
					</div>
					<hr style="margin-top: 0%;">
					<div class="row">
						<p class="col-xs-3 col-sm-3 col-md-3 pull-left"
							style="font-size: large;">FITTINGS</p>
						<p class="col-xs-1 col-sm-1 col-md-1">:</p>
						<p class="col-xs-8 col-sm-8 col-md-8 pull-right"
							style="font-size: large;">REGULAR</p>
					</div>
					<hr style="margin-top: 0%;">
					<div class="row">
						<p class="col-xs-3 col-sm-3 col-md-3 pull-left"
							style="font-size: large;">ABOUT</p>
						<p class="col-xs-1 col-sm-1 col-md-1">:</p>
						<p class="col-xs-8 col-sm-8 col-md-8 pull-right"
							style="font-size: large;">ABRA-KA-DABRA ALAKA-ZOOM
							ABRA-KA-DABRA ALAKA-ZOOM ABRA-KA-DABRA ALAKA-ZOOM</p>
					</div>
					<hr style="margin-top: 0%;">
					<p style="font-size: large;">WRITE A REVIEW FOR BRAND_NAME</p>
					<span><a href="#" class="btn btn-info btn-block btn-lg"
						data-toggle="modal" data-target="#myModalFeed"
						data-backdrop="static" data-keyboard="false">FEEDBACK / REVIEW</a></span>
				</div>
			</div>
			<div class="modal fade" id="myModalFeed" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" style="margin-top: 5%;">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close" data-toggle="tooltip" data-placement="left"
								title="Close">
								<span aria-hidden="true"><i class="fa fa-times"></i></span>
							</button>
						</div>
						<div class="modal-body">
							<div class="well">
								<form class="form-horizontal" id="feedback-form" action=""
									method="post" role="form">
									<div class="form-group">
										<label class="control-label col-sm-3" for="email"
											style="text-align: left;">Email:</label>
										<div class="col-sm-9">
											<input type="email" class="form-control" id="email"
												name="usermail" placeholder="Enter email">
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-sm-3" for="pwd"
											style="text-align: left;">Password:</label>
										<div class="col-sm-9">
											<input type="password" class="form-control" id="password"
												name="password" placeholder="Enter password">
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-3"
				style="border: 1px solid black; min-height: 500px; padding: 0%;">
				<div class="jumbotron" style="padding: 0.6%;">
					<p style="font-size: large;">
						5 More retailers have the same products. <a href="#">Show
							them?</a>
					</p>
					<hr>
					<h4 style="text-align: center; text-decoration: underline;">SIMILAR
						&nbsp; ITEMS</h4>
					<!-- WELL FOR SIMILAR PRODUCTS -->
					<div class="well">
						<div id="myCarouselSim" class="carousel slide">

							<ol class="carousel-indicators" style="bottom: -4%;">
								<li data-target="#myCarouselSim" data-slide-to="0"
									class="active"></li>
								<li data-target="#myCarouselSim" data-slide-to="1"></li>
								<li data-target="#myCarouselSim" data-slide-to="2"></li>
								<li data-target="#myCarouselSim" data-slide-to="3"></li>
								<li data-target="#myCarouselSim" data-slide-to="4"></li>
							</ol>

							<!-- Carousel items -->
							<div class="carousel-inner">

								<div class="item active">
									<div class="row-fluid">
										<div class="span3">
											<a href="#x" class="thumbnail" style="text-decoration: none;"><img
												src="http://placehold.it/250x250" alt="Image"
												style="max-width: 100%;" />
												<div class="caption">
													<h3>GIORGIO-ARMANI</h3>
													<p>I'm a Koala</p>
													<p>I'm not your Armani worth 8000 bucks</p>
													<div class="btn btn-primary btn-block" role="button">
														<span class="fa fa-binoculars" aria-hidden="true"></span>&nbsp;
														View Item
													</div>
												</div> </a>
										</div>
									</div>
									<!--/row-fluid-->
								</div>
								<!--/item-->

								<div class="item">
									<div class="row-fluid">
										<div class="span3">
											<a href="#x" class="thumbnail" style="text-decoration: none;"><img
												src="http://placehold.it/250x250" alt="Image"
												style="max-width: 100%;" />
												<div class="caption">
													<h3>GIORGIO-ARMANI</h3>
													<p>I'm a Koala</p>
													<p>I'm not your Armani worth 8000 bucks</p>
													<div class="btn btn-primary btn-block" role="button">
														<span class="fa fa-binoculars" aria-hidden="true"></span>&nbsp;
														View Item
													</div>
												</div> </a>
										</div>
									</div>
									<!--/row-fluid-->
								</div>
								<!--/item-->

								<div class="item">
									<div class="row-fluid">
										<div class="span3">
											<a href="#x" class="thumbnail" style="text-decoration: none;"><img
												src="http://placehold.it/250x250" alt="Image"
												style="max-width: 100%;" />
												<div class="caption">
													<h3>GIORGIO-ARMANI</h3>
													<p>I'm a Koala</p>
													<p>I'm not your Armani worth 8000 bucks</p>
													<div class="btn btn-primary btn-block" role="button">
														<span class="fa fa-binoculars" aria-hidden="true"></span>&nbsp;
														View Item
													</div>
												</div> </a>
										</div>
									</div>
									<!--/row-fluid-->
								</div>
								<!--/item-->

								<div class="item">
									<div class="row-fluid">
										<div class="span3">
											<a href="#x" class="thumbnail" style="text-decoration: none;"><img
												src="http://placehold.it/250x250" alt="Image"
												style="max-width: 100%;" />
												<div class="caption">
													<h3>GIORGIO-ARMANI</h3>
													<p>I'm a Koala</p>
													<p>I'm not your Armani worth 8000 bucks</p>
													<div class="btn btn-primary btn-block" role="button">
														<span class="fa fa-binoculars" aria-hidden="true"></span>&nbsp;
														View Item
													</div>
												</div> </a>
										</div>
									</div>
									<!--/row-fluid-->
								</div>
								<!--/item-->

								<div class="item">
									<div class="row-fluid">
										<div class="span3">
											<a href="#x" class="thumbnail" style="text-decoration: none;"><img
												src="http://placehold.it/250x250" alt="Image"
												style="max-width: 100%;" />
												<div class="caption">
													<h3>GIORGIO-ARMANI</h3>
													<p>I'm a Koala</p>
													<p>I'm not your Armani worth 8000 bucks</p>
													<div class="btn btn-primary btn-block" role="button">
														<span class="fa fa-binoculars" aria-hidden="true"></span>&nbsp;
														View Item
													</div>
												</div> </a>
										</div>
									</div>
									<!--/row-fluid-->
								</div>
								<!--/item-->

							</div>
							<!--/carousel-inner-->

							<a class="left carousel-control" href="#myCarouselSim"
								data-slide="prev">L</a> <a class="right carousel-control"
								href="#myCarouselSim" data-slide="next">R</a>
						</div>
						<!--/myCarouselSim-->

					</div>
					<!--/well-->
				</div>
			</div>
		</div> 
	</div>
</body>
</html>