<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="login/css/style.css" type="text/css" media="all">
    <link href="http://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script type="text/javascript" src="public/build/js/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            $("a[href='#']").mouseenter(function () {
                $(this).css("color","#FFEB3B");
            });
            $("a[href='#']").mouseleave(function () {
                $(this).css("color","#FFF");
            });
        });
    </script>
</head>
<body>
<h1>SLEEK LOGIN FORM</h1>
<h2>Log in to your Account</h2>
<div class="containeragileits">
    <form action="" method="post">
        <input type="text"  placeholder="USERNAME" required="" id="user_username">
        <input type="password"  placeholder="PASSWORD" required="" id="user_password">
        <ul class="agileinfotickwthree">
            <li>
                <input type="checkbox" id="brand1" value="">
                <label for="brand1"><span></span>Remember me</label>
                <a href="#" style="float: right;color: #FFF;font-size: 16px;">Forget the password</a>
            </li>
        </ul>
        <div class="aitssendbuttonw3ls">
            <input type="button" value="LOGIN" onclick="login()">
            <p><a href="#">REGISTER NEW ACCOUNT <span>→</span></a></p>
            <div class="clear"></div>
        </div>
    </form>
</div>
<div class="w3footeragile">
    <p> &copy; 2018 Sleek Login Form. All Rights Reserved </p>
</div>
</body>
</html>
<script type="text/javascript">
    function login() {
        var user_username = $("#user_username").val();
        var user_password = $("#user_password").val();
        $.ajax({
            type:'post',
            url:'/login',
            data:{user_username:user_username,user_password:user_password},
            success:function (data) {
                console.log(data.success);
                if(data.success){
                    location.href = "/index";
                }else{
                    alert("失败");
                }
            }
        });
    }
</script>