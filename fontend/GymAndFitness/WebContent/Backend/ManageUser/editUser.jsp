
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dao.UserDAOImpl"%>
<%@page import="model.Users"%>
<%@page import="dao.ConfigureDAOImpl"%>
<%@page import="model.Role"%>
<%@page import="model.City"%>
<%@page import="model.Town"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
<title>Chỉnh sửa User</title>

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
	<div class="row">
		<div class="col-sm-2">
			<jsp:include page="../menu.jsp"></jsp:include>
		</div>
		<main
			class="main-content col-lg-10 col-md-9 col-sm-12 p-0 offset-lg-2 offset-md-3">
		<jsp:include page="../slidebar.jsp"></jsp:include> <!-- / .main-navbar -->
		<div class="main-content-container container-fluid px-4">
			<div class="col-sm-10" style="color: black">
				<h1 style="margin-bottom: 50px; margin-top: 20px">Chỉnh User</h1>
				<%
					UserDAOImpl dao = new UserDAOImpl();
					ConfigureDAOImpl configure = new ConfigureDAOImpl();
					String userID = (String) request.getParameter("userID");
					Users u = dao.getOneUser(userID);
				%>
				<form action="<%=request.getContextPath()%>/AUDUser" method="post"
					class="form-inline">
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="typeUser" class="mb-2 mr-sm-2">Loại user: <span
									id="mandatory">*</span></label> <select class="form-control"
									style="width: 250px; margin-bottom: 7px" name="typeUser">
									<%
										for (Role role : dao.getRole()) {
											if (role.getRoleID() == u.getRoleID()) {
									%>
									<option value="<%=role.getRoleID()%>" selected="selected"><%=role.getRoleName()%></option>
									<%
										} else {
									%>
									<option value="<%=role.getRoleID()%>"><%=role.getRoleName()%></option>
									<%
										}
										}
									%>
								</select>
							</div>
							<div class="form-group">
								<label for="id" class="mb-2 mr-sm-2">Code:<span
									id="mandatory">*</span></label> <input type="text"
									class="form-control mb-2 mr-sm-2" name="codeUser"
									value="<%=u.getUserCode()%>">
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Họ tên:<span id="mandatory">*</span></label>
								<input type="text" class="form-control mb-2 mr-sm-2"
									name="nameUser" value="<%=u.getName()%>">
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Ngày sinh:</label> <input
									type="date" name="dob" width="400" value="<%=u.getDob()%>"
									class="form-control mb-2 mr-sm-2" />
							</div>
							<div class="form-check-inline" style="margin: 15px 0 10px 0">
								<label class="mb-2 mr-sm-2">Giới tính: </label> <label
									class="form-check-label" style="margin-left: 80px"> <input
									type="radio" class="form-check-input" style="width: 50px"
									name="sex" <%if (u.getSex() == 1) {%> checked="checked" <%}%>>Nam
								</label> <label class="form-check-label" style="margin-left: 50px">
									<input type="radio" class="form-check-input"
									style="width: 50px" name="sex" <%if (u.getSex() == 2) {%>
									checked="checked" <%}%>>Nữ
								</label>
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Số điện thoại:<span
									id="mandatory">*</span></label> <input type="number"
									class="form-control mb-2 mr-sm-2" name="phone"
									value="<%=u.getPhone()%>">
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Email:<span id="mandatory">*</span></label>
								<input type="text" class="form-control mb-2 mr-sm-2"
									name="email" value="<%=u.getEmail()%>">
							</div>
							<div class="form-group">
								<label for="typeUser" class="mb-2 mr-sm-2">Tỉnh / TP:</label> <select
									class="form-control" style="width: 250px; margin-bottom: 7px"
									name="city">
									<%for(City city : configure.listCity()){
										if(city.getCityID() == u.getCity()){%>
									<option value="<%=city.getCityID()%>" selected="selected"><%=city.getCityName() %></option>
									<%}else{ %>
									<option value="<%=city.getCityID()%>" ><%=city.getCityName() %></option>
									<%}
									}%>
								</select>
							</div>
							<div class="form-group">
								<label for="typeUser" class="mb-2 mr-sm-2">Huyện / Quận
									:</label> <select class="form-control"
									style="width: 250px; margin-bottom: 7px" name="town">
									<%for(Town town : configure.listTown()){
										if(town.getTownID() == u.getTown()){%>
									<option value="<%=town.getTownID()%>" selected="selected"><%=town.getTownName() %></option>
									<%}else{ %>
									<option value="<%=town.getTownID()%>" ><%=town.getTownName() %></option>
									<%}} %>
								</select>
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Địa chỉ:</label> <input type="text"
									class="form-control mb-2 mr-sm-2" name="address"
									value="<%=u.getAddress()%>">
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Tài khoản ngân hàng:</label> <input
									type="text" class="form-control mb-2 mr-sm-2"
									name="bankAccount" value="<%=u.getBankAccount()%>">
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Tên ngân hàng:</label> <input
									type="text" class="form-control mb-2 mr-sm-2" name="bankName"
									value="<%=u.getBankName()%>">
							</div>
						</div>

						<div class="col-sm-6">
							<h4 style="text-align: center;">Thông tin khóa học</h4>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Mã khóa học:</label> <select
									class="form-control" style="width: 250px; margin-bottom: 7px"
									name="courseCode">
									<option></option>
									<option>GYM1AH</option>
									<option>YOGA1BA</option>
									<option>DANCECC1</option>
								</select>
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Tên Khóa học:</label> <input
									type="text" class="form-control mb-2 mr-sm-2" name="courseName"
									placeholder="Tên khóa học">
							</div>
							<div class="form-group"
								style="margin-top: 10px; margin-bottom: 10px">
								<label class="mb-2 mr-sm-2">Thời gian bắt đầu:</label> <input
									class="form-control mb-2 mr-sm-2" type="date" name="startDate" />
							</div>
							<div class="form-group"
								style="margin-top: 10px; margin-bottom: 10px">
								<label class="mb-2 mr-sm-2">Thời gian kết thúc:</label> <input
									class="form-control mb-2 mr-sm-2" type="date" name="endDate" />
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Mã Huấn luyện viên:</label> <select
									class="form-control" style="width: 250px; margin-bottom: 7px"
									name="trainerCode">
									<option>HLV001</option>
									<option>HLV101</option>
									<option>HVL201</option>
								</select>
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Tên huấn luyện viên:</label> <input
									type="text" class="form-control mb-2 mr-sm-2"
									name="trainerName" placeholder="Tên huấn luyện viên">
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Học phí:</label> <input
									type="number" class="form-control mb-2 mr-sm-2" name="fee"
									placeholder="Học phí">
							</div>
							<div class="form-group">
								<p style="margin-bottom: 0">Ghi chú</p>
								<br>
								<textarea rows="6" cols="75" name="description"
									class="form-control"></textarea>
							</div>
							<input type="hidden" name="userID" value="<%=u.getUserID()%>">
						</div>
					</div>
					<p style="color: red">* Là những dữ liệu bắt buộc</p>
					<div class="button">
						<a href=""><button id="button-cancel" type="submit"
								name="command" value="cancel">Hủy</button></a> <a href=""><button
								id="button-createUser" type="submit" name="command"
								value="update">Cập nhật</button></a>
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