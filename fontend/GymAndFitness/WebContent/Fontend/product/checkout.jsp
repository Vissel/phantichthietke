<%@page import="dao.Cart_DAO"%>
<%@page import="model.Cart"%>
<%@page import="dao.Product_DAO"%>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Check Out</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="" />

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700"
	rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">

<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.css">

<!-- Flexslider  -->
<link rel="stylesheet" href="css/flexslider.css">

<!-- Owl Carousel -->
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">

<!-- Date Picker -->
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<!-- Flaticons  -->
<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

<!-- Theme style  -->
<link rel="stylesheet" href="css/style.css">

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>

	<%@include file="/Fontend/menu/menu.jsp"%>
	<aside id="colorlib-hero" class="breadcrumbs">
	<div class="flexslider">
		<ul class="slides">
			<li style="background-image: url(images/cover-img-1.jpg);">
				<div class="overlay"></div>
				<div class="container-fluid">
					<div class="row">
						<div
							class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
							<div class="slider-text-inner text-center">
								<h1>Checkout</h1>
								<h2 class="bread">
									<span><a href="index.html">Home</a></span> <span><a
										href="cart.html">Shopping Cart</a></span> <span>Checkout</span>
								</h2>
							</div>
						</div>
					</div>
				</div>
			</li>
		</ul>
	</div>
	</aside>

	<div class="colorlib-shop">
		<div class="container">
			<div class="row row-pb-md">
				<div class="col-md-10 col-md-offset-1">
					<div class="process-wrap">
						<div class="process text-center active">
							<p>
								<span>01</span>
							</p>
							<h3>Shopping Cart</h3>
						</div>
						<div class="process text-center active">
							<p>
								<span>02</span>
							</p>
							<h3>Checkout</h3>
						</div>
						<div class="process text-center">
							<p>
								<span>03</span>
							</p>
							<h3>Order Complete</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-7">
					<form method="post" class="colorlib-form">
						<h2>Billing Details</h2>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<label for="country">Select Country</label>
									<div class="form-field">
										<i class="icon icon-arrow-down3"></i> <select name="people"
											id="people" class="form-control">
											<option value="#">Select country</option>
											<option value="#">Alaska</option>
											<option value="#">China</option>
											<option value="#">Japan</option>
											<option value="#">Korea</option>
											<option value="#">Philippines</option>
										</select>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-6">
									<label for="fname">First Name</label> <input type="text"
										id="fname" class="form-control" placeholder="Your firstname">
								</div>
								<div class="col-md-6">
									<label for="lname">Last Name</label> <input type="text"
										id="lname" class="form-control" placeholder="Your lastname">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label for="companyname">Company Name</label> <input
										type="text" id="companyname" class="form-control"
										placeholder="Company Name">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label for="fname">Address</label> <input type="text"
										id="address" class="form-control"
										placeholder="Enter Your Address">
								</div>
								<div class="form-group">
									<input type="text" id="address2" class="form-control"
										placeholder="Second Address">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label for="companyname">Town/City</label> <input type="text"
										id="towncity" class="form-control" placeholder="Town or City">
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-6">
									<label for="stateprovince">State/Province</label> <input
										type="text" id="fname" class="form-control"
										placeholder="State Province">
								</div>
								<div class="col-md-6">
									<label for="lname">Zip/Postal Code</label> <input type="text"
										id="zippostalcode" class="form-control"
										placeholder="Zip / Postal">
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-6">
									<label for="email">E-mail Address</label> <input type="text"
										id="email" class="form-control" placeholder="State Province">
								</div>
								<div class="col-md-6">
									<label for="Phone">Phone Number</label> <input type="text"
										id="zippostalcode" class="form-control" placeholder="">
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-12">
									<div class="radio">
										<label><input type="radio" name="optradio">Create
											an Account? </label> <label><input type="radio"
											name="optradio"> Ship to different address</label>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
				<%
		ArrayList<Product> cart= new Cart_DAO().getShopping_cart();
			
		
		%>
				<div class="col-md-5">
					<div class="cart-detail">
						<h2>Cart Total</h2>
						<ul>
							<li><span>Subtotal</span> <span>200</span>
								<ul>
									<li><span>1 x <%out.print(cart.get(1).getName()); %></span> <span><%out.print(cart.get(1).getPrice()); %></span></li>
									<li><span>1 x <%out.print(cart.get(1).getName()); %></span> <span><%out.print(cart.get(1).getPrice()); %></span></li>
								</ul></li>
							<li><span>Shipping</span> <span>0</span></li>
							
							<li><span>Order Total</span> <span>500000 VND</span></li>
						</ul>
					</div>
					<div class="cart-detail">
						<h2>Payment Method</h2>
						<div class="form-group">
							<div class="col-md-12">
								<div class="radio">
									<label><input type="radio" name="optradio">Direct
										Bank Tranfer</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<div class="radio">
									<label><input type="radio" name="optradio">Check
										Payment</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<div class="radio">
									<label><input type="radio" name="optradio">Paypal</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<div class="checkbox">
									<label><input type="checkbox" value="">I have
										read and accept the terms and conditions</label>
								</div>
							</div>
						</div>
					</div>
					
					<a href="complete.jsp" class="btn btn-primary">Place an order</a>
					
				</div>
				
			</div>
		</div>
	</div>

	<div class="colorlib-shop">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center colorlib-heading">
					<h2>
						<span>Recommended Products</span>
					</h2>
					<p>We love to tell our successful far far away, behind the word
						mountains, far from the countries Vokalia and Consonantia, there
						live the blind texts.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 text-center">
					<div class="product-entry">
						<div class="product-img"
							style="background-image: url(images/item-5.jpg);">
							<p class="tag">
								<span class="new">New</span>
							</p>
							<div class="cart">
								<p>
									<span class="addtocart"><a href="#"><i
											class="icon-shopping-cart"></i></a></span> <span><a
										href="product-detail.html"><i class="icon-eye"></i></a></span> <span><a
										href="#"><i class="icon-heart3"></i></a></span> <span><a
										href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
								</p>
							</div>
						</div>
						<div class="desc">
							<h3>
								<a href="shop.html">Floral Dress</a>
							</h3>
							<p class="price">
								<span>$300.00</span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 text-center">
					<div class="product-entry">
						<div class="product-img"
							style="background-image: url(images/item-6.jpg);">
							<p class="tag">
								<span class="new">New</span>
							</p>
							<div class="cart">
								<p>
									<span class="addtocart"><a href="#"><i
											class="icon-shopping-cart"></i></a></span> <span><a
										href="product-detail.html"><i class="icon-eye"></i></a></span> <span><a
										href="#"><i class="icon-heart3"></i></a></span> <span><a
										href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
								</p>
							</div>
						</div>
						<div class="desc">
							<h3>
								<a href="shop.html">Floral Dress</a>
							</h3>
							<p class="price">
								<span>$300.00</span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 text-center">
					<div class="product-entry">
						<div class="product-img"
							style="background-image: url(images/item-7.jpg);">
							<p class="tag">
								<span class="new">New</span>
							</p>
							<div class="cart">
								<p>
									<span class="addtocart"><a href="#"><i
											class="icon-shopping-cart"></i></a></span> <span><a
										href="product-detail.html"><i class="icon-eye"></i></a></span> <span><a
										href="#"><i class="icon-heart3"></i></a></span> <span><a
										href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
								</p>
							</div>
						</div>
						<div class="desc">
							<h3>
								<a href="shop.html">Floral Dress</a>
							</h3>
							<p class="price">
								<span>$300.00</span>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 text-center">
					<div class="product-entry">
						<div class="product-img"
							style="background-image: url(images/item-8.jpg);">
							<p class="tag">
								<span class="new">New</span>
							</p>
							<div class="cart">
								<p>
									<span class="addtocart"><a href="#"><i
											class="icon-shopping-cart"></i></a></span> <span><a
										href="product-detail.html"><i class="icon-eye"></i></a></span> <span><a
										href="#"><i class="icon-heart3"></i></a></span> <span><a
										href="add-to-wishlist.html"><i class="icon-bar-chart"></i></a></span>
								</p>
							</div>
						</div>
						<div class="desc">
							<h3>
								<a href="shop.html">Floral Dress</a>
							</h3>
							<p class="price">
								<span>$300.00</span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div id="colorlib-subscribe">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="col-md-6 text-center">
						<h2>
							<i class="icon-paperplane"></i>Sign Up for a Newsletter
						</h2>
					</div>
					<div class="col-md-6">
						<form class="form-inline qbstp-header-subscribe">
							<div class="row">
								<div class="col-md-12 col-md-offset-0">
									<div class="form-group">
										<input type="text" class="form-control" id="email"
											placeholder="Enter your email">
										<button type="submit" class="btn btn-primary">Subscribe</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>
</body>
</html>