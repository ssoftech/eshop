
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="Bean.*, java.sql.*,java.util.*"%>
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

<link rel="stylesheet" href="css1/styleCheckbox.css" type="text/css">
<script>
	/* LEFT MENU PANEL SCRIPT */
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

/* MEN ITEMS BANNER CSS */
#MenBanner .carousel-indicators li {
	background-color: silver;
	border: 1px solid silver;
}

#MenBanner .carousel-indicators .active {
	background-color: #5f8fe1;
	border: 1px solid #5f8fe1;
}

.border-right {
	border-right: 1px solid #ddd;
}
</style>

</head>
<body>
	<!-- HEADER -->
	<%@include file="cxHeader1.jsp"%>

	<!-- Carousel Slider For Banner -->
	<div id="MenBanner" class="container-fluid"
		style="height: 325px; overflow: hidden;">
		<div class="row">
			<div id="carousel-example-generic"
				class="carousel slide col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1"
				data-ride="carousel" data-interval="2000"
				style="border: 1px solid black;">
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
		</div>
	</div>
	<hr style="border: 1px solid #b2a4a4;">

	<!-- MEN PAGE CONTENT -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-3 border-right">
				<div class="panel-group" id="accordion">
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background-color: red; color: white;">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne" aria-expanded="false"
									aria-controls="collapseOne"> BRAND </a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body"
								style="max-height: 280px; overflow: auto; overflow-x: hidden; border: 1px solid #e1d1d1; border-top: none;">
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>ADIDAS
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>BLUEMARINE
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>CALVIN
										KLEIN
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>DOLCE
										& GABBANA
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>GORGIO
										ARMANI
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>GUCCI
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>LACOSTE
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>LEVI'S
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>POLO
										RALPH LAUREN
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>PUMA
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>RIVIERA
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>SPYKAR
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background-color: red; color: white;">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseTwo"> STYLE </a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body"
								style="max-height: 160px; overflow: auto; overflow-x: hidden; border: 1px solid #e1d1d1; border-top: none;">
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>SOLID
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>CHECKED
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>PRINTED
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>STRIPED
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>WASHED
									</label>
								</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background-color: red; color: white;">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseThree"> PRICE </a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body"
								style="max-height: 160px; overflow: auto; overflow-x: hidden; border: 1px solid #e1d1d1; border-top: none;">
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>BELOW
										1000
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>1000-1499
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>1500-1999
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>2000-2499
									</label>
								</div>
								<div class="checkbox">
									<label> <input type="checkbox" value=""> <span
										class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>ABOVE
										2500
									</label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- MAIN PAGE THUMBNAILS -->
			<div class="col-xs-12 col-sm-8 col-md-9"
				style="border: 1px solid #ddd; min-height: 300px;">
				<div class="row">
					
					<% String type = request.getParameter("Type");
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
						%>
						
						<%
							for (int i = 1; i <= 3; i++)
								{
                                  %>
                                  <div class="col-xs-6 col-sm-4 col-md-4">
                                  <%    
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
						%>
						<div class="thumbnail">
						
						           <a 
										href="MensItemsNxt.jsp?Pid=<%=product_id%> &Category=<%=category%> &Price=<%=price%> &Colorname=<%=Colorname%> &Filename=<%=Filename%>">
											<img src="Image?pid=<%=product_id%>" style="height: 350px; width: 250px;"></img>
									</a>
									
									<div class="caption">
									<p style="font-size: medium;">PRODUCT NAME</p>
									<p><%=Tagline%></p>
									<p><i
										class="fa fa-inr"></i>&nbsp;<%=price%></p>
										<p>
									<a href="#" class="btn btn-primary" role="button"><span
										class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>Add
										to Cart</a> <a href="#" class="btn btn-warning pull-right"
										role="button"><i class="fa fa-shopping-bag"></i> Buy Now</a>
								</p>
									</div>
									
						</div>
						
						
					
					
					<%
							}
								}
									}
									else
									{
										status = false;
										break;
									}
                                  %>
                                  </div>
                                  <%
								}
					
						
						%>
					
					   <% 	
						}
						%>
				
				</div>
			</div>
		</div>
	</div>

	<!-- FOOTER -->
	<%@include file="cxFooter1.jsp"%>
</body>
</html>