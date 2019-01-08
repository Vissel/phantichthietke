<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dao.ConfigureDAOImpl"%>
<%@page import="model.NewsType"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="x-ua-compatible" content="ie=edge">
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
<title>Tạo mới bài viết</title>

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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/quill/1.3.6/quill.snow.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/quill/1.3.6/quill.min.js"></script>
<script src="../scripts/app/app-blog-new-post.1.1.0.js"></script>

</head>
<body>
	<%
		ConfigureDAOImpl configure = new ConfigureDAOImpl();
	%>
	<div class="row">
		<div class="col-sm-2">
			<jsp:include page="../menu.jsp"></jsp:include>
		</div>
		<main
			class="main-content col-lg-10 col-md-9 col-sm-12 p-0 offset-lg-2 offset-md-3">
		<jsp:include page="../slidebar.jsp"></jsp:include> <!-- / .main-navbar -->
		<div class="main-content-container container-fluid px-4">
			<div class="col-sm-10" style="color: black; max-width: 100%">
				<h1 style="margin-bottom: 50px; margin-top: 20px">Tạo bài viết</h1>

				<!-- / .main-navbar -->
				<div>
					<div class="row">
						<div class="col-lg-9 col-md-12">
							<!-- Add New Post Form -->
							<div class="card card-small mb-3">
								<div class="card-body">
									<form class="add-new-post">
										<div class="form-group">
											<label class="mb-2 mr-sm-2">Mã bài viết: <span
												id="mandatory">*</span></label> <input type="text"
												class="form-control form-control-lg mb-3" name="codeNews" >
										</div>
										<div class="form-group">
										<label class="mb-2 mr-sm-2">Tiêu đề: <span
											id="mandatory">*</span></label> <input
											class="form-control form-control-lg mb-3" type="text" name="title">
											</div>
										<div id="editor-container" class="add-new-post__editor mb-1"></div>
									</form>
								</div>
							</div>
							<!-- / Add New Post Form -->
						</div>
						<div class="col-lg-3 col-md-12">
							<!-- Post Overview -->
							<div class='card card-small mb-3'>
								<div class="card-header border-bottom">
									<h6 class="m-0">Actions</h6>
								</div>
								<div class='card-body p-0'>
									<ul class="list-group list-group-flush">
										<li class="list-group-item p-3"><span class="d-flex mb-2">
												<i class="material-icons mr-1">flag</i> <strong class="mr-1">Status:</strong>
												Draft <a class="ml-auto" href="#">Edit</a>
										</span> <span class="d-flex mb-2"> <i
												class="material-icons mr-1">visibility</i> <strong
												class="mr-1">Visibility:</strong> <strong
												class="text-success">Public</strong> <a class="ml-auto"
												href="#">Edit</a>
										</span> <span class="d-flex mb-2"> <i
												class="material-icons mr-1">calendar_today</i> <strong
												class="mr-1">Schedule:</strong> Now <a class="ml-auto"
												href="#">Edit</a>
										</span> <span class="d-flex"> <i class="material-icons mr-1">score</i>
												<strong class="mr-1">Readability:</strong> <strong
												class="text-warning">Ok</strong>
										</span></li>
										<li class="list-group-item d-flex px-3">
											<button class="btn btn-sm btn-outline-accent">
												<i class="material-icons">save</i> Save Draft
											</button>
											<button class="btn btn-sm btn-accent ml-auto">
												<i class="material-icons">file_copy</i> Publish
											</button>
										</li>
									</ul>
								</div>
							</div>
							<!-- / Post Overview -->
							<!-- Post Overview -->
							<div class='card card-small mb-3'>
								<div class="card-header border-bottom">
									<h6 class="m-0">Loại bài viết</h6>
								</div>
								<div class='card-body p-0'>
									<ul class="list-group list-group-flush">
										<li class="list-group-item px-3 pb-2" style="margin-left:10px">
											<%for(NewsType type : configure.listNewsType()){ %>
											<div >
												 <input type="checkbox" class="form-check-input" name="typeNews" value="<%=type.getIdType()%>">
												 <label
													class="custom-control-label" for="category1"><%=type.getNameNews() %></label>
											</div>
											<%} %>
											
										</li>
										<li class="list-group-item px-3 pb-2">
											<input type='file' onchange="readURL(this);" />
    										<img id="blah" src="#" alt="your image" />
										</li>
									</ul>
								</div>
							</div>
							<!-- / Post Overview -->
						</div>
					</div>
				</div>

			</div>
		</div>
		</main>
	</div>
</body>
<script type="text/javascript">
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#blah')
                .attr('src', e.target.result)
                .width(150)
                .height(200);
        };

        reader.readAsDataURL(input.files[0]);
    }
}
</script>
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