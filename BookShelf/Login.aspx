<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BookShelf.LoginM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <!-- basic -->
      <meta charset="utf-8"/>
      <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
      <!-- site metas -->
      <title>The Book Shelf</title>
      <meta name="keywords" content=""/>
      <meta name="description" content=""/>
      <meta name="author" content=""/>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet"/>
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
      <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sidebars/"/>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3"/>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
        </script>
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css/style.css"/>
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css"/>
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- font css -->
      <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap" rel="stylesheet"/>
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css"/>
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"/>
      <!-- Custom styles for this template -->
      <link href="css/sidebars.css" type="text/css" rel="stylesheet"/>
</head>

<body>
    <%--<nav class="navbar navbar-expand-md bg-dark border-bottom border-body" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="MainPage.aspx">
                <img src="bn_images/anotherShelf.jpg" alt="Avatar Logo" style="width: 40px;" class="rounded-pill"/>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar"
                                aria-controls="collapsibleNavbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav ml-auto mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" href="MainPage.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Login.aspx">Login</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" 
                                aria-expanded="false">Sign Up</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="AdminRegister.aspx"> Admin</a></li>
                            <li><a class="dropdown-item" href="UserRegister.aspx"> User</a></li>
                        </ul>
                    </li>
                </ul>                
            </div>
        </div>
    </nav>--%>
    <nav class="navbar navbar-expand-md bg-dark border-bottom border-body" data-bs-theme="dark">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="MainPage.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="coffees.html">Books</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.html">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">Contact</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="AdminRegister.aspx">Admin</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle user_icon" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-user" aria-hidden="true"></i>
                                User
                            </a>
                            <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="Login.aspx">Login</a>
                                <a class="dropdown-item" href="UserRegister.aspx">Sign Up</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    <div class="banner_section home_banner">
        <div class="container-fluid">
            <a class="navbar-brand" href="MainPage.aspx">
                <img src="images/bookShelfLogo.png" /></a>
        </div>
    </div>

    <form id="form1" runat="server" class="needs-validation">
        <div class="container mx-auto">
            <div class="row justify-content-center">
                <div class="info-section shadow" style="margin-bottom: 100px;">
                    <div class="col-md-4">
                        <img src="bn_images/bookoClock.jpg" />
                    </div>
                    <div class="col-md-8">
                        <h1 class="pt-3" style="font-weight: 600">Welcome Back!</h1>
                        <h5 class="pt-2">New User? Register <a href="UserRegister.aspx">here</a>.</h5>
                        <div class="row my-3">
                            <div class="col-md-4">
                                <asp:Label ID="LblUserN" runat="server" Text="Username"></asp:Label>
                            </div>
                            <div class="col-md-8">
                                <input type="text" runat="server" class="form-control" id="TxtUserN" placeholder="Enter username" required="required"/>
                            </div>
                        </div>
                        <div class="row my-3">
                            <div class="col-md-4">
                                <asp:Label ID="LblUserPwd" runat="server" Text="Password"></asp:Label>
                            </div>
                            <div class="col-md-8">
                                <input type="password" runat="server" class="form-control" id="TxtUserPwd" placeholder="Enter password" required="required"/>
                            </div>
                        </div>
                        <div class="row my-5 justify-content-center">
                            <asp:Button ID="BtnSignIn" runat="server" Width="250" CssClass="btn btn-dark" Text="Sign In"  OnClick="BtnSignIn_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

        <!-- footer section start -->
        <div class="footer_section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="address_text">Address</h1>
                        <p class="footer_text">Unit 9A, Cleveragh Business Centre, Sligo, Ireland </p>
                        <p class="footer_text">Opening Times:  Monday-Friday 9am - 5pm</p>
                        <div class="location_text">
                            <ul>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-phone" aria-hidden="true"></i><span class="padding_left_10">+353-71-9148263</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-envelope" aria-hidden="true"></i><span class="padding_left_10">orders@bookshelf.ie</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer section end -->

        <!-- copyright section start -->
        <div class="copyright_section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-sm-12">
                        <p class="copyright_text">2020 All Rights Reserved. Design by <a href="https://html.design">Free Html Templates</a></p>
                    </div>
                    <div class="col-lg-6 col-sm-12">
                        <div class="footer_social_icon">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- copyright section end -->

       <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
     <script src="js/custom.js"></script>
</body>
</html>
