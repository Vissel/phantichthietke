<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact for us</title>
</head>
<body>
<%@include file="/Fontend/menu/menu.jsp" %>
 <section class="home-slider-loop-false  inner-page owl-carousel">
      <div class="slider-item" style="background-image: url('../img/bg2.jpg');">
        
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center">
            <div class="col-md-8 text-center col-sm-12 element-animate">
              <h1>Contact</h1>
              
            </div>
          </div>
        </div>

      </div>

    </section>
    <!-- END slider -->

    <section class="section element-animate">
      <div class="clearfix mb-5 pb-5">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12 text-center heading-wrap">
              <h2>Get In Touch</h2>
              <span class="back-text">Contact</span>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <form  >
              <div class="row">
                <div class="col-md-6 form-group">
                  <label for="name">Name</label>
                  <input type="text" id="name" class="form-control ">
                </div>
                <div class="col-md-6 form-group">
                  <label for="phone">Phone</label>
                  <input type="text" id="phone" class="form-control ">
                </div>
              </div>
              <div class="row">
                <div class="col-md-12 form-group">
                  
                </div>
              </div>
              <div class="row">
                <div class="col-md-12 form-group">
                  <label for="email">Email</label>
                  <input type="email" id="email" class="form-control ">
                </div>
              </div>
              <div class="row">
                <div class="col-md-12 form-group">
                  <label for="message">Write Message</label>
                  <textarea name="message" id="message" class="form-control " cols="30" rows="8"></textarea>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6 form-group">
                  <input type="submit" value="Send Message" class="btn btn-primary">
                </div>
              </div>
            </form>
          </div>
          
          <div class="col-lg-6 pl-2 pl-lg-5">

            <div class="col-md-8 mx-auto contact-form-contact-info">
              <h4 class="mb-5">Contact Details</h4>
                <p class="d-flex">
                  <span class="ion-ios-location icon mr-5"></span>
                  <span>34 Street Name, City Name Here, United States</span>
                </p>

                <p class="d-flex">
                  <span class="ion-ios-telephone icon mr-5"></span>
                  <span>+1 242 4942 290</span>
                </p>

                <p class="d-flex">
                  <span class="ion-android-mail icon mr-5"></span>
                  <span>info@yourdomain.com</span>
                </p>
              </div>

          </div>
        </div>
      </div>

    </section>


    
     <script src="<%=request.getContextPath()%>/Fontend/js/jquery-3.2.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/Fontend/js/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/Fontend/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/Fontend/js/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath()%>/Fontend/js/jquery.waypoints.min.js"></script>

    <script src="<%=request.getContextPath()%>/Fontend/js/jquery.magnific-popup.min.js"></script>
    <script src="<%=request.getContextPath()%>/Fontend/js/magnific-popup-options.js"></script>
    

    <script src="<%=request.getContextPath()%>/Fontend/js/main.js"></script>




<%@include file="/Fontend/footer/footer.jsp" %>
</body>
</html>