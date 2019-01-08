<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
  <head>
    <title>About</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

      </head>
  <body>
    
   <%@include file="/Fontend/menu/menu.jsp" %>
    <section class="home-slider-loop-false  inner-page owl-carousel">
      <div class="slider-item" style="background-image: url('../img/bg.jpg');">
        
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center">
            <div class="col-md-8 text-center col-sm-12 element-animate">
              <h1>About Us</h1>
              
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
              <h2>About Us</h2>
              <span class="back-text">About</span>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
		 <div class="col-lg-6">
            <p><img style="width: 600px; height: 370px;" src="<%=request.getContextPath()%>/Fontend/img/ptap.jpg" alt="" class="img-fluid"></p>
            <p class="mb-5"><img style="width: 600px; height: 370px;" src="<%=request.getContextPath()%>/Fontend/img/ptap1.jpg" alt="" class="img-fluid"></p>
          </div>
                  <div class="col-lg-6 pl-2 pl-lg-5">
            <h2 class="mb-5">History</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius est soluta blanditiis velit doloremque corrupti aliquid ducimus consectetur ea nobis dolorem, id quibusdam praesentium consequuntur modi eligendi, sunt suscipit ullam iure nesciunt tempore. Itaque placeat, libero aliquam odio ex voluptas.</p>
            <p>Vel vitae, assumenda blanditiis nemo in vero reprehenderit asperiores distinctio exercitationem aliquid, quam velit explicabo neque. Sapiente provident sequi omnis itaque eaque voluptatum vel. Accusamus deserunt atque eligendi mollitia voluptates eum libero, ratione id labore. Magnam porro dolorem aspernatur, dolor?</p>
            
            <p class="mb-5">Vel vitae, assumenda blanditiis nemo in vero reprehenderit asperiores distinctio exercitationem aliquid, quam velit explicabo neque. Sapiente provident sequi omnis itaque eaque voluptatum vel. Accusamus deserunt atque eligendi mollitia voluptates eum libero, ratione id labore. Magnam porro dolorem aspernatur, dolor?</p>

          </div>
        </div>
      </div>

    </section>

    <section class="section element-animate">

      <div class="clearfix mb-5 pb-5">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12 text-center heading-wrap">
              <h2>Gallery</h2>
              <span class="back-text">The Gallery</span>
            </div>
          </div>
        </div>
      </div>

      <div class="owl-carousel centernonloop">
        <a href="<%=request.getContextPath()%>/Fontend/img/img_1_square.jpg" class="image-popup">
          <img src="<%=request.getContextPath()%>/Fontend/img/img_1_square.jpg" alt="" class="img-fluid">
        </a>
        <a href="<%=request.getContextPath()%>/Fontendimg/img_1_square.jpg" class="image-popup">
          <img src="<%=request.getContextPath()%>/Fontend/img/img_2_square.jpg" alt="" class="img-fluid">
        </a>
        <a href="<%=request.getContextPath()%>/Fontend/img/img_1_square.jpg" class="image-popup">
          <img src="<%=request.getContextPath()%>/Fontend/img/img_3_square.jpg" alt="" class="img-fluid">
        </a>
        <a href="<%=request.getContextPath()%>/Fontend/img/img_1_square.jpg" class="image-popup">
          <img src="<%=request.getContextPath()%>/Fontend/img/img_4_square.jpg" alt="" class="img-fluid">
        </a>
      </div>
    </section> <!-- .section -->

    
    

   <section class="section element-animate">

      <div class="clearfix mb-5 pb-5">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12 text-center heading-wrap">
              <h2>Leadership</h2>
              <span class="back-text">Our Founders</span>
            </div>
          </div>
        </div>
      </div>
        <div class="container">
          <div class="row">
            <div class="major-caousel js-carousel-1 owl-carousel">
              <div>
                <div class="media d-block media-custom text-center">
                  <a href=""><img style= " width: 350px; height: 300px;" src="<%=request.getContextPath()%>/Fontend/img/lsi1.jpg" alt="Image Placeholder" class="img-fluid"></a>
                  <div class="media-body">
                    <h3 class="mt-0 text-black">Phạm Văn Mách</h3>
                    <p class="lead">Gym, Co-Founder</p>
                  </div>
                </div>
              </div>
              <div>
                <div class="media d-block media-custom text-center">
                  <a href="#"><img style= " width: 350px; height: 300px;" src="<%=request.getContextPath()%>/Fontend/img/lsi2.jpg" alt="Image Placeholder" class="img-fluid"></a>
                  <div class="media-body">
                    <h3 class="mt-0 text-black">Nguyễn Thị Mỹ Linh</h3>
                    <p class="lead">Gym, Co-Founder</p>
                  </div>
                </div>
              </div>
              <div>
                <div class="media d-block media-custom text-center">
                  <a href="adoption-single.html"><img style= " width: 350px; height: 300px;" src="<%=request.getContextPath()%>/Fontend/img/lsi3.jpg" alt="Image Placeholder" class="img-fluid"></a>
                  <div class="media-body">
                    <h3 class="mt-0 text-black">Lý Đức</h3>
                    <p class="lead">Gym Trainer</p>
                  </div>
                </div>
              </div>

               <div>
              <div class="media d-block media-custom text-center">
                <a href="adoption-single.html"><img style= " width: 350px; height: 300px;" src="<%=request.getContextPath()%>/Fontend/img/lsi1.jpg" alt="Image Placeholder" class="img-fluid"></a>
                <div class="media-body">
                  <h3 class="mt-0 text-black">Phạm Văn Mách</h3>
                  <p class="lead">Gym Trainer</p>
                </div>
              </div>
            </div>
            <div>
              <div class="media d-block media-custom text-center">
                <a href="adoption-single.html"><img style= " width: 350px; height: 300px;" src="<%=request.getContextPath()%>/Fontend/img/lsi2.jpg" alt="Image Placeholder" class="img-fluid"></a>
                <div class="media-body">
                  <h3 class="mt-0 text-black">Nguyễn Thị Mỹ Linh</h3>
                  <p class="lead">CEO, Co-Founder</p>
                </div>
              </div>
            </div>
            <div>
              <div class="media d-block media-custom text-center">
                <a href="adoption-single.html"><img style= " width: 350px; height: 300px;" src="<%=request.getContextPath()%>/Fontend/img/lsi3.jpg" alt="Image Placeholder" class="img-fluid"></a>
                <div class="media-body">
                  <h3 class="mt-0 text-black">Lý Đức</h3>
                  <p class="lead">CEO, Co-Founder</p>
                </div>
              </div>
            </div>
            
              
          </div>
          <!-- END slider -->
          </div>
        </div>
      
    </section> <!-- .section -->
    


    <footer class="site-footer" role="contentinfo">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-4 mb-5">
            <h3>About Us</h3>
            <p class="mb-5">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus et dolor blanditiis consequuntur ex voluptates perspiciatis omnis unde minima expedita.</p>
            <ul class="list-unstyled footer-link d-flex footer-social">
              <li><a href="#" class="p-2"><span class="fa fa-twitter"></span></a></li>
              <li><a href="#" class="p-2"><span class="fa fa-facebook"></span></a></li>
              <li><a href="#" class="p-2"><span class="fa fa-linkedin"></span></a></li>
              <li><a href="#" class="p-2"><span class="fa fa-instagram"></span></a></li>
            </ul>

          </div>
          <div class="col-md-5 mb-5">
            <h3>Contact Info</h3>
            <ul class="list-unstyled footer-link">
              <li class="d-block">
                <span class="d-block">Address:</span>
                <span class="text-white">34 Street Name, City Name Here, United States</span></li>
              <li class="d-block"><span class="d-block">Telephone:</span><span class="text-white">+1 242 4942 290</span></li>
              <li class="d-block"><span class="d-block">Email:</span><span class="text-white">info@yourdomain.com</span></li>
            </ul>
          </div>
          <div class="col-md-3 mb-5">
            <h3>Quick Links</h3>
            <ul class="list-unstyled footer-link">
              <li><a href="#">About</a></li>
              <li><a href="#">Terms of Use</a></li>
              <li><a href="#">Disclaimers</a></li>
              <li><a href="#">Contact</a></li>
            </ul>
          </div>
          <div class="col-md-3">
          
          </div>
        </div>
        <div class="row">
          <div class="col-12 text-md-center text-left">
            <p>&copy; <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --> <br> Demo Images Unsplash</p>
          </div>
        </div>
      </div>
    </footer>
    <!-- END footer -->

    <!-- loader -->
    <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#f4b214"/></svg></div>

    <script src="<%=request.getContextPath()%>/Fontend/js/jquery-3.2.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/Fontend/js/popper.min.js"></script>
    <script src="<%=request.getContextPath()%>/Fontend/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/Fontend/js/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath()%>/Fontend/js/jquery.waypoints.min.js"></script>

    <script src="<%=request.getContextPath()%>/Fontend/js/jquery.magnific-popup.min.js"></script>
    <script src="<%=request.getContextPath()%>/Fontend/js/magnific-popup-options.js"></script>

    <script src="<%=request.getContextPath()%>/Fontend/js/main.js"></script>
  </body>
</html>