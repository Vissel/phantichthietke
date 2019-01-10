<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dao.ScheduleDAOImpl"%>
<%@page import="dao.ConfigureDAOImpl"%>
<%@page import="model.Year"%>
<%@page import="model.Month"%>
<%@page import="model.Users"%>
<%@page import="model.Schedule"%>
<%@page import="model.ScheduleDetail"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
    <%@page import="model.Account" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<link rel="stylesheet"
	href="<%=request.getContextPath()%>/Backend/css/style.css">
<title>Danh sách lịch làm việc</title>

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
<%if(session != null){
		Account account = (Account) session.getAttribute("account");
		if(account != null && account.getUsername().equals("admin") && account.getPassword().equals("admin")){
		}else{
			response.sendRedirect(request.getContextPath()+"/Login_v3/login.jsp");
		}
	}
		%>
	<%
		ScheduleDAOImpl scheduleDAO = new ScheduleDAOImpl();
		ConfigureDAOImpl configure = new ConfigureDAOImpl();
	%>
	<div class="container-fluid" style="color: black">
		<div class="row">
			<!-- Main Sidebar -->
			<jsp:include page="../menu.jsp"></jsp:include>
			<!-- End Main Sidebar -->
			<main
				class="main-content col-lg-10 col-md-9 col-sm-12 p-0 offset-lg-2 offset-md-3">
			<jsp:include page="../slidebar.jsp"></jsp:include> <!-- / .main-navbar -->
			<div class="main-content-container container-fluid px-4">
				<!-- Page Header -->
				<div class="page-header row no-gutters py-4">
					<div class="col-12 col-sm-4 text-center text-sm-left mb-0">
						<h1 class="page-title">Quản lý lịch làm việc</h1>
					</div>
				</div>
				<!-- Default Light Table -->
				<div class="row">
					<div class="col">
						<div class="card card-small mb-4">
							<div class="card-header border-bottom">
								<a
									href="<%=request.getContextPath()%>/Backend/ManageSchedule/addTimetable.jsp"><button
										type="button" class="btn btn-warning"
										style="margin-bottom: 5px; font-size: 14px; color: white; border: bold;">Thêm
										lịch làm việc</button> </a>
								<div class="row">
									<div class="col-sm-4">
										<button type="button" class="btn btn-primary">Sao
											chép</button>
										<button type="button" class="btn btn-primary">Xuất ra
											excel</button>
										<button type="button" class="btn btn-primary">In</button>
									</div>
									<div class="col-sm-8">
										<form
											action="<%=request.getContextPath()%>/AUDSchedule?command=filter"
											method="post">
											<p>
												Lọc theo : <span> <select
													style="width: 146px; height: 30px" name="month">
														<%
															List<Month> listMonth = configure.listMonth();
															for (Month m : listMonth) {
														%>
														<option value="<%=m.getMonthName()%>">Tháng
															<%=m.getMonthName()%></option>
														<%
															}
														%>
												</select></span> <span> <select style="width: 146px; height: 30px"
													name="year">
														<%
															List<Year> listYear = configure.listYear();
															for (Year y : listYear) {
														%>

														<option value="<%=y.getYearName()%>"><%=y.getYearName()%></option>
														<%
															}
														%>
												</select></span> <span><button type="submit" class="btn btn-info">Lọc</button></span>
											</p>
										</form>
									</div>

								</div>

								<div class="card-body p-0 pb-3 text-center">
									<table class="table table-bordered table-sm"
										style="text-align: center">

										<%
											String message = (String) request.getAttribute("message");
											if (message != null && message.equals("filter")) {
												String month = (String) request.getAttribute("month");
												String year = (String) request.getAttribute("year");
										%>
										<thead>
											<tr>
												<th>No</th>
												<th>Mã user</th>
												<th>Tên</th>
												<th>Tổng số ngày luyện tập Tháng<%=month%></th>
												<th>Tổng số ngày nghỉ Tháng<%=month%></th>
												<th>Số ngày đã tập Tháng<%=month%></th>
												<th>Số ngày còn lại Tháng<%=month%></th>
												<th id="lineEnd"></th>
											</tr>
										</thead>
										<tbody>
											<%
												List<Users> list = scheduleDAO.getSchedule(Integer.parseInt(month), Integer.parseInt(year));
													int index = 0;
													for (Users u : list) {
														index++;
											%>
											<tr>
												<td><%=index%></td>
												<td><%=u.getUserCode()%></td>
												<td><%=u.getName()%></td>
												<td><%=u.getSchedule().getSum()%></td>
												<td><%=u.getSchedule().getDayOff() %></td>
												<td><%=u.getSchedule().getCount()%></td>
												<td><%=u.getSchedule().getSum() - u.getSchedule().getCount()%>
												<td id="lineEnd">
													<i class="fa fa-eye" style="font-size: 20px;color:green;"></i>
													<a
													href="<%=request.getContextPath()%>/Backend/ManageUser/editUser.jsp?userID=<%=u.getUserID()%>"><button
															type="button" class="btn btn-primary">Sửa</button></a>
												</td>
											</tr>
											<%
												}
											%>
										</tbody>
										<%
											} else {
										%>
										<thead>
											<tr>
												<th>No</th>
												<th>Mã user</th>
												<th>Tên</th>
												<th>Tổng số ngày luyện tập</th>
												<th>Tổng số ngày nghỉ</th>
												<th>Số ngày đã tập</th>
												<th>Số ngày còn lại</th>
												<th id="lineEnd"></th>
											</tr>
										</thead>
										<%
											}
										%>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</main>
		</div>
	</div>
</body>
<style type="text/css">
.row {
	margin-bottom: 10px;
	margin-top: 10px;
}

body {
	font-family: Arial;
	color: black;
	font-size: 14px
}

tbody tr td {
	color: black;
}

.table-sm thead tr th {
	background-color: #339999;
	color: #FFFF00;
	height: auto;
	padding:0 5px 0 5px;	
}
.table-sm thead tr #lineEnd {
padding:3px 1px 3px 1px;
width: 150px;
}
</style>

</html>