<%-- 
    Document   : login_register
    Created on : Jun 4, 2023, 11:45:21 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link rel="stylesheet" href="Asset/css/clientHeader.css">
        <link rel="stylesheet" href="Asset/css/clientFooter.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@200;300;400;500;600;700;800&display=swap" rel="stylesheet">
        <script src="Asset/js/cdnjs.cloudflare.com_ajax_libs_jquery_3.7.0_jquery.min.js"></script>
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body{
                font-family: 'jost', sans-serif;
            }
            .main{
                background-color: #f3e0e2;
                width: 100vw;
                height: 140vh;
            }
            .box{
                display: flex;
                position: relative;
                top:0;
                left: 50%;
                transform: translate(-50%,150px);
                width: 700px;
                background: linear-gradient(90deg,#ff464b,#ff416b);
                border-radius: 10px;
                box-shadow: 0 5px 10px rgba(0, 0, 0, 0.375);
            }
            .login-box{
                width: 350px;
                padding: 50px 40px;
                background: rgba(255, 255, 255);
                border-radius: 10px 0 0 10px;
                position: relative;

            }
            .signup-box{
                width: 350px;
                padding: 50px 40px;
                background: rgba(255, 255, 255);
                border-radius: 0 10px 10px 0;
                position: relative;
            }
            .login-box h2,.signup-box h2{
                margin: 0 0 40px;
                padding: 0;
                color: #333;
                text-align: center;
            }
            .login-box .user-box, .signup-box .user-box{
                position: relative;
            }

            .login-box .user-box input,.signup-box .user-box input{
                width: 100%;
                padding: 10px 0;
                font-size: 16px;
                color: #333;
                margin-bottom: 40px;
                border: none;
                border-bottom:  1px solid #333;
                outline: none;
                background: transparent;
            }
            .signup-box .user-box input.input-wrong{
                border-bottom: 1px  solid red;
            }
            .login-box .user-box label,.signup-box .user-box label{
                position: absolute;
                top:0;
                left:0;
                padding: 10px 0;
                font-size: 16px;
                color: #333;
                pointer-events: none;
                transition: .5s;
            }
            .user-box input:focus ~ label,
            .user-box input:valid ~ label{
                top:-20px;
                left: 0;
                color: #ff416b;
                font-size: 12px;
            }

            .check{
                font-size: 16px;
                color: #333;
                user-select: none;
            }
            .center{
                display: flex;
            }
            form .btn-login{
                margin: 0 auto;
                position: relative;
                display: inline-block;
                padding: 12px 24px;
                color: white;
                background-color: #ff464b;
                font-size: 16px;
                text-decoration: none;
                overflow: hidden;
                transition: .5s;
                margin-top: 60px;
                letter-spacing: 4px;
                border-radius: 24px;
                border: none;
            }
            .btn-login:hover{
                background: #ff416b;
                color: #fff;
                border-radius: 5px;
                box-shadow: 0 0 25px #ff416b;
            }
            .slide-box{
                width: 50%;
                position: absolute;
                left: 0;
                display: flex;
                flex-direction: column;
                height: 100%;
                background: linear-gradient(90deg,#ff464b,#ff416b);
                z-index: 999;
                top:0px;
                border-radius: 10px 0 0 10px;
                transition: ease-in-out .8s;

            }
            .slide-box.right{
                left: 50%;
                right: 0;
                border-radius: 0 10px 10px 0;
            }


            .slide-box h2{
                margin: 40% 20px 20px 20px ;
                font-size: 32px;
                text-align: center;
                color: white;
                font-weight: bold;

            }
            .slide-box p{
                margin: 16px 32px;
                text-align: center;
                color: white;
            }
            .slide-box button{
                margin-top: 50px;
                align-self: center;
                width: fit-content;
                background: transparent;
                color: white;
                border: 0px;
                cursor: pointer;
                font-weight: bold;
                transition: .3s;
                font-size: 14px;
            }
            .slide-box button:hover{
                letter-spacing: 2px;
            }
            .note-signup{
                position: absolute;
                top:60px;
                color: red;
                text-align: center;
            }
            .note-login{
                position: absolute;
                top:110px;
                color: red;
                text-align: center;
                font-size: 14px;
                margin-top: 15px;
            }
            .or-login {
                margin: 20px auto;
                display: flex;
                align-items: center;
            }

            .or-login .line {
                height: 1px;
                width: 100%;
                background-color: #dbdbdb;
                flex: 1;
            }

            .or-login span {
                color: #ccc;
                padding: 0 16px;
                text-transform: uppercase;
                font-size: .75rem;
            }

            .login-btn-gg{
                background-color: white;
                display: flex;
                padding: 12px 16px;
                border: 2px solid #dce0e3;
                border-radius: 24px;
                align-items: center;
                width: 100%;
                position: relative;
                justify-content: center;
                text-decoration: none;
                font-size: 15px;
                font-weight: 600;
                color: #35414c;
                transition: all ease-in-out .3s;
            }
            .login-btn-gg:hover{
                background-color: #dce0e3;
            }
            .login-btn-gg img{
                height: 18px;
                position: absolute;
                left: 16px
            }

            .login-gg-box a{
                color: #333;
                text-decoration: none;
            }
            .trans-btn{
                display: none;
                margin-top: 16px;
                text-align: center;
                text-decoration: underline;
                font-size: 14px;
                color: #333;
            }
            @media screen and (max-width:739px){
                .box{
                    width: 90%;
                }
                .login-box{
                    border-radius: 10px;
                    display: none;
                }
                .signup-box{
                    border-radius: 10px;
                    display: none;
                    padding: 50px 10px;
                }
                .slide-box{
                    display: none;
                }
                .trans-btn{
                    display: block;
                }
                .show{
                    display: block;
                }
            } 
            .error{
                color: red; 
                font-size: 15px;
            }
            .reset-password{
                margin-top: 32px;
            }
            .reset-password a{
                color: #333;
            }

            @media screen and (max-width:739px){
               
            }           
        </style>
    </head>
    <body>
        <jsp:include page="../Component/header.jsp"></jsp:include>
            <div class="main">
                <div class="box">
                    <div class="login-box">
                        <h2>LogIn</h2>
                        <form action="login" method="POST">
                            <div class="user-box">
                                <input type="text" name="username" required>
                                <label>E-mail Address</label>
                            </div>
                            <div class="user-box">
                                <input class="pass" type="password" name="password" required>
                                <label>Password</label>
                                <p class="note-login error" >${errLogin}</p>
                        </div>
                        <div class="check">
                            <input onchange="show()" type="checkbox" id="passwordShow" class="show">
                            <label for="passwordShow">Show</label>
                        </div>
                        <div class="reset-password">
                            <a href="Client/forgetPassword.jsp"> Forgot Password? </a>
                        </div>
                        <div class="center">
                            <button class="btn-login" type="submit">
                                Login
                            </button>
                        </div>
                        <div class="or-login">
                            <div class="line"></div>
                            <span>OR</span>
                            <div class="line"></div>
                        </div>
                        <form action="loginGG" method="POST">
                            <div class="login-Google">
                                <a class="login-btn-gg" href="https://accounts.google.com/o/oauth2/auth?scope=profile email&redirect_uri=http://localhost:8080/yoga-center-project/LoginWithGoogle&response_type=code
                                               &client_id=261325477127-aarmd5ktdhfilg620o9ue7pft00qf0nk.apps.googleusercontent.com&approval_prompt=force"> <img src="./Asset/img/logo/Google_Logo.png" alt=""> Login With Google</a>
                            </div>
                        </form>
                        <div class='trans-btn' >Create New Account </div>
                </div>
                <div class="signup-box">
                    <h2>SignUp</h2>
                    <form action="signup" method="POST" id="form-register">
                        <div class="user-box">
                            <input type="text" name="username" required>
                            <label>Username</label>
                            <span><p class="error">${USER_ERROR.fullNameError}</p></span>
                        </div>
                        <div class="user-box">
                            <input class="email" type="email" name="email" required>
                            <label>Email</label>
                            <span><p class="error">${errLEmail}</p></span>
                        </div>
                        <div class="user-box">
                            <input class="pass1" type="password" onchange="checkPass()" name="password" required>
                            <label>Password</label>
                        </div>
                        <div class="user-box">
                            <input class="pass2" type="password" onchange="checkPass()" required>
                            <label>Retype Password</label>
                            <p class="note-signup error">${errSignup}</p>
                        </div>
                        <div class="captcha" id="html_element"></div>
                        <div id="error" style="color: red; font-size: 15px;"></div>
                        <div class="center">
                            <button id="btn2" class="btn-login" type="submit">
                                Signup
                            </button>     
                        </div>
                        <div class='trans-btn' >Go To Login </div>
                    </form>
                </div>
                <div class="slide-box ${type.equals("login")?"right":""}">
                    <div>
                        <h2>
                            Welcome To Yowu.
                        </h2>
                        <p class="slide-box-p1">
                            Login and have a great booking experience
                        </p>
                        <p class="slide-box-p2">
                            If you don't have acount before, please touch button below
                        </p>

                    </div>
                    <button id="change" onclick="change()">
                        Create new Account
                    </button>
                </div>
            </div>
        </div>

        <!-- END code font -->
        <script>
            function show() {
                var pass = document.querySelector(".pass");
                var checkbox = document.getElementById("passwordShow");
                if (checkbox.checked) {
                    pass.setAttribute("type", "text");

                } else {
                    pass.setAttribute("type", "password");
                }

            }
            function checkPass() {
                var button = document.getElementById("btn2");
                var pass1 = document.querySelector(".pass1");
                var pass2 = document.querySelector(".pass2");
                if (pass1.value == pass2.value) {
                    pass1.classList.remove("input-wrong");
                    pass2.classList.remove("input-wrong");
                    document.querySelector(".note-signup").innerHTML = "";
                    btn2.disabled = false;
                } else {
                    pass1.classList.add("input-wrong");
                    pass2.classList.add("input-wrong");
                    document.querySelector(".note-signup").innerHTML = "passwords don't match!";
                    btn2.disabled = true;
                }

            }

            function change() {
                var changebtn = document.getElementById("change");
                var slidebox = document.querySelector(".slide-box");
                var slideboxp1 = document.querySelector(".slide-box-p1");
                var slideboxp2 = document.querySelector(".slide-box-p2");
                let data = changebtn.innerHTML;
                if (slidebox.classList.contains("right")) {
                    slideboxp1.innerHTML = "Fill in the information so that we can contact you";
                    slideboxp2.innerHTML = "If you already have an account, click blow button to login";
                    changebtn.innerHTML = "Go to login";
                    slidebox.classList.remove("right");
                } else {
                    slideboxp1.innerHTML = "Login and have a great booking experience";
                    slideboxp2.innerHTML = "If you don't have acount before, please touch button below";
                    changebtn.innerHTML = "Create new Account";
                    slidebox.classList.add("right");
                }

            }
            fill();

            function fill() {

                if ($('.slide-box').hasClass('right')) {
                    $('.slide-box-p1').html("Login and have a great booking experience");

                    $('.slide-box-p2').html("If you don't have acount before, please touch button below");
                    $('#change').html('Create new Account');
                } else {
                    $('.slide-box .slide-box-p1').text("Fill in the information so that we can contact you");
                    $('.slide-box-p2').html("If you already have an account, click blow button to login");
                    $('#change').html('Go to login');
                }

            }
            
            /*for mobile ui*/
            $(document).ready(function (){
                if(currentPathName=='/login'){
                    $('.login-box').addClass('show');
                    $('.signup-box').removeClass('show');
                }else{
                    $('.login-box').removeClass('show');
                    $('.signup-box').addClass('show');
                }
                $('.trans-btn').click(function(){
                    $('.login-box').toggleClass("show");
                    $('.signup-box').toggleClass("show");
                });
            });

        </script>
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"async defer></script>
        <script type="text/javascript" defer="">
            var onloadCallback = function () {
                grecaptcha.render('html_element', {
                    'sitekey': '6Le2n4kmAAAAAGA2sQ-4rJpYthuvckW-HfPawoN2'
                });
            };
        </script>
        <script>
            window.onload = function () {
                let isValid = false;
                const form = document.getElementById("form-register");
                const error = document.getElementById("error");

                form.addEventListener("submit", function (event) {
                    event.preventDefault();
                    const response = grecaptcha.getResponse();
                    if (response) {
                        form.submit();
                    } else {
                        error.innerHTML = "Please check reCAPTCHA.";
                    }
                });
            };
        </script>


        <jsp:include page="../Component/footer.jsp"></jsp:include>
    </body>
</html>