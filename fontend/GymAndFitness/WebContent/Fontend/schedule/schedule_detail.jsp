<%@page import="model.Course"%>
<%@page import="dao.CourseDAOImpl"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
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
	<%
	String courseID = (String) request.getParameter("courseID");
	CourseDAOImpl courseDAO = new CourseDAOImpl();
	%>

	<div class="clearfix mb-5 pb-5">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12 text-center heading-wrap">
				
					<span style="margin-top: 30px;" class="back-text-dark">Schedule</span>
				</div>
			</div>
		</div>
	</div>
		<%
		
		Course course = courseDAO.getOneCourse(Integer.parseInt(courseID));
		ResultSet rs = courseDAO.searchForId(courseID);
		while (rs.next()) {
		%>
<table action="<%=request.getContextPath()%>/AUDSchedule" method="post" style="margin-left:140px; margin-top:350px;width: 1000px;" class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Khóa </th>
         <th scope="col">Tên khóa học</th>
      <th scope="col">Thời gian học</th>
      <th scope="col">Ngày bắt đầu</th>
         <th scope="col">Ngày kết thúc</th>
      <th scope="col">Tiền học</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" ><%out.print(rs.getString(2));%></th>
      <th><%out.print(rs.getString(3));%></th>
      <td>5:30 PM</td>
      <td><%out.print(rs.getString(6));%></td>
      <td><%out.print(rs.getString(7));%></td>
      <td>150.000VND</td>
    </tr>
  
  </tbody>
  <%} %>
</table>
<button  style="margin-left: 550px; margin-top: 50px;" type="button" class="btn btn-primary" value="register" >Đăng ký</button>
<button  style=" margin-top: 50px;" type="button" class="btn btn-warning" value="cancel" >Hủy</button>
							
	
</body>
</html>