
<%@page import="model.ProductTypeModel"%>
<%@page import="model.ProductModel"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
 <%@page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tiệm của Trang</title>
    <!-- Favicons -->
    <link href="assets/image/img/logoTittle.png" rel="icon">
    <link href="assets/image/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/vendor/ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/vendor/aos/aos.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="./assets/css/style.css" rel="stylesheet">
</head>

<body>

    <!-- </div> -->
    <!-- ======= Header ======= -->
    <header id="header" class=" ">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-11 d-flex align-items-center">
                    <h1 class="logo mr-auto">
                        <!-- <img src="assets\image\img\Logo.png" style="height: 100px; width: 300px;" class="img-fluid"> -->
                        <a href="home.html">TrangNhỏ</a>
                    </h1>
                    <!-- Uncomment below if you prefer to use an image logo -->


                    <nav class="nav-menu d-none d-lg-block" style="font-size: large;">
                        <ul>
                            <li class="active"><a href="<c:url value="AccountServlet?task=home"/>">Trang chủ</a></li>
                            <li><a href="#about">Giới thiệu</a></li>
                            <li><a href="menu.html">Menu</a></li>
                            <li class="drop-down"><a href="product.html">Sản phẩm</a>
                                <ul>
                                    <li><a href="a.html">Drop Down 1</a></li>
                                    <li><a href="#">Drop Down 3</a></li>
                                    <li><a href="#">Drop Down 4</a></li>
                                    <li><a href="#">Drop Down 5</a></li>


                                </ul>
                            </li>
                            <li><a href="contact.html">liên hệ</a></li>
                            <li style="padding:0px ;  margin-left: 70px;" class="icon icon_account drop-down">

                                <a href="">
                                    <i class="ion-ios-people-outline" style="font-size: 30px;"></i>
                                </a>
                                <ul>
                                    <li><a href="account.html">Chi tiết</a></li>
                                    <li><a href="#">Đăng Xuất</a></li>
                                </ul>
                            </li>
                            <li style="padding:0px 15px; " class=" icon icon_cart">
                                <a>
                                    <i class="ion-ios-cart-outline" style="font-size: 30px;"></i>
                                </a>

                            </li>

                        </ul>
                    </nav>
                    <!-- .nav-menu -->
                </div>
            </div>

        </div>
    </header>

    <!-- ======= Portfolio Section ======= -->
    <main id="main">
        <section id="portfolio" class="section-bg">
            <div class="container" data-aos="fade-up">
                <div class="col-12 row">
                    <div class="col-3">
                        <a href="home.html"> Trang chủ</a>
                        <span style="width: 3px;  border: 1px solid white; margin-right: 5px;"></span>
                        <a href="product.html">Sản phẩm</a>
                    </div>
                </div>
                <header class="section-header">
                    <h3 class="section-title">Sản phẩm</h3>
                </header>
                <div class="row" data-aos="fade-up" data-aos-delay="100">
                    <div class=" col-12 ">
                        <ul id="portfolio-flters">
                         	
                            <li data-filter="* " class="filter-active ">All</li>
                            <% ProductTypeModel getloai= new ProductTypeModel();%>
							<c:forEach var="a" items="<%=getloai.getlist()%>">
                            	<li data-filter=".filter-${a.filter }">${a.tenLoai}</li>
                            </c:forEach>
                         <!-- <li data-filter=".filter-mut ">Mứt</li>
                            <li data-filter=".filter-banh">Bánh</li>
                            <li data-filter=".filter-keo">Kẹo</li>  -->  
                        </ul>
                    </div>
                </div>

                <div class="row portfolio-container " data-aos="fade-up " data-aos-delay="200 ">
                	<% ProductModel promodel= new ProductModel();%>
					<c:forEach var="p" items="<%=promodel.getlistFilter()%>">
	                    <div class="col-lg-4 col-md-6 portfolio-item filter-${p.filter }">
	                        <div class="portfolio-wrap ">
	                            <figure>
	                                <img src="assets/image/img/${p.product.hinhSP }" class="img-fluid " alt=" ">
	                                <a href="cart.html"><button data-gall="portfolioGallery "  title="Web 3 " type="button" class="btn link-preview btn btn-success btn-lg  ">Thêm vào giỏ hàng</button></a>
	                            </figure>
	
	                            <div class="portfolio-info ">
	                                <h4><a href="portfolio-details.html ">${p.product.tenSP}</a></h4>
	                                <p style="color:rgb(3, 180, 97);">${p.product.gia}</p>
	                            </div>
	                        </div>
	                    </div>
	                  
					</c:forEach>
 <!--                  <div class="col-lg-4 col-md-6 portfolio-item filter-web ">
                        <div class="portfolio-wrap ">
                            <figure>
                                <img src="assets/image/img/7.jpg" class="img-fluid " alt=" ">
                                <button data-gall="portfolioGallery " title="Web 3 " type="button" class="btn link-preview btn btn-success btn-lg  ">Thêm vào giỏ hàng</button>

                            </figure>
                            <div class="portfolio-info ">
                                <h4><a href="portfolio-details.html ">Web 3</a></h4>
                                <p>Web</p>

                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-tra">
                        <div class="portfolio-wrap ">
                            <figure>
                                <img src="assets/image/img/8.jpg " class="img-fluid " alt=" ">
                                <a href="assets/img/portfolio/app2.jpg " class="link-preview venobox " data-gall="portfolioGallery " title="App 2 "><i class="ion ion-eye "></i></a>
                                <a href="portfolio-details.html " class="link-details " title="More Details "><i class="ion ion-android-open "></i></a>
                            </figure>

                            <div class="portfolio-info ">
                                <h4><a href="portfolio-details.html ">App 2</a></h4>
                                <p>App</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-card ">
                        <div class="portfolio-wrap ">
                            <figure>
                                <img src="assets/img/portfolio/card2.jpg " class="img-fluid " alt=" ">
                                <a href="assets/img/portfolio/card2.jpg " class="link-preview venobox " data-gall="portfolioGallery " title="Card 2 "><i class="ion ion-eye "></i></a>
                                <a href="portfolio-details.html " class="link-details " title="More Details "><i class="ion ion-android-open "></i></a>
                            </figure>

                            <div class="portfolio-info ">
                                <h4><a href="portfolio-details.html ">Card 2</a></h4>
                                <p>Card</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-web ">
                        <div class="portfolio-wrap ">
                            <figure>
                                <img src="assets/img/portfolio/web2.jpg " class="img-fluid " alt=" ">
                                <a href="assets/img/portfolio/web2.jpg " class="link-preview venobox " data-gall="portfolioGallery " title="Web 2 "><i class="ion ion-eye "></i></a>
                                <a href="portfolio-details.html " class="link-details " title="More Details "><i class="ion ion-android-open "></i></a>
                            </figure>

                            <div class="portfolio-info ">
                                <h4><a href="portfolio-details.html ">Web 2</a></h4>
                                <p>Web</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-tra">
                        <div class="portfolio-wrap ">
                            <figure>
                                <img src="assets/img/portfolio/app3.jpg " class="img-fluid " alt=" ">
                                <a href="assets/img/portfolio/app3.jpg " class="link-preview venobox " data-gall="portfolioGallery " title="App 3 "><i class="ion ion-eye "></i></a>
                                <a href="portfolio-details.html " class="link-details " title="More Details "><i class="ion ion-android-open "></i></a>
                            </figure>

                            <div class="portfolio-info ">
                                <h4><a href="portfolio-details.html ">App 3</a></h4>
                                <p>App</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-card ">
                        <div class="portfolio-wrap ">
                            <figure>
                                <img src="assets/img/portfolio/card1.jpg " class="img-fluid " alt=" ">
                                <a href="assets/img/portfolio/card1.jpg " class="link-preview venobox " data-gall="portfolioGallery " title="Card 1 "><i class="ion ion-eye "></i></a>
                                <a href="portfolio-details.html " class="link-details " title="More Details "><i class="ion ion-android-open "></i></a>
                            </figure>

                            <div class="portfolio-info ">
                                <h4><a href="portfolio-details.html ">Card 1</a></h4>
                                <p>Card</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-card ">
                        <div class="portfolio-wrap ">
                            <figure>
                                <img src="assets/img/portfolio/card3.jpg " class="img-fluid " alt=" ">
                                <a href="assets/img/portfolio/card3.jpg " class="link-preview venobox " data-gall="portfolioGallery " title="Card 3 "><i class="ion ion-eye "></i></a>
                                <a href="portfolio-details.html " class="link-details " title="More Details "><i class="ion ion-android-open "></i></a>
                            </figure>

                            <div class="portfolio-info ">
                                <h4><a href="portfolio-details.html ">Card 3</a></h4>
                                <p>Card</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 portfolio-item filter-web ">
                        <div class="portfolio-wrap ">
                            <figure>
                                <img src="assets/img/portfolio/web1.jpg " class="img-fluid " alt=" ">
                                <a href="assets/img/portfolio/web1.jpg " class="link-preview venobox " data-gall="portfolioGallery " title="Web 1 "><i class="ion ion-eye "></i></a>
                                <a href="portfolio-details.html " class="link-details " title="More Details "><i class="ion ion-android-open "></i></a>
                            </figure>

                            <div class="portfolio-info ">
                                <h4><a href="portfolio-details.html ">Web 1</a></h4>
                                <p>Web</p>
                            </div>
                        </div>
                    </div> --> 

                </div>

            </div>
        </section>
    </main>
    <!-- End Portfolio Section -->
    <script src="assets/vendor/jquery/jquery.min.js "></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js "></script>
    <script src="assets/vendor/jquery.easing/jquery.easing.min.js "></script>
    <script src="assets/vendor/waypoints/jquery.waypoints.min.js "></script>
    <script src="assets/vendor/counterup/counterup.min.js "></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js "></script>
    <script src="assets/vendor/venobox/venobox.min.js "></script>
    <script src="assets/vendor/owl.carousel/owl.carousel.min.js "></script>
    <script src="assets/vendor/aos/aos.js "></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js "></script>

</body>

<footer>
    <div class="footer-top ">
        <div class="container ">
            <div class="row ">
                <div class="col-md-4 col-lg-4 footer-about wow fadeInUp ">
                    <img class="logo-footer " src="assets/footer/assets/img/logo.png " alt="logo-footer " data-at2x="assets/img/logo.png ">
                    <p>
                        We are a young company always looking for new and creative ideas to help you with our products in your everyday work.
                    </p>
                    <p><a href="# ">Our Team</a></p>
                </div>
                <div class="col-md-4 col-lg-4 offset-lg-1 footer-contact wow fadeInDown ">
                    <h3>Contact</h3>
                    <p><i class="fas fa-map-marker-alt "></i> Via Rossini 10, 10136 Turin Italy</p>
                    <p><i class="fas fa-phone "></i> Phone: (0039) 333 12 68 347</p>
                    <p><i class="fas fa-envelope "></i> Email: <a href="mailto:hello@domain.com ">hello@domain.com</a></p>
                    <p><i class="fab fa-skype "></i> Skype: you_online</p>
                </div>
                <div class="col-md-4 col-lg-3 footer-social wow fadeInUp ">
                    <h3>Follow us</h3>
                    <p>
                        <a href="# "><i class="fab fa-facebook ">facebook</i></a>
                        <a href="# "><i class="fab fa-twitter "></i></a>
                        <a href="# "><i class="fab fa-google-plus-g "></i></a>
                        <a href="# "><i class="fab fa-instagram "></i></a>
                        <a href="# "><i class="fab fa-pinterest "></i></a>
                    </p>
                </div>
            </div>
        </div>
    </div>

</footer>

</html>