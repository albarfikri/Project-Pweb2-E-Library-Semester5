<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="registrasi.aspx.vb" Inherits="ProjectUas.registrasi" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Registrasi</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
                    <img src="https://localhost:44308/Template/Login/images/img-01.png" alt="IMG">
                </div>


                <form class="login100-form validate-form" runat="server">
                    <span class="login100-form-title">Registration Form
                    </span>
                    <div class="col-sm-16">
                        <div class="wrap-input100 validate-input" data-validate="Nama is required !">
                            <asp:TextBox runat="server" class="input100" type="text" name="nama" ID="nama" placeholder="Nama"></asp:TextBox>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                            </span>
                        </div>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Nik is required !">
                        <asp:TextBox runat="server" class="input100" type="number" name="nik" ID="nik" placeholder="Nik"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-chain" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Alamat is required !">
                        <asp:TextBox runat="server" class="input100" type="text" name="alamat" ID="alamat" placeholder="Alamat"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-address-card-o " aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="wrap-input100 validate-input" data-validate="DOB is required !">
                                <asp:TextBox runat="server" class="input100" type="date" name="ttl" ID="ttl" placeholder="TTL"></asp:TextBox>
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-calendar" aria-hidden="true"></i>
                                </span>
                            </div>
                        </div>


                        <div class="col-sm-8">
                            <div class="wrap-input100 validate-input" data-validate="Gender is required ">
                                <asp:DropDownList runat="server" class="input100" type="text" name="jenis_kelamin" ID="jenis_kelamin" placeholder="Jenis kelamin">
                                    <asp:ListItem>Pria</asp:ListItem>
                                    <asp:ListItem>Wanita</asp:ListItem>
                                </asp:DropDownList>
                                <span class="focus-input100"></span>
                                <span class="symbol-input100">
                                    <i class="fa fa-venus-mars" aria-hidden="true"></i>
                                </span>
                            </div>
                        </div>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                        <asp:TextBox runat="server" class="input100" type="text" name="email" ID="email" placeholder="Email"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Phone Number is required !">
                        <asp:TextBox runat="server" class="input100" type="number" name="no_hp" ID="no_hp" placeholder="No. Hp"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-mobile" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Username is required !">
                        <asp:TextBox runat="server" class="input100" type="text" name="username" ID="username" placeholder="Username"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Password is required !">
                        <asp:TextBox runat="server" class="input100" type="text" name="password" ID="password" placeholder="Password"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="container-login100-form-btn">
                        <asp:Button class="login100-form-btn" runat="server" Text="Login" ID="ButtonUpdate"></asp:Button>
                    </div>

                    <div class="text-center p-t-12">
                        <span class="txt1">Forgot
                        </span>
                        <a class="txt2" href="#">Username / Password?
                        </a>
                    </div>

                    <div class="text-center p-t-136">
                        <i class="fa fa-long-arrow-left m-l-5" aria-hidden="true"></i>
                        <a class="txt2" href="login.aspx">Have an account
							
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
