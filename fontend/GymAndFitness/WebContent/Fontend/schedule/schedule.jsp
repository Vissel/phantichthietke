<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>





<style>

/* Add a black background color to the top navigation bar */
.topnav {
	margin-top: 67px;
	position: fixed;
	margin-left: 800px;
	z-index: 10000;
	width: auto;
}

/* Style the links inside the navigation bar */
.topnav a {
	float: left;
	display: block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
	background-color: black;
	color: black;
}

/* Style the "active" element to highlight the current page */
.topnav a.active {
	background-color: #2196F3;
	color: white;
}

/* Style the search box inside the navigation bar */
.topnav input[type=text] {
	float: right;
	padding: 6px;
	border: none;
	margin-top: 8px;
	margin-right: 16px;
	font-size: 15px;
	width: 500px;
}

/* When the screen is less than 600px wide, stack the links and the search field vertically instead of horizontally */
@media screen and (max-width: 600px) {
	.topnav a, .topnav input[type=text] {
		float: none;
		display: block;
		text-align: left;
		width: 100%;
		margin: 0;
		padding: 14px;
	}
	.topnav input[type=text] {
		border: 1px solid #ccc;
	}
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Schedule</title>
</head>
<body>
	<%@include file="/Fontend/menu/menu.jsp"%>

<!-- 	<div class="topnav">

		<input type="text" placeholder="Search.."> <img
			style="width: 10%; margin-left: 430px; margin-top: 15px; position: absolute;"
			alt="" src="<%=request.getContextPath()%>/Fontend/img/iconsearch.jpg">
	</div> -->
	<section style="z-index:-2" class="section bg-light element-animate">

	<div class="clearfix mb-5 pb-5">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 text-center heading-wrap">
					<h2>Our Schedule</h2>
					<span class="back-text-dark">Schedule</span>
				</div>
			</div>
		</div>
	</div>

	<div class="container">

		<div class="row no-gutters">
			<div class="col-md-6">
				<div class="sched d-block d-lg-flex">
					<div class="bg-image order-2"
						style="background-image: url('<%=request.getContextPath()%>/Fontend/img/gym4.jpg');"></div>
					<div class="text order-1">
						<h3>Khóa học 1</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
							Architecto illo delectus...</p>
						<p class="sched-time">
							<span><span class="fa fa-clock-o"></span> 5:30 PM</span> <br>
							<span><span class="fa fa-calendar"></span> April 22, 2018</span>
							<br>
						</p>
						<p>
							<a href="<%=request.getContextPath()%>/Fontend/schedule/schedule_detail.jsp" class="btn btn-primary btn-sm">Join from
								150.000vnd</a>
						</p>

					</div>

				</div>

				<div class="sched d-block d-lg-flex">
					<div class="bg-image"
						style="background-image: url('<%=request.getContextPath()%>/Fontend/img/gym2.jpg');"></div>
					<div class="text">
						<h3>Khóa học 2</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
							Architecto illo delectus...</p>
						<p class="sched-time">
							<span><span class="fa fa-clock-o"></span> 5:30 PM</span> <br>
							<span><span class="fa fa-calendar"></span> April 22, 2018</span>
							<br>
						</p>
						<p>
							<a href="<%=request.getContextPath()%>/Fontend/schedule/schedule_detail.jsp" class="btn btn-primary btn-sm">Join from
								150.000vnd</a>
						</p>

					</div>

				</div>

			</div>

			<div class="col-md-6">
				<div class="sched d-block d-lg-flex">
					<div class="bg-image order-2"
						style="background-image: url('<%=request.getContextPath()%>/Fontend/img/gym3.jpg');"></div>
					<div class="text order-1">
						<h3>Khóa học 3</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
							Architecto illo delectus...</p>
						<p class="sched-time">
							<span><span class="fa fa-clock-o"></span> 5:30 PM</span> <br>
							<span><span class="fa fa-calendar"></span> April 22, 2018</span>
							<br>
						</p>
						<p>
							<a href="<%=request.getContextPath()%>/Fontend/schedule/schedule_detail.jsp" class="btn btn-primary btn-sm">Join from
								150.000vnd</a>
						</p>

					</div>

				</div>

				<div class="sched d-block d-lg-flex">
					<div class="bg-image"
						style="background-image: url('<%=request.getContextPath()%>/Fontend/img/gym5.jpg');"></div>
					<div class="text">
						<h3>Khóa học 4</h3>
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
							Architecto illo delectus...</p>
						<p class="sched-time">
							<span><span class="fa fa-clock-o"></span> 5:30 PM</span> <br>
							<span><span class="fa fa-calendar"></span> April 22, 2018</span>
							<br>
						</p>
						<p>
							<a href="<%=request.getContextPath()%>/Fontend/schedule/schedule_detail.jsp" class="btn btn-primary btn-sm">Join from
								150.000vnd</a>
						</p>

					</div>

				</div>

			</div>
		</div>


	</div>
	</section>
	<!-- .section -->

    
     <script src="<%=request.getContextPath()%>/Fontend/js/jquery-3.2.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/Fontend/js/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/Fontend/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/Fontend/js/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath()%>/Fontend/js/jquery.waypoints.min.js"></script>

    <script src="<%=request.getContextPath()%>/Fontend/js/jquery.magnific-popup.min.js"></script>
    <script src="<%=request.getContextPath()%>/Fontend/js/magnific-popup-options.js"></script>
    

    <script src="<%=request.getContextPath()%>/Fontend/js/main.js"></script>


   








<%@include file="/Fontend/footer/footer.jsp"%>
</body>
</html>