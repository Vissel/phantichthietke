<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dao.ConfigureDAOImpl"%>
<%@page import="model.Users"%>
<%@page import="model.CourseType"%>
<%@page import="model.City"%>
<%@page import="model.Town"%>
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

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/Backend/css/style.css">
<meta charset="UTF-8">
<title>Tạo mới khóa học</title>

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
	<%ConfigureDAOImpl configure = new ConfigureDAOImpl(); %>
	<div class="row">
		<div class="col-sm-2">
			<jsp:include page="../menu.jsp"></jsp:include>
		</div>
		<main
			class="main-content col-lg-10 col-md-9 col-sm-12 p-0 offset-lg-2 offset-md-3">
		<jsp:include page="../slidebar.jsp"></jsp:include> <!-- / .main-navbar -->
		<div class="main-content-container container-fluid px-4">
			<div class="col-sm-10" style="color: black">
				<h1 style="margin-bottom: 50px; margin-top: 20px">Tạo khóa học</h1>

				<form action="<%=request.getContextPath()%>/AUDCourse"
					method="post" class="form-inline">
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Loại khóa học: <span
									id="mandatory">*</span></label> <select class="form-control"
									style="width: 250px; margin-bottom: 7px" name="typeCourse">
									<%for(CourseType type : configure.getAllCourseType()){ %>
										<option value="<%=type.getIdType()%>"><%=type.getNameCourse() %></option>
									<%} %> 
								</select>
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Code:<span id="mandatory">*</span></label>
								<input type="text" class="form-control mb-2 mr-sm-2"
									name="codeCourse">
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Tên khóa học:<span
									id="mandatory">*</span></label> <input type="text"
									class="form-control mb-2 mr-sm-2" name="nameCourse">
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Ngày bắt đầu:<span
									id="mandatory">*</span></label> <input type="date" name="startDate"
									class="form-control mb-2 mr-sm-2" width="400" />
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Ngày kết thúc:<span
									id="mandatory">*</span></label> <input type="date" name="endDate"
									class="form-control mb-2 mr-sm-2" width="400" />
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Đối tượng học:</label> <input
									type="text" class="form-control mb-2 mr-sm-2" name="actor">
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Số lượng học viên:</label> <input
									type="number" class="form-control mb-2 mr-sm-2" name="quantity">
							</div>
							<div class="form-group">
								<p style="margin-bottom: 0">Mô tả</p><br>
								<textarea rows="6" cols="75" name="description" class="form-control"></textarea>
							</div>
						</div>

						<div class="col-sm-6">
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Phòng học:</label> <select
									class="form-control" style="width: 250px; margin-bottom: 7px"
									name="room">
									<option value="P101">P101</option>
									<option value="P201">P201</option>
									<option value="P201">P202</option>
								</select>
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Tỉnh / TP:</label> <select
									class="form-control" style="width: 250px; margin-bottom: 7px"
									name="city">
									<%for(City city : configure.listCity()){ %>
									<option value="<%=city.getCityID()%>"><%=city.getCityName() %></option>
									<%} %>
								</select>
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Huyện / Quận :</label> <select
									class="form-control" style="width: 250px; margin-bottom: 7px"
									name="town">
									<%for(Town town : configure.listTown()){ %>
									<option value="<%=town.getTownID()%>"><%=town.getTownName() %></option>
									<%} %>
								</select>
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Địa chỉ:</label> <input type="text"
									class="form-control mb-2 mr-sm-2" name="address">
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Mã Huấn luyện viên:</label> <select
									class="form-control" style="width: 250px; margin-bottom: 7px"
									name="trainerCode">
									<%for(Users u : configure.getAllTrainer()){ %>
									<option value="<%=u.getUserID() %>"><%=u.getUserCode() %></option>
									<%} %>
								</select>
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Tên huấn luyện viên:</label> <input
									type="text" class="form-control mb-2 mr-sm-2" 
									name="trainerName">
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Học phí:</label> <input
									type="number" class="form-control mb-2 mr-sm-2" name="fee"
									placeholder="Học phí">
							</div>
							<div class="form-group">
								<p style="margin-bottom: 0">Ghi chú</p><br>
								<textarea rows="6" cols="75" name="description" class="form-control"></textarea>
							</div>
						</div>
					</div>
					<p style="color: red">* Là những dữ liệu bắt buộc</p>
					<div class="button">
						<button id="button-cancel" type="submit" name="command"
							value="cancel">Hủy</button>
						<button id="button-createUser" type="submit" name="command"
							value="add">Thêm khóa học</button>
					</div>
				</form>

			</div>
		</div>
		</main>
	</div>
</body>
<style type="text/css">
.form-inline {
	margin-top: 10px
}

.form-inline .row .col-sm-6 .form-group label {
	position: absolute;
}

.form-inline .row .col-sm-6 .form-group input, select {
	margin-left: 170px;
}

.form-inline .row .col-sm-6 input {
	width: 300px;
}

.form-check-inline {
	position: relative;
}
</style>
</html>