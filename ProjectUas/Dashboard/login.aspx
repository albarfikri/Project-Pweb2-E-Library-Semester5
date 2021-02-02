<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="ProjectUas.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="https://localhost:44308/Template/Login/images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="https://localhost:44308/Template/Login/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="https://localhost:44308/Template/Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="https://localhost:44308/Template/Login/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="https://localhost:44308/Template/Login/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="https://localhost:44308/Template/Login/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="https://localhost:44308/Template/Login/css/util.css">
    <link rel="stylesheet" type="text/css" href="https://localhost:44308/Template/Login/css/main.css">
    <!--===============================================================================================-->
</head>
<body>

    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="login100-pic js-tilt" data-tilt>
                    <img src="https://localhost:44308/Template/Login/images/orang.png" alt="IMG">
                </div>

                <form class="login100-form validate-form" runat="server">
                    <span class="login100-form-title">Login Form
                    </span>

                    <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                        <asp:TextBox runat="server" class="input100" type="text" name="username" ID="username" placeholder="Username"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Password is required">
                        <asp:TextBox runat="server" class="input100" type="password" name="pass" placeholder="Password" ID="password"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="container-login100-form-btn">
                        <asp:Button class="login100-form-btn" runat="server" Text="Login" ID="ButtonLogin"></asp:Button>
                    </div>

                    <div class="text-center p-t-12">
                        <span class="txt1">Forgot
                        </span>
                        <a class="txt2" href="#">Username / Password?
                        </a>
                    </div>
                    <div class="text-center p-t-136">
                        <a class="txt2" href="registrasi.aspx">Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                        </a><br />
                        <a class="txt2" href="index.aspx"><small>Homepage</small>
                        </a>
                    </div>

                </form>
            </div>
        </div>
    </div>


    <!--===============================================================================================-->
    <script src="https://localhost:44308/Template/Login/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="https://localhost:44308/Template/Login/vendor/bootstrap/js/popper.js"></script>
    <script src="https://localhost:44308/Template/Login/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="https://localhost:44308/Template/Login/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="https://localhost:44308/Template/Login/vendor/tilt/tilt.jquery.min.js"></script>
    <script>
        $('.js-tilt').tilt({
            scale: 1.1
        })
    </script>
    <!--===============================================================================================-->
    <script src="https://localhost:44308/Template/Login/js/main.js"></script>

</body>
</html>
