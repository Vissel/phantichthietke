<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>PTTK-HTTT-GYMandFIT</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800" rel="stylesheet">

      <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/css/animate.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/css/owl.carousel.min.css">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/css/magnific-popup.css">


    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/fonts/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/fonts/fontawesome/css/font-awesome.min.css">

    <!-- Theme Style -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/Fontend/css/style.css">
    
  </head>

  <body>
  

   
     <%@include file="/Fontend/menu/menu.jsp" %>
    <section class="home-slider owl-carousel">
    
      <div class="slider-item" style="background-image: url('<%=request.getContextPath()%>/Fontend/img/slider-1.jpg');">
        
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center">
            <div class="col-md-8 text-center col-sm-12 element-animate">
              <h1>Health is wealth</h1>
              <p class="mb-5">I don’t stop when i ‘m tired, I stop when i done.Never give up on a dream just because of the time it will take to accomplish it. The time will pass anyway</p>
               <p><a href="#" class="btn btn-white btn-outline-white">Coming here </a> <a href="#" class="btn btn-link btn-white">Let go</a></p>
            </div>
          </div>
        </div>

      </div>

      <div class="slider-item" style="background-image: url('<%=request.getContextPath()%>/Fontend/img/slider-2.jpg');">
        <div class="container">
          <div class="row slider-text align-items-center justify-content-center">
            <div class="col-md-8 text-center col-sm-12 element-animate">
              <h1>Join Fitnezz Today</h1>
              <p class="mb-5">I don’t stop when i ‘m tired, I stop when i done.Never give up on a dream just because of the time it will take to accomplish it. The time will pass anyway.</p>
              <p><a href="#" class="btn btn-white btn-outline-white">Coming here </a> <a href="#" class="btn btn-link btn-white">Let go</a></p>
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
              <h2>Featured Classes</h2>
              <span class="back-text">The Classes</span>
            </div>
          </div>
        </div>
      </div>

      <div class="owl-carousel centernonloop">
        <a href="#" class="item-class">
          <div class="text">
            <p class="class-price">450.000VND</p>
            <h2 class="class-heading">Fitness Class Name Here</h2>
          </div>
          <img src="<%=request.getContextPath()%>/Fontend/img/gym4.jpg" alt="" class="img-fluid">
        </a>
        <a href="#" class="item-class">
          <div class="text">
            <p class="class-price">500.000VND</p>
            <h2 class="class-heading">Fitness Class Name Here</h2>
          </div>
          <img src="<%=request.getContextPath()%>/Fontend/img/gym2.jpg" alt="" class="img-fluid">
        </a>
        <a href="#" class="item-class">
          <div class="text">
            <p class="class-price">500.000VND</p>
            <h2 class="class-heading">Fitness Class Name Here</h2>
          </div>
          <img src="<%=request.getContextPath()%>/Fontend/img/gym3.jpg" alt="" class="img-fluid">
        </a>
        <a href="#" class="item-class">
          <div class="text">
            <p class="class-price">300.000VND</p>
            <h2 class="class-heading">Fitness Class Name Here</h2>
          </div>
          <img src="<%=request.getContextPath()%>/Fontend/img/gym5.jpg" alt="" class="img-fluid">
        </a>
      </div>
    </section> <!-- .section -->

    <section class="section bg-light element-animate">

      <div class="clearfix mb-5 pb-5">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12 text-center heading-wrap">
              <h2>Our Schedule</h2>
              <span class="back-text-dark">Schedule</span>
            </div>
          </div>
        </div>
      </div>

      <div class="container">
        
        <div class="row no-gutters">
          <div class="col-md-6">
            <div class="sched d-block d-lg-flex">
              <div class="bg-image order-2" style="background-image: url('<%=request.getContextPath()%>/Fontend/img/gym4.jpg');"></div>
              <div class="text order-1">
                <h3>Fitness Class Name Here</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto illo delectus...</p>
                <p class="sched-time">
                  <span><span class="fa fa-clock-o"></span> 5:30 PM</span> <br>
                  <span><span class="fa fa-calendar"></span> April 22, 2018</span> <br>
                </p>
                <p><a href="#" class="btn btn-primary btn-sm">Join from 150.000vnd</a></p>
                
              </div>
              
            </div>

            <div class="sched d-block d-lg-flex">
              <div class="bg-image" style="background-image: url('<%=request.getContextPath()%>/Fontend/img/gym2.jpg');"></div>
              <div class="text">
                <h3>Fitness Class Name Here</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto illo delectus...</p>
                <p class="sched-time">
                  <span><span class="fa fa-clock-o"></span> 5:30 PM</span> <br>
                  <span><span class="fa fa-calendar"></span> April 22, 2018</span> <br>
                </p>
                <p><a href="#" class="btn btn-primary btn-sm">Join from 150.000vnd</a></p>
                
              </div>
              
            </div>

          </div>

          <div class="col-md-6">
            <div class="sched d-block d-lg-flex">
              <div class="bg-image order-2" style="background-image: url('<%=request.getContextPath()%>/Fontend/img/gym3.jpg');"></div>
              <div class="text order-1">
                <h3>Fitness Class Name Here</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto illo delectus...</p>
                <p class="sched-time">
                  <span><span class="fa fa-clock-o"></span> 5:30 PM</span> <br>
                  <span><span class="fa fa-calendar"></span> April 22, 2018</span> <br>
                </p>
                <p><a href="#" class="btn btn-primary btn-sm">Join from 150.000vnd</a></p>
                
              </div>
              
            </div>

            <div class="sched d-block d-lg-flex">
              <div class="bg-image" style="background-image: url('<%=request.getContextPath()%>/Fontend/img/gym5.jpg');"></div>
              <div class="text">
                <h3>Fitness Class Name Here</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto illo delectus...</p>
                <p class="sched-time">
                  <span><span class="fa fa-clock-o"></span> 5:30 PM</span> <br>
                  <span><span class="fa fa-calendar"></span> April 22, 2018</span> <br>
                </p>
                <p><a href="#" class="btn btn-primary btn-sm">Join from 150.000vnd</a></p>
                
              </div>
              
            </div>

          </div>
        </div>
        

      </div>
    </section> <!-- .section -->

    <section class="section element-animate">

      <div class="clearfix mb-5 pb-5">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12 text-center heading-wrap">
              <h2>Expert Trainers</h2>
              <span class="back-text">Our Trainers</span>
            </div>
          </div>
        </div>
      </div>
        <div class="container">
          <div class="row">
            <div class="major-caousel js-carousel-1 owl-carousel">
              <div>
                <div class="media d-block media-custom text-center">
                  <a href=""><img src="<%=request.getContextPath()%>/Fontend/img/lsi1.jpg" alt="Image Placeholder" class="img-fluid"></a>
                  <div class="media-body">
                    <h3 class="mt-0 text-black">Phạm Văn Mách</h3>
                    <p class="lead">Gym Trainer</p>
                  </div>
                </div>
              </div>
              <div>
              <div class="media d-block media-custom text-center">
                  <a href="#"><img src="<%=request.getContextPath()%>/Fontend/img/lsi2.jpg" alt="Image Placeholder" class="img-fluid"></a>
                  <div class="media-body">
                    <h3 class="mt-0 text-black">Nguyễn Thị Mỹ Linh</h3>
                    <p class="lead">Gym Trainer</p>
                  </div>
                </div>
              </div>
              <div>
                <div class="media d-block media-custom text-center">
                  <a href="#"><img src="<%=request.getContextPath()%>/Fontend/img/lsi3.jpg" alt="Image Placeholder" class="img-fluid"></a>
                  <div class="media-body">
                    <h3 class="mt-0 text-black">Lý Đức</h3>
                    <p class="lead">Gym Trainer</p>
                  </div>
                </div>
              </div>

               <div>
              <div class="media d-block media-custom text-center">
                <a href="#"><img src="<%=request.getContextPath()%>/Fontend/img/gym6.jpg" alt="Image Placeholder" class="img-fluid"></a>
                <div class="media-body">
                  <h3 class="mt-0 text-black">Mellisa Howard</h3>
                  <p class="lead">Gym Trainer</p>
                </div>
              </div>
            </div>
            <div>
             <div class="media d-block media-custom text-center">
                  <a href="adoption-single.html"><img src="<%=request.getContextPath()%>/Fontend/img/lsi3.jpg" alt="Image Placeholder" class="img-fluid"></a>
                  <div class="media-body">
                    <h3 class="mt-0 text-black">Lý Đức</h3>
                      <p class="lead">Gym Trainer</p>
                </div>
              </div>
            </div>
            <div>
             <div class="media d-block media-custom text-center">
                <a href="adoption-single.html"><img src="<%=request.getContextPath()%>/Fontend/img/lsi1.jpg" alt="Image Placeholder" class="img-fluid"></a>
                <div class="media-body">
                  <h3 class="mt-0 text-black">Phạm Văn Mách</h3>
                   <p class="lead">Gym Trainer</p>
                </div>
              </div>
            </div>
            
              
          </div>
          <!-- END slider -->
          </div>
        </div>
      
    </section> <!-- .section -->

    <section class="section element-animate">

      <div class="clearfix mb-5 pb-5">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12 text-center heading-wrap">
              <h2>Testimonial</h2>
              <span class="back-text">Testimonial</span>
            </div>
          </div>
        </div>
      </div>

      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <blockquote class="testimonial">
              <p>&ldquo; Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor, obcaecati? Quis eum minus, sequi atque quisquam ducimus aliquam veritatis nobis cum iusto neque enim explicabo maxime natus doloribus, fuga sunt. &rdquo;</p>
              <div class="d-flex author">
                <img src="<%=request.getContextPath()%>/Fontend/img/lsi2.jpg" alt="" class="mr-4">
                <div class="author-info">
                  <h4>Nguyễn Thị Mỹ Linh</h4>
                  <p>CEO, VimGroup Company</p>
                </div>
              </div>  
            </blockquote>
          </div>
          <div class="col-md-4">
            <blockquote class="testimonial">
              <p>&ldquo; Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor, obcaecati? Quis eum minus, sequi atque quisquam ducimus aliquam veritatis nobis cum iusto neque enim explicabo maxime natus doloribus, fuga sunt. &rdquo;</p>
              <div class="d-flex author">
                <img src="<%=request.getContextPath()%>/Fontend/img/lsi3.jpg" alt="" class="mr-4">
                <div class="author-info">
                  <h4>Lý Đức</h4>
                  <p>CEO, Gym Company</p>
                </div>
              </div>  
            </blockquote>
          </div>
          <div class="col-md-4">
            <blockquote class="testimonial">
              <p>&ldquo; Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor, obcaecati? Quis eum minus, sequi atque quisquam ducimus aliquam veritatis nobis cum iusto neque enim explicabo maxime natus doloribus, fuga sunt. &rdquo;</p>
              <div class="d-flex author">
                <img src="<%=request.getContextPath()%>/Fontend/img/lsi1.jpg" alt="" class="mr-4">
                <div class="author-info">
                  <h4>Phạm Văn Mách</h4>
                  <p>CEO, XYZ Company</p>
                </div>
              </div>  
            </blockquote>
          </div>
        </div>
      </div>
    </section> <!-- .section -->

    <section class="section element-animate">
      <div class="clearfix mb-5 pb-5">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12 text-center heading-wrap">
              <h2>Blog</h2>
              <span class="back-text">Our Blog</span>
            </div>
          </div>
        </div>
      </div>

      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <div class="blog d-block d-lg-flex">
              <div class="bg-image" style="background-image: url('<%=request.getContextPath()%>/Fontend/img/gym3.jpg');"></div>
              <div class="text">
                <h3>Fitness Class Name Here</h3>
                <p class="sched-time">
                  <span><span class="fa fa-calendar"></span> April 22, 2018</span> <br>
                </p>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto illo delectus...</p>
                
                <p><a href="#" class="btn btn-primary btn-sm">Read More</a></p>
                
              </div>
              
            </div>
          </div>
          <div class="col-md-6">
            <div class="blog d-block d-lg-flex">
              <div class="bg-image" style="background-image: url('<%=request.getContextPath()%>/Fontend/img/gym5.jpg');"></div>
              <div class="text">
                <h3>Fitness Class Name Here</h3>
                <p class="sched-time">
                  <span><span class="fa fa-calendar"></span> April 22, 2018</span> <br>
                </p>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto illo delectus...</p>
                
                <p><a href="#" class="btn btn-primary btn-sm">Read More</a></p>
                
              </div>
              
            </div>
          </div>
        </div>
      </div>

    </section> <!-- .section -->
<%@include file="/Fontend/footer/footer.jsp" %>
     
    
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