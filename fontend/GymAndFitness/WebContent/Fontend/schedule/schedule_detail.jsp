<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Schedule Detail</title>
</head>
<body>
	<%@include file="/Fontend/menu/menu.jsp"%>
	

	<div class="clearfix mb-5 pb-5">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 text-center heading-wrap">
				
					<span style="margin-top: 30px;" class="back-text-dark">Schedule</span>
				</div>
			</div>
		</div>
	</div>
	
<table style="margin-left:140px; margin-top:350px;width: 1000px;" class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Khóa </th>
      <th scope="col">Thời gian học</th>
      <th scope="col">Thời gian bắt đầu</th>
      <th scope="col">Tiền học</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">01</th>
      <td>5:30 PM</td>
      <td>April 22, 2018</td>
      <td>150.00 VND</td>
    </tr>
  
  </tbody>
</table>
<button style="margin-left: 600px; margin-top: 50px;" type="button" class="btn btn-warning">Đăng ký</button>
</body>
</html>