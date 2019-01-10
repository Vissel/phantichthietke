<%@page import="model.CourseType"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dao.CourseDAOImpl"%>
<%@page import="dao.ConfigureDAOImpl"%>
<%@page import="model.Course"%>
<%@page import="model.CourseType"%>
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
<title>Danh sách Course</title>

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
		String message = (String) request.getParameter("message");
		if (message != null) {
			switch (message) {
				case "add" :
	%>
	<script type="text/javascript">
 				alert('Thêm khóa học thành công');
 				</script>
	<%
		break;
				case "update" :
	%>
	<script type="text/javascript">
 				alert('Chỉnh sửa user thành công');
 				</script>
	<%
		break;
				case "delete" :
	%>
	<script type="text/javascript">
 				alert('Xóa user thành công');
 				</script>
	<%
		break;

				default :
					break;
			}
	%>

	<%
		}
	%>
	<%
		CourseDAOImpl dao = new CourseDAOImpl();
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
						<h1 class="page-title">Quản lý khóa học</h1>
					</div>
				</div>

				<!-- Default Light Table -->
				<div class="row">
					<div class="col">
						<div class="card card-small mb-4">
							<div class="card-header border-bottom">
								<a
									href="<%=request.getContextPath()%>/Backend/ManageCourse/addCourse.jsp"><button
										type="button" class="btn btn-warning"
										style="margin-bottom: 5px; font-size: 14px; color: white; border: bold;">Thêm
										khóa học</button></a>
								<div class="row">
									<div class="col-sm-4">
										<button type="button" class="btn btn-primary">Sao
											chép</button>
										<button type="button" class="btn btn-primary">Xuất ra
											excel</button>
										<button type="button" class="btn btn-primary">In</button>
									</div>
									<div class="col-sm-4">
										<form
											action="<%=request.getContextPath()%>/AUDCourse?command=filter"
											method="post">
											<p>
												Lọc theo : <span> <select
													style="width: 146px; height: 30px" name="typeCourse">
														<%
															for (CourseType type : configure.getAllCourseType()) {
														%>
														<option value="<%=type.getIdType()%>"><%=type.getNameCourse()%></option>
														<%
															}
														%>
												</select>
												</span> <span><button type="submit" class="btn btn-info">Lọc</button></span>
											</p>
										</form>
									</div>
									<div class="col-sm-4">
										<input type="text" width="100%" height="35px" name="search" id="myInput" onkeyup="myFunction()">
										<button type="reset" class="btn btn-success"><i class="fa fa-search"></i></button>
									</div>
								</div>

								<div class="card-body p-0 pb-3 text-center">
									<table class="table table-bordered table-sm" id="myTable"
										style="text-align: center">
										<thead>
											<tr>
												<th >No</th>
												<th>Mã khóa học</th>
												<th>Tên khóa học</th>
												<th>Huấn luyện viên chính</th>
												<th>Thời gian bắt đầu</th>
												<th>Thời gian kết thúc</th>
												<th>Số lượng</th>
												<th >Học phí</th>
												<th id="lineEnd"></th>
											</tr>
										</thead>

										<%if(message != null && message.equals("filter")){ %>
										<tbody id="myTable">
											
											<% String typeCourse = request.getParameter("typeCourse");
												List<Course> filter = dao.filterCourse(Integer.parseInt(typeCourse));
												int index = 0;
												for (Course course : filter) {
													index++;
											%>
											<tr>
												<td><%=index%></td>
												<td><%=course.getCourseCode()%></td>
												<td><%=course.getCourseName()%></td>
												<td><%=course.getTrainerName()%></td>
												<td><%=course.getStartDate()%></td>
												<td><%=course.getEndDate()%></td>
												<td><%=course.getQuantity()%></td>
												<td><%=course.getFee()%></td>
												<td id="button"><a
													href="<%=request.getContextPath()%>/Backend/ManageCourse/editCourse.jsp?courseID=<%=course.getCourseID()%>"><button
															type="button" class="btn btn-primary">Sửa</button></a>
													<button onclick="delCourse(<%=course.getCourseID()%>)"
														type="button" class="btn btn-danger" data-toggle="modal"
														data-target="#delete">Xóa</button></td>
											</tr>
											<%
												}
											%>
										</tbody >
										<%}else{ %>
										<tbody id="myTable">
											
											<%
												List<Course> list = dao.listCourse();
												int index = 0;
												for (Course course : list) {
													index++;
											%>
											<tr>
												<td><%=index%></td>
												<td><%=course.getCourseCode()%></td>
												<td><%=course.getCourseName()%></td>
												<td><%=course.getTrainerName()%></td>
												<td><%=course.getStartDate()%></td>
												<td><%=course.getEndDate()%></td>
												<td><%=course.getQuantity()%></td>
												<td><%=course.getFee()%></td>
												<td ><a
													href="<%=request.getContextPath()%>/Backend/ManageCourse/editCourse.jsp?courseID=<%=course.getCourseID()%>"><button
															type="button" class="btn btn-primary">Sửa</button></a>
													<button onclick="delCourse(<%=course.getCourseID()%>)"
														type="button" class="btn btn-danger" data-toggle="modal"
														data-target="#delete">Xóa</button></td>
											</tr>
											<%
												}
											%>
										</tbody>
										<%} %>
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

	<!-- The modal -->
	<div class="modal fade" id="delete">
		<div class="modal-dialog modal-sm modal-dialog-centered" style="max-width: 350px">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header"
					style="justify-content: flex-end; padding: 0">
					<button type="button" class="btn btn-danger" data-dismiss="modal">&times;</button>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<h4 style="padding-left: 0px">Xác nhận xóa khóa học ?</h4>
				</div>
				<!-- Modal footer -->
				<div class="modal-footer" style="justify-content: center">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Hủy</button>
					<a id="btn-del" class="btn btn-danger">OK</a>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	function delCourse(id){
	   $("#btn-del").attr("href","<%=request.getContextPath()%>/AUDCourse?command=delete&courseID="+id);
	}
	function myFuction(){
	$(document).ready(function(){
		  $("#myInput").on("keyup", function() {
			    var value = $(this).val().toLowerCase();
			    $("#myTable tr").filter(function() {
			      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
			    });
			  });
			});
	}
</script>
</body>
<style type="text/css">
.row {
	margin-bottom: 10px;
	margin-top: 10px;
}
body{
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