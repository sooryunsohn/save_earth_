<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %> 

<!DOCTYPE html>
<html>
<head>
    <title>About us페이지</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

	<!-- About us Css, meta생략 -->

    <!-- Site Icons -->
    <link rel="shortcut icon" href="aboutus/images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="aboutus/images/apple-touch-icon.png">
    <link rel="stylesheet" href="aboutus/css/bootstrap.min.css">
    <link rel="stylesheet" href="aboutus/css/style.css">
    <link rel="stylesheet" href="aboutus/css/responsive.css">
    <link rel="stylesheet" href="aboutus/css/custom.css">
   
</head>
<body>
<!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>All departments</span>
                        </div>
                       <ul>
                            <li><a href="#">All | 전체</a></li>
                            <li><a href="category?kind=1">LIVING | 거실</a></li>
                            <li><a href="category?kind=2">BATHROOM | 욕실</a></li>
                            <li><a href="category?kind=3">KITCHEN | 주방</a></li>
                            <li><a href="category?kind=4">KIT | 키트</a></li>
                            <li><a href="category?kind=5">ETC | 기타</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                    	<!-- 메인 홈화면의 상품검색 기능 시작 -->
                        <div class="hero__search__form" id="hero__search_form">
                            <form name="frm" style="display: block; margin-top: 0em;">
                                <div class="hero__search__categories" id="hero__search__categories">
                                    All Categories
                                </div>
                                <input type="text" id="key" name="key" placeholder=" 상품명을 검색해주세요. " style="border : none; width: 70%;
                                	height: 48px; font-size: 16px; color: #b2b2b2; padding-left: 20px;">
                                <button type="submit" class="site-btn" id="searchbtn" onclick="go_search_product(this.key)">SEARCH | 검색</button>
                            </form>
                        </div>
                        <!-- 메인 홈화면의 상품검색 기능 끝 -->  
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+82-1688-1234</h5>
                                <span>평일 오전9시 - 오후6시 </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>About Us</h2>
                        <div class="breadcrumb__option">
                            <a href="index">Home</a>
                            <span>About us..</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    
    <!--▶▶  About us 다른 템플릿 시작 -->
    <div class="about-box-main">
        <div class="container">
            <div class="row">
				<div class="col-lg-6">
                    <div class="banner-frame"> <img class="img-fluid" src="aboutus/images/about-img.jpg" alt="" />
                    </div>
                </div>
                <div class="col-lg-6">
                    <h2 class="noo-sh-title-top"> SUSTAINABLE LIFESTYLE <span>FOR ALL</span></h2>
                    <h3>건강한 소비가 만드는 건강한 지구</h3>                                      
					<p><img src="aboutus/images/location_icon.png"/>About Shopping mall |<br>
						제로웨이스트를 추구하는 조원들이 만든 친환경 상품 판매 샵 입니다.<br>
						천연 재료의 사용을 적극 활용하여 일상생활 속에서 쓰레기 발생을 줄이기 위해 노력하고,
						플라스틱 등 썩지 않는 재료의 사용을 줄이고, 불필요한 소비를 줄이는 등의 습관으로
						자연친화적인 태도를 기르고, 지구 아낌에 동참해주십사<br>해당 상품을 판매하는 웹사이트를 구현하였습니다.</p>
					<p><img src="aboutus/images/location_icon.png"/>Make Clean Earth with Us |<br>
						지구와 인간이 공존할 수 있는 깨끗한 환경 만들기에 동참해 주세요.</p>
					<p><img src="aboutus/images/location_icon.png"/>Nearest Offline Shop |<br>
						지금 가까운 곳의 오프라인 샵을 찾아보세요.<br>						
						구글지도 찾아보기 →<a href="https://www.google.co.kr/maps/search/%EC%A0%9C%EB%A1%9C%EC%9B%A8%EC%9D%B4%EC%8A%A4%ED%8A%B8%EC%83%B5/@37.5228753,126.9246331,12z/data=!3m1!4b1" target="_blank"><img src="aboutus/images/shop_icon.png"></a></p>			
                	    
                </div>
            </div>
            <div class="row my-5">
                <div class="col-sm-6 col-lg-4">
                    <div class="service-block-inner">
                        <h3>We Try Hard</h3>
                        <p>아마추어로 부족하지만<br>
                                                            최선을 다해 작성했습니다.</p>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="service-block-inner">
                        <h3>We Would Like to Professional</h3>
                        <p>열심히 공부하여<br>
                                                           전문가가 될 수 있도록 노력하겠습니다. </p>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="service-block-inner">
                        <h3>Zerowaste Life</h3>
                        <p>더 나은 기술 발전을 지지하되<br>
                        	건강한 삶의 방식을 최우선으로 생각합니다. </p>
                    </div>
                </div>
            </div>
            <div class="row my-4">
                <div class="col-12">
                    <h2 class="noo-sh-title">Meet Our Team</h2>
                       <div class="team-description">
			               <p>Contact Us  |  개선사항이나 궁금하신 점이 있을경우, 아래 담당자에게 연락주시면 감사하겠습니다.</p>
			           </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="aboutus/images/img-1.jpg" alt="" /> <!-- 270 X 320 PX -->
                            <div class="team-content">
                                <h3 class="title">Soyeon Kim | 김소연</h3> <span class="post">Web Developer</span> </div>
                            <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                        </div>
                        <div class="team-description">
                            <p><a href="https://github.com/sohaKim" target="_blank"><img src="aboutus/images/git.png"></a> https://github.com/sohaKim</p>
                            <p><a href="mailto:﻿ ksy2710@hanmail.net?subject=문의 메일 보내기." target="_blank"><img src="aboutus/images/email.png"></a> ksy2710@hanmail.net</p>
                        </div>
                        <hr class="my-0"> </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="aboutus/images/img-2.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">Sooryun Sohn | 손수련</h3> <span class="post">Web Developer</span> </div>
                            <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                        </div>
                        <div class="team-description">
                            <p><a href="https://github.com/sooryunsohn" target="_blank"><img src="aboutus/images/git.png"></a> https://github.com/sooryunsohn</p>
                            <p><a href="mailto:﻿ ksy2710@hanmail.net?subject=문의 메일 보내기." target="_blank"><img src="aboutus/images/email.png"></a> sooryun.sohn@gmail.com</p>
                        </div>
                        <hr class="my-0"> </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="aboutus/images/img-3.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">Yaejin Jang | 장예진</h3> <span class="post">Web Developer</span> </div>
                            <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                        </div>
                        <div class="team-description">
                            <p><a href="https://github.com/yaejinn" target="_blank"><img src="aboutus/images/git.png"></a>https://github.com/yaejinnx</p>
                            <p><a href="mailto:﻿ ksy2710@hanmail.net?subject=문의 메일 보내기."><img src="aboutus/images/email.png" target="_blank"></a> yaezinny95@gmail.com</p>
                        </div>
                        <hr class="my-0"> </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End About Page -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>    
    
    <!-- About us -->
    <!-- ALL JS FILES -->
    <script src="aboutus/js/jquery-3.2.1.min.js"></script>
    <script src="aboutus/js/popper.min.js"></script>
    <script src="aboutus/js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="aboutus/js/jquery.superslides.min.js"></script>
    <script src="aboutus/js/bootstrap-select.js"></script>
    <script src="aboutus/js/inewsticker.js"></script>
    <script src="aboutus/js/bootsnav.js."></script>
    <script src="aboutus/js/images-loded.min.js"></script>
    <script src="aboutus/js/isotope.min.js"></script>
    <script src="aboutus/js/owl.carousel.min.js"></script>
    <script src="aboutus/js/baguetteBox.min.js"></script>
    <script src="aboutus/js/form-validator.min.js"></script>
    <script src="aboutus/js/contact-form-script.js"></script>
    <script src="aboutus/js/custom.js"></script>
    
<%@ include file="../footer.jsp" %>       
</body>
</html>