<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SaveEarth::로그인</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="member/fonts/material-icon/css/material-design-iconic-font.min.css">
    

    <!-- Main css -->
    <link rel="stylesheet" href="member/css/style.css">


<body>
<div class="main">
  <!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="member/images/signin-image.jpg" alt="sing up image"></figure>
                        <!--<a href="join_form" class="signup-image-link">회원가입</a>-->
                    </div>

                    <div class="signin-form">
                        <h3 class="form-title">로그인</h3>
                        <form method="post" action="login" class="register-form" id="login_form">
                            <div class="form-group">
                                <label for="id"d><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" value="${id}" name="id" id="id" placeholder="아이디를 입력해주세요"/>
                            </div>
                            <div class="form-group">
                                <label for="pwd"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pwd" id="pwd" placeholder="비밀번호를 입력해주세요"/>
                            </div>
                            <a href="findPwForm" class="signup-image-link" style="text-align:right;"><strong>비밀번호 찾기</strong></a><br>
                            <div class="form-group form-button">
                                <input type="submit"  class="btn btn-success" value="로그인">
                            </div>
                        </form><br>
                        <div class="form-group form-button">
                        	<a href="join_form" class="signup-image-link"><input type="submit"  class="btn btn-outline-success" value="회원가입"></a>
                        </div>
                        
                        	
                                                
                        <!--<div class="social-login">
                            <span class="social-label">Or login with</span>
                            <ul class="socials">
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                            </ul>
                        </div>-->
                    </div>
                </div>
            </div>
        </section>
</div>
      <!-- JS -->
    <script src="member/vendor/jquery/jquery.min.js"></script>
    <script src="member/js/main.js"></script>
<%@ include file="../footer.jsp" %>

</html>