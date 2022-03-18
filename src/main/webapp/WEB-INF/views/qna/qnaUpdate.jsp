<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<title> Q&A update | 수정 페이지 </title>

	<meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
<style>
.col-lg-12 .site-btn {
	font-size: 14px;
	color: #ffffff;
	font-weight: 800;
	text-transform: uppercase;
	display: inline-block;
	padding: 13px 30px 12px;
	background: #7fad39;
	border: none;
	margin: auto;
	text-align: center;
}

</style>
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
                        <h2>Q&A 게시판</h2>
                        <div class="breadcrumb__option">
                            <a href="index">Home</a>
                            <span>Q&A</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    
    <!-- Contact Form Begin -->
    <!-- ▶ Q&A작성 폼 불러오기 -->      
    <div class="contact-form spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2> 1:1 문의 게시판</h2>
                        <h5> 고객님의 질문에 대해서 운영자가 1:1 답변을 드립니다.</h5>
                        <hr><br><br>
                        <h4> ** 내용을 수정하시고 [수정등록] 버튼을 눌러주세요. **</h4>
                    </div>
                </div>
            </div>
					<!-- 본문 form시작 -->
					<form method="post" name="formm" class="form-horizontal" id="qna_update_form" enctype="multipart/form-data">   
            		<div class="col-lg-6">
                        <div class="card" style="width:1100px; margin: auto;">
                            <div class="card-header">
                                <strong><img src="img/qna/note_icon.png">1:1 수정하기</strong>&nbsp;&nbsp;&nbsp;&nbsp;----- 수정사항을 남겨주세요 -----
                            </div>              
                            <div class="card-body card-block">       
                                   <!-- 카테고리 선택 -->
                                  <div class="row form-group">                                 
                                   		<input type="hidden" name="qseq" value="${qnaVO.qseq}">
                                        <div class="col col-md-3"><label for="select" class=" form-control-label">Category | <br>카테고리: </label></div>
                                        <div class="col-12 col-md-9">
										    <select name="qkind" class="form-control" id="qkind"> 
												<c:forEach items="${qkindList}" var="qkind" varStatus="status">
												    <c:choose>
												   		<c:when test="${qnaVO.qkind==status.count}">  
												   			<option class="selectCategory" value="${status.count}" selected="selected">${qkind}</option>	 												  	   			
											  	   		</c:when>
											  	   		<c:otherwise>
											  	   			<option class="selectCategory" value="${status.count}">${qkind}</option>
											  	   		</c:otherwise>
											  	   	</c:choose>	
											   	 </c:forEach>
										   	 </select> 	
                                        </div>
                                    </div>                                  
                                    <div class="row form-group">
		                               <div class="col col-md-3"><label for="text-input" class=" form-control-label">Title |<br>제목: </label></div>
		                               <div class="col-12 col-md-9"><input type="text" id="subject" value="${qnaVO.subject}" name="subject" class="form-control"></div>
		                           </div>
		                           
		                           <div class="row form-group">
		                                <div class="col col-md-3"><label for="textarea-input" class=" form-control-label">Content |<br>문의내용: </label></div>
		                                 <div class="col-10 col-md-9" style="white-space:pre;"><textarea  name="content" id="content" rows="10" class="form-control">${qnaVO.content}</textarea></div>
		                           </div>
		                           
		                           <!-- 파일업로드 추가 03.16 -->
			                       <div class="row form-group">
										<div class="col col-md-3"><label for="qna_image" class=" form-control-label">File |<br>첨부파일:${qnaVO.image} </label></div>
										<div class="col-5 col-md-5">
											<input multiple ="multiple" type="file" class="form-control" name="qna_image" id="qna_image"/>
										</div>	
								  </div>
		                              
		                            <div class="row form-group">
		                                <div class="col col-md-3"><label for="textarea-input" class=" form-control-label">Reply |<br>답변여부: </label></div>
										<div class="col-10 col-md-9" id="rep">	
											<c:choose>
									        	<c:when test="${qnaVO.rep==1}"><img src="img/qna/check-icon.png">no</c:when>
									            <c:when test="${qnaVO.rep==2}"><img src="img/qna/check-icon.png">yes</c:when>
								            </c:choose>	
								         </div>   
                           			</div>   
                 
		                           <c:if test="${qnaVO.rep==2}">
				                       <div class="row form-group">
				                             <div class="col col-md-3"><label for="textarea-input" class=" form-control-label">Reply Content |<br>답변내용: </label></div>
				                             <div class="col-5 col-md-9" style="white-space:pre;"><textarea placeholder="답변이 남겨진 글은 수정 불가합니다." name="reply" id="reply" rows="10" class="form-control">${qnaVO.reply}</textarea></div>	
				                       </div>
		                          </c:if>		                           
                              </div>		
                          </div>
					 </div>
                    <br><br><br>                 
                <!-- 버튼 -->
                <div class="row" style="align:center;">                   
                    <div class="col-lg-12 text-center" style="align:center;">
                        <button type="button" class="site-btn" onClick="go_qna_save('${qnaVO.qseq}')">수정 등록</button> 
                        <button type="button" class="site-btn" onclick="location.href='qna_list'">목록으로</button>
                   </div> 
               </div> 
            </form>	   	
          </div>
      </div> 
    <!-- Contact Form End -->

    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_phone"></span>
                        <h4>전화번호 | Phone</h4>
                        <p>+82-1688-1234</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_pin_alt"></span>
                        <h4>주소 | Address</h4>
                        <p>서울특별시 강남구 강남대로 428 만이빌딩</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_clock_alt"></span>
                        <h4>운영시간 | Open time</h4>
                        <p>09:00 am - 18:00 pm</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_mail_alt"></span>
                        <h4>이메일 | Email</h4>
                        <p>saveearth@email.com</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

    <!-- Map Begin -->
    <div class="map">   
        <iframe
            src="https://maps.google.com/maps?q=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EA%B0%95%EB%82%A8%EA%B5%AC%20%EA%B0%95%EB%82%A8%EB%8C%80%EB%A1%9C%20428&t=&z=13&ie=UTF8&iwloc=&output=embed"
            height="500" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        <div class="map-inside">
            <i class="icon_pin"></i>
            <div class="inside-widget">
                <h4>서울</h4>
                <ul>
                    <li>전화번호: +82-1688-1234</li>
                    <li>주소: 서울특별시 강남구 강남대로 428 만이빌딩</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Map End -->
     
	<!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
	<!-- <script src="js/main.js"></script> -->
	<script type="text/javascript" src="js/qna.js"></script>
	
<%@ include file="../footer.jsp" %>
</body>
</html>