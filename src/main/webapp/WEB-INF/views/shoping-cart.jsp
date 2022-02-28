<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>장바구니 화면</title>

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

</head>
<body>
<!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="img/logo.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>$150.00</span></div>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <img src="img/language.png" alt="">
                <div>English</div>
                <span class="arrow_carrot-down"></span>
                <ul>
                    <li><a href="#">Spanis</a></li>
                    <li><a href="#">English</a></li>
                </ul>
            </div>
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="index">Home</a></li>
                <li><a href="shop-grid">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="shop-details">Shop Details</a></li>
                        <li><a href="shoping-cart">Shoping Cart</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">Blog</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->
    
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
                            <li><a href="#">All</a></li>
                            <li><a href="category?kind=1">LIVING</a></li>
                            <li><a href="category?kind=2">KITCHEN</a></li>
                            <li><a href="category?kind=3">BATHROOM</a></li>
                            <li><a href="category?kind=4">KIT</a></li>
                            <li><a href="category?kind=5">ETC</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="What do yo u need?">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+82 1688.1234</h5>
                                <span>평일 오전9시-오후6시 </span>
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
                        <h2>Shopping Cart | 장바구니</h2>
                        <div class="breadcrumb__option">
                            <a href="index">Home</a>
                            <span>Shopping Cart</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shoping Cart Section Begin -->    
    <section class="shoping-cart spad">
    <form name="formm" id="theform" method="post">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                                                         
                     <!-- C코드로 수정 시작 -->
                     <!-- 상품 이미지크기 100px, 100px -->                         
                     
                     <c:forEach items="${cartList}" var="cartVO"> 
                        <c:choose>
	                        <c:when test= "${cartList.size()==0}">
						      	<h1> 장바구니가 비었습니다. </h1> 
						    </c:when> 
                        <c:otherwise>
	                        <table>
	                            <thead>
	                                <tr>
	                                    <th class="shoping__product">Products<br>상품</th>
	                                    <th>Price<br>금액</th>
	                                    <th>Quantity<br>수량</th>
	                                    <th></th>
	                                    <th>Total<br>총 금액</th>
	                                    <th>Delete<br>삭제</th>
	                                    <th></th>
	                                </tr>
	                            </thead>                             
	                             <tbody>                          
	                                <tr>
	                                    <td class="shoping__cart__item">
	                                    	<a href="product_detail?pseq=${cartVO.pseq}">
	                                        	<img style="width:100px; height:100px" src="img/product_images/" alt="image">
	                                         </a>
	                                        <h5>${cartVO.pname}</h5>                                        	
	                                    </td>
	                                    <td class="shoping__cart__price">	                                        
	                                         <fmt:formatNumber value="${cartVO.price2}" type="currency"/> 
	                                    </td>
	                                    <td class="shoping__cart__quantity">
	                                        <div class="quantity_btn">
	                                            <div class="pro-qty">
	                                                <input type="text" name="quantity" id="quantity" value="${cartVO.quantity}">
	                                            </div>
	                                        </div>
	                                    </td>
	                                    <td class= "shoping__cart__quantity">
	                                    	<div class="quantity_modify_btn">
	                                    		<button type="button" class="site-btn" onclick="go_cart_change()">변경</button>
	                                    	</div>	
	                                    </td>
	                                    <td class="shoping__cart__total">		                                      
		                                      <fmt:formatNumber value="${cartVO.price2*cartVO.quantity}" type="currency"/>
		                                
		                                
		                                </td>
	                                    <td class="shoping__cart__item__close">	                                       
	                                        <input type="checkbox" name="cseq" value= "${cartVO.cseq}">
	                                    </td>
	                                  </tr>   
	                             </tbody>
	                        </table>
                        </c:otherwise>	                        
                        </c:choose>
                     </c:forEach>                                       
                  </div>
               </div>
          </div>

            <!-- 버튼 -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <a href="shop-grid" class="primary-btn cart-btn">CONTINUE SHOPPING | 쇼핑계속</a>
 						<a href="#" class="primary-btn cart-btn cart-btn-right" onclick="go_cart_delete()">Delete | 삭제</a>    
                    </div>
                </div>
                <div class="col-lg-6">
                	<!--
                    <div class="shoping__continue">       
                        <div class="shoping__discount">
                            <h5>Discount Codes</h5>
                            <form action="#">
                                <input type="text" placeholder="Enter your coupon code">
                                <button type="submit" class="site-btn">APPLY COUPON</button>
                            </form>
                        </div>                   
                    </div>
                    -->
                </div>
                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>Cart Total | 장바구니 금액</h5>
                        <ul>                       	
                            <li>Subtotal | 소계 <span><fmt:formatNumber value="${totalPrice}" type="currency"/></span></li> 
                            <li>Total | 총 금액 <span><fmt:formatNumber value="${totalPrice}" type="currency"/></span></li>  
                        </ul>
                   
                        <c:if test= "${cartList.size() != 0}">            
                        	<a href="checkout" class="primary-btn" onclick="go_order_insert()">PROCEED TO CHECKOUT | 결제하기</a>
                    	</c:if>
                    </div>
                </div>
            </div>
        </div>
    </form>    
    </section>
    <!-- Shoping Cart Section End -->
        <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    <%@ include file="footer.jsp" %>  
</body>
</html>