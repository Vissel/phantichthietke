<%@page import="dao.UserDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dao.ConfigureDAOImpl"%>
<%@page import="model.Users"%>
<%@page import="model.Role"%>
<%@page import="model.CourseType"%>
<%@page import="model.Month"%>
<%@page import="model.Year"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/Backend/css/style.css">
<title>Tạothời khóa biểu</title>

<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet" id="main-stylesheet" data-version="1.1.0"
	href="../styles/shards-dashboards.1.1.0.min.css">
<link rel="stylesheet" href="../styles/extras.1.1.0.min.css">
<script async defer src="https://buttons.github.io/buttons.js"></script>
</head>
<body>
	<%
		ConfigureDAOImpl configure = new ConfigureDAOImpl();
		UserDAOImpl userDAO = new UserDAOImpl();
	%>
	<div class="row">
		<div class="col-sm-2">
			<jsp:include page="../menu.jsp"></jsp:include>
		</div>
		<main
			class="main-content col-lg-10 col-md-9 col-sm-12 p-0 offset-lg-2 offset-md-3">
		<jsp:include page="../slidebar.jsp"></jsp:include> <!-- / .main-navbar -->
		<div class="main-content-container container-fluid px-4">
			<div class="col-sm-10" style="color: black">
				<h1 style="margin-bottom: 50px; margin-top: 20px">Tạo Timetable</h1>

				<form action="<%=request.getContextPath()%>/AUDCourse" method="post"
					class="form-inline">
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Code:<span id="mandatory">*</span></label>
								<input type="text" class="form-control mb-2 mr-sm-2"
									style="width: 250px;" name="codeTimetable">
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Mã user: <span
									id="mandatory">*</span></label> <select class="form-control"
									id="mySelect" onchange="myFunction()"
									style="width: 250px; margin-bottom: 7px" name="typeUser">
									<%
										List<Users> listUser = userDAO.getAllUser();
										for (Users u : listUser) {
									%>
									<option value="<%=u.getName()%>"><%=u.getUserCode()%></option>
									<%
										}
									%>
								</select>
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Tên user:<span
									id="mandatory">*</span></label> <select class="form-control"
									style="width: 250px; margin-bottom: 7px" name="nameUser">
									<option id="demo"></option>
								</select>
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Tháng: <span id="mandatory">*</span></label>
								<select class="form-control"
									style="width: 250px; margin-bottom: 7px" name="typeCourse">
									<%
										for (Month month : configure.listMonth()) {
									%>
									<option value="<%=month.getMonthID()%>">
										<%
											month.getMonthName();
										%>
									</option>
									<%
										}
									%>
								</select> <span style="margin-left: 40px; padding-top: 10px;"> <label
									class="mb-2 mr-sm-2">Năm:<span id="mandatory">*</span></label>
									<select class="form-control"
									style="width: 250px; margin-bottom: 7px" name="typeCourse">
										<%
											for (Year year : configure.listYear()) {
										%>
										<option>
											<%
												year.getYearName();
											%>
										</option>
										<%
											}
										%>
								</select>
								</span>
							</div>

							<div class="card-body p-0 pb-3 text-center">
								<table class="table table-bordered table-sm"
									style="text-align: center">
								</table>
								
							</div>

							<p style="color: red">* Là những dữ liệu bắt buộc</p>
							<div class="button">
								<button id="button-cancel" type="submit" name="command"
									value="cancel">Hủy</button>
								<button id="button-createUser" type="submit" name="command"
									value="add">Thêm thời khóa biểu</button>
							</div>
						</div>
					</div>
				</form>

			</div>
		</div>
		</main>
	</div>
</body>
<script type="text/javascript">
	function myFunction() {
		var x = document.getElementById("mySelect");
		var i = x.selectedIndex;
		document.getElementById("demo").innerHTML = x.options[i].value;
	}

	$(document).ready(function() {
		$('##dtHorizontalExample').dataTable({
			"scrollX" : true
		});
	});
</script>
<style type="text/css">
.form-inline {
	margin-top: 10px
}

.form-inline .row .col-sm-12 .form-group label {
	position: absolute;
}

.form-inline .row .col-sm-12 .form-group input, select {
	margin-left: 170px;
}

.form-inline .row .col-sm-12 input {
	width: 300px;
}

.form-check-inline {
	position: relative;
}

#mandatory {
	color: red; table { border-collapse : collapse;
	border-spacing: 0;
	width: 100%;
	border: 1px solid #ddd;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}
}
</style>
</html>