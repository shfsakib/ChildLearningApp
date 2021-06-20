<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="log-in.aspx.cs" Inherits="ChildLearningApp.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log in</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="/MenuLink/Login/images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/MenuLink/Login/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/MenuLink/Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/MenuLink/Login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/MenuLink/Login/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/MenuLink/Login/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/MenuLink/Login/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/MenuLink/Login/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/MenuLink/Login/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="/MenuLink/Login/css/util.css">
    <link rel="stylesheet" type="text/css" href="/MenuLink/Login/css/main.css">
</head>
<body>
    <div class="limiter">
        <div class="container-login100" style="background-image: url('/MenuLink/Login/images/bg-01.jpg');">
            <div class="wrap-login100 p-t-30 p-b-50">
                <span class="login100-form-title p-b-41">Login
                </span>
                <form class="login100-form validate-form p-b-33 p-t-5" runat="server">

                    <div class="wrap-input100 validate-input" data-validate="Enter username">
                        <input class="input100" type="text" id="txtEmail" runat="server" name="username" placeholder="User name" autocomplete="off" />
                        <span class="focus-input100" data-placeholder="&#xe82a;"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Enter password">
                        <input class="input100" id="txtPassword" runat="server" type="password" name="pass" placeholder="Password" />
                        <span class="focus-input100" data-placeholder="&#xe80f;"></span>
                    </div>
                    <div class="wrap-input100 validate-input ml-4">
                    </div>
                    <div class="container-login100-form-btn m-t-32">
                        <button class="login100-form-btn" id="btnLogin" runat="server" onserverclick="btnLogin_OnServerClick">Login</button>
                    </div>
                    <br /> 
                </form>
            </div>
        </div>
    </div>
    <div id="dropDownSelect1"></div>
    <!--==============================================================================================-->
    <script src="/MenuLink/Login/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="/MenuLink/Login/vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="/MenuLink/Login/vendor/bootstrap/js/popper.js"></script>
    <script src="/MenuLink/Login/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="/MenuLink/Login/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="/MenuLink/Login/vendor/daterangepicker/moment.min.js"></script>
    <script src="/MenuLink/Login/vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="/MenuLink/Login/vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="/MenuLink/Login/js/main.js"></script>
</body>
</html>
