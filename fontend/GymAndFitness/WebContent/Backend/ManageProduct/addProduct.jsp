<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>Tạo mới sản phẩm</title>

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
		<div class="main-content-container container-fluid px-4" style="margin-left:100px">
			<div class="col-sm-10" style="color: black;">
				<h1 style="margin-bottom: 50px; margin-top: 20px">Tạo sản phẩm</h1>

				<form action="<%=request.getContextPath()%>/AUDProduct"
					method="post" class="form-inline" >
					<div class="row">
						<div class="col-sm-12">
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Mã sản phẩm:<span id="mandatory">*</span></label>
								<input type="text" class="form-control mb-2 mr-sm-2"
									name="codeProduct">
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Tên sản phẩm:<span
									id="mandatory">*</span></label> <input type="text"
									class="form-control mb-2 mr-sm-2" name="nameProduct">
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Nhà sản xuất:<span
									id="mandatory">*</span></label> <input type="text" name="producer"
									class="form-control mb-2 mr-sm-2" width="400" />
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Số lượng:<span
									id="mandatory">*</span></label> <input type="number" name="quantity"
									class="form-control mb-2 mr-sm-2" width="400" />
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Giá sản phẩm:</label> <input
									type="number" class="form-control mb-2 mr-sm-2" name="price">
							</div>
							<div class="form-group">
								<label class="mb-2 mr-sm-2">Hình ảnh: </label>
								<input type='file' onchange="readURL(this);" name="img"/>
    							<img id="blah" src="#" name="img"/>
							</div> 
							<div class="form-group">
								<p style="margin-right:130px">Mô tả:</p><br>
								<textarea rows="6" cols="100" name="description" class="form-control" style="margin-top:10px"></textarea>
							</div>
						</div>

					</div>
					<label style="color: red">* Là những dữ liệu bắt buộc</label>
					<div class="button">
						<button id="button-cancel" type="submit" name="command"
							value="cancel">Hủy</button>
						<button id="button-createUser" type="submit" name="command"
							value="add">Thêm sản phẩm</button>
					</div>
				</form>

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
                .width(50)
                .height(50);
        };

        reader.readAsDataURL(input.files[0]);
    }
}
</script>
<style type="text/css">
.form-inline {
	margin-top: 10px;
}
.form-inline .row{
margin-left: 100px;
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
</style>
</html>