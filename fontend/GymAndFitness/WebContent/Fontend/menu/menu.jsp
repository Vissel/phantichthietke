<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@page import="model.Account" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800"
	rel="stylesheet">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/Fontend/css/bootstrap.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/Fontend/css/animate.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/Fontend/css/owl.carousel.min.css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/Fontend/css/magnific-popup.css">


<link rel="stylesheet"
	href="<%=request.getContextPath()%>/Fontend/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/Fontend/fonts/fontawesome/css/font-awesome.min.css">

<!-- Theme Style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/Fontend/css/style.css">
</head>
<body>
	<header role="banner"> <nav
		class="navbar navbar-expand-md navbar-dark bg-dark">
	<div class="container">
		<a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">Heal<span>thy</span>

		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExample05" aria-controls="navbarsExample05"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExample05">
			<ul class="navbar-nav mr-auto pl-lg-5 pl-0">
				<li style="margin-left: 10px;" class="nav-item"><a
					class="nav-link active"
					href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
				<li class="nav-item" style="margin-left: 5px;"><a
					class="nav-link"
					href="<%=request.getContextPath()%>/Fontend/about/about1.jsp">About</a>
				</li>
				<li class="nav-item dropdown" style="margin-left: 5px;"><a
					class="nav-link dropdown-toggle"
					href="<%=request.getContextPath()%>/Fontend/product/shop.jsp"
					id="dropdown04">Shop</a>
					<div class="dropdown-menu" aria-labelledby="dropdown04">
						<a class="dropdown-item"
							href="<%=request.getContextPath()%>/Fontend/product/product_detail.jsp">Product
							detail</a> <a class="dropdown-item" href="services.html">Shopping
							Cart</a> <a class="dropdown-item" href="services.html">Check out</a>
						<a class="dropdown-item" href="services.html">Order Complete</a>
					</div>
				<li class="nav-item" style="margin-left: 5px;"><a
					class="nav-link"
					href="<%=request.getContextPath()%>/Fontend/news/news.jsp">News</a>
				</li>
				<li class="nav-item" style="margin-left: 5px;"><a
					class="nav-link"
					href="<%=request.getContextPath()%>/Fontend/schedule/schedule.jsp">Schedule</a>
				</li>
				<!--  <li class="nav-item" style=" margin-left: 5px;">
                <a class="nav-link" href="<%=request.getContextPath()%>/Fontend/product/buyProduct1.jsp">Product</a>
              </li> -->

              <li class="nav-item" style=" margin-left: 5px; ">
                <a class="nav-link" href="<%=request.getContextPath()%>/Fontend/notification/notification.jsp">Notification</a>
              </li>
              <li class="nav-item" style=" margin-left: 5px;">
                <a class="nav-link" href="<%=request.getContextPath()%>/Fontend/contact/contact.jsp">Contact</a>
              </li>
              
				
			</ul>

			

             <ul class="navbar-nav ml-auto">
				<li class="nav-item cta-btn"><a class="nav-link"
					href="/Fontend/login/css_Login/sign_Up.jsp">Become
						a member</a></li>
 
			
  <!-- loader -->
  
  

 <%if(session != null){
		Account account = (Account) session.getAttribute("account");
		if(account != null){	
		%>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle text-nowrap px-3"
					data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
					aria-expanded="false" style="padding: 0"> <img
						class="user-avatar rounded-circle mr-2"
						src="<%=request.getContextPath() %>/Backend/images/avatars/0.jpg"
						alt="User Avatar" height="50px" width="50px"> <span
						class="d-none d-md-inline-block"><%=account.getUsername() %></span>
				</a>
					<div class="dropdown-menu dropdown-menu-small">
						<a class="dropdown-item" href="#"> <i class="material-icons">&#xE7FD;</i>
							Profile
						</a> <a class="dropdown-item text-danger"
							href="<%=request.getContextPath()%>/Login?command=logout"> <i
							class="material-icons text-danger">&#xE879;</i> Logout
						</a>
					</div></li>
<%}else { %>
				<li class="nav-item cta-btn">
					<a  style="background:#29aaaa" class="nav-link" href="<%=request.getContextPath()%>/Login_v3/login.jsp">Login</a>

				</li>
				<%}} %>
			</ul>

		</div>


	</div>

	</nav> </header>
	<!-- loader -->


</body>
</html>