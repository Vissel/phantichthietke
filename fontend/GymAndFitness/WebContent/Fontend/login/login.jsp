<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="login.css" />
<link rel="stylesheet" href="util.css" />

<title>Login</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>

	<div class="background"
		style="background-image: url('../img/bg-01.jpg');">
		<div class="wrap-login100">
			<form class="form" method="post" action="<%=request.getContextPath()%>/LoginforShop?command=login">

				<img src="../img/user_128x117.png" class="logo"> 
				<br>
				 <span class="login" >LOG IN </span> 
				 <br> 
				 <input type="text"
					placeholder="username" class="username" id="username"
					autocomplete="off"> 
					<br> <br>
					<input type="password" placeholder="password" class="password"
					id="password"> 
					<br> <br>
				<div class="contact100-form-checkbox">
					<input class="input-checkbox100" id="ckb1" type="checkbox"
						name="remember-me"> <label class="label-checkbox100"
						for="ckb1"> Remember me </label>
				</div>
				<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">
							Đăng nhập
						</button>
					</div>
				<div class="text-center p-t-90">
					<a class="txt1" href="<%=request.getContextPath()%>/Fontend/login/forgot_P.jsp"> Forgot Password? </a>
				</div>
				<div class="text-center p-t-91">
					<a class="txt1" href="<%=request.getContextPath()%>/Fontend/login/css_Login/sign_Up.jsp"> Sign Up </a>
					<br>
					<a class="txt1" href="<%=request.getContextPath()%>/Fontend/index.jsp"> Come back </a>
				</div>
				






			</form>
		</div>
	</div>
	


</body>
</html>