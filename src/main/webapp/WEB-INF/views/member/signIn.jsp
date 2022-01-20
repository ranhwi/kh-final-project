<!DOCTYPE html>
<html lang="en">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>login</title>
        <!-- fontawesome-->
        <script src="https://kit.fontawesome.com/7d7ec2f3ed.js" crossorigin="anonymous"></script>
        <!-- Jquery-->
        <script src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
        <!-- bootstrap-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
        <!-- CSS -->
        <link rel="stylesheet" href="/css/font.css">
        <link rel="stylesheet" href="/css/header.css">
        <link rel="stylesheet" href="/css/footer.css">
        <!-- Custom styles for this template -->
        <link href="/css/signIn.css" rel="stylesheet">
        <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>

<body>
    <header>
        <div class="header_Container">
            <ul class="header_list">
                <li><a href="signIn">로그인</a></li>
                <li><a href="join">회원가입</a></li>
            </ul>
        </div>
        <div class="div-wrap">
            <div class="nav_div">
                <div class="logo">
                    <i class="fas fa-seedling"></i>
                    <a href="/">00마켓</a>
                </div>
            </div>
        </div>
    </header>

    <main>
        <div class="form-signin">
            <form action="/member/login" method="get">
                <h1 class="h3 mb-3 fw-normal">로그인</h1>

                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingInput" name="logid" placeholder="name@example.com">
                    <label for="floatingInput">아이디</label>
                </div>
                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingPassword" name="logpw" placeholder="Password">
                    <label for="floatingPassword">비밀번호</label>
                </div>

                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me" name="remember_userID"> Remember me
                    </label>
                </div>
                <div class="buttons">
                    <button id="signIn" class=" btn btn-lg btn-light" type="submit">로그인</button>
                    <button id="findMyInfo" class=" btn btn-lg btn-light" type="button">아이디/비밀번호 찾기</button>
                </div>
                </form>
                <div class="buttons">
                <button id="kakaoLogin" class="w-100 btn btn-lg btn-light" type="button">
						
					</button>
					<a href="https://kauth.kakao.com/oauth/authorize?client_id=e60a4b1af6b713f21e514a4af2e2bab4&redirect_uri=http://localhost:8080/kakaologin&response_type=code">로그인</a>
					</div>
        </div>
    </main>
    <footer>
        <div class="footer-box">
            <span>만든이들 : 곽서호, 김동현 92, 김동현 93, 김동휘, 박시현, 베소현 </span><br>
            <span>CopyRight 2022 @ ALL RIGHT RESERVED</span>
        </div>
    </footer>
    <a id="kakao-login-btn"></a>
    <a href="http://developers.kakao.com/logout">Logout</a>
    <script type='text/javascript'>
        //<![CDATA[
        // 사용할 앱의 JavaScript 키를 설정해 주세요.
        Kakao.init('72e986ca5a91ee0a598ee51ca906597c');
        // 카카오 로그인 버튼을 생성합니다.
        Kakao.Auth.createLoginButton({
            container: '#kakao-login-btn',
            success: function (authObj) {
                alert(JSON.stringify(authObj));
            },
            fail: function (err) {
                alert(JSON.stringify(err));
            }
        });
      //]]>
    </script>
    <script>

        $("#findMyInfo").on("click",function(){
            location.href="findInfo";
        });
      
       
        
    </script>
</body>

</html>