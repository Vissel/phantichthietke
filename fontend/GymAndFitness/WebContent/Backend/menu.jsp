<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

</head>
<body>
<!-- Main Sidebar -->
	<aside class="main-sidebar col-12 col-md-3 col-lg-2 px-0">
          <div class="main-navbar">
            <nav class="navbar align-items-stretch navbar-light bg-white flex-md-nowrap border-bottom p-0">
              <a class="navbar-brand w-100 mr-0" href="#" style="line-height: 25px;">
                <div class="d-table m-auto">
                  <img id="main-logo" class="d-inline-block align-top mr-1" style="max-width: 25px;" src="<%=request.getContextPath() %>/Backend/images/shards-dashboards-logo.svg" alt="Shards Dashboard">
                  <span class="d-none d-md-inline ml-1"> Dashboard</span>
                </div>
              </a>
              <a class="toggle-sidebar d-sm-inline d-md-none d-lg-none">
                <i class="material-icons">&#xE5C4;</i>
              </a>
            </nav>
          </div>
          <form action="#" class="main-sidebar__search w-100 border-right d-sm-flex d-md-none d-lg-none">
            <div class="input-group input-group-seamless ml-3">
              <div class="input-group-prepend">
                <div class="input-group-text">
                  <i class="fas fa-search"></i>
                </div>
              </div>
              <input class="navbar-search form-control" type="text" placeholder="Search for something..." aria-label="Search"> </div>
          </form>
          <div class="nav-wrapper">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link active" href="<%=request.getContextPath() %>/Backend/backend.jsp">
                  <i class="material-icons">dashboard</i>
                  <span>Dashboard</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link " href="<%=request.getContextPath()%>/Backend/ManageUser/listUser.jsp">
                  <i class="material-icons">person</i>
                  <span>Quản lý Users</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link " href="<%=request.getContextPath()%>/Backend/ManageCourse/listCourse.jsp">
                  <i class="material-icons">vertical_split</i>
                  <span>Quản lý khóa học </span>
                </a>
              </li>
              
              <li class="nav-item">
                <a class="nav-link " href="<%=request.getContextPath()%>/Backend/ManageNews/listNews.jsp">
                  <i class="material-icons">assignment</i>
                  <span>Quản lý tin tức</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link " href="<%=request.getContextPath()%>/Backend/ManageSchedule/listSchedule.jsp">
                  <i class="material-icons">schedule</i>
                  <span>Quản lý lịch làm việc</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link " href="<%=request.getContextPath()%>/Backend/ManageProduct/listProduct.jsp">
                  <i class="material-icons">shop_two</i>
                  <span>Quản lý sản phẩm</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link " href="errors.html">
                  <i class="material-icons">error</i>
                  <span>Errors</span>
                </a>
              </li>
            </ul>
          </div>
        </aside>
        
</html> 

