<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegister.aspx.cs" Inherits="BookShelf.AdminRegister" %>

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
    <nav class="navbar navbar-expand-md bg-dark border-bottom border-body" data-bs-theme="dark">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar"
                                aria-controls="collapsibleNavbar" aria-expanded="false" aria-label="Toggle navigation">
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
    <div class="banner_section general_banner">
        <div class="container-fluid">
            <a class="navbar-brand" href="MainPage.aspx"><img src="images/bookShelfLogo.png"/></a> 
        </div>
    </div>

    <div class="about_section_2 text-bg-light">
            <div class="container">
                <div class="row">
                    <h1 class="about_taital" style="font-size: 25px;">Admin Register</h1>
                </div>
            </div>
        </div>


   <form id="form1" runat="server" class="w-100">

       <div class="container mb-5 w-50">                       
                <div class="row my-3">
                    <div class="col-md-4">
                        <asp:Label ID="Label1" runat="server" Text="Full Name" CssClass="form-label text-dark" ></asp:Label>
                    </div>
                    <div class="col-md-8 ">
                        <asp:TextBox ID="TxtAName" runat="server" CssClass="form-control border-dark-subtle"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtAName" ErrorMessage="Please enter name"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-md-4">
                        <asp:Label ID="Label2" runat="server" Text="E-Mail" CssClass="form-label text-dark"></asp:Label>
                    </div>
                    <div class="col-md-8 ">
                        <asp:TextBox ID="TxtAEm" runat="server" CssClass="form-control border-dark-subtle"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtAEm" ErrorMessage="Invalid E-Mail format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-md-4">
                        <asp:Label ID="Label3" runat="server" Text="Address" CssClass="form-label text-dark"></asp:Label>                      
                    </div>
                    <div class="col-md-8 ">
                        <asp:TextBox ID="TxtAdd" runat="server" TextMode="MultiLine" CssClass="form-control border-dark-subtle"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtAdd" ErrorMessage="Address cannot be empty"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-md-4">
                        <asp:Label ID="Label4" runat="server" Text="Phone" CssClass="form-label text-dark"></asp:Label>
                    </div>
                    <div class="col-md-8 ">
                        <asp:TextBox ID="TxtPhone" runat="server" CssClass="form-control border-dark-subtle"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtPhone" ErrorMessage="Invalid Phone number" ValidationExpression="^[6-9]\d{9}$"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-md-4">
                        <asp:Label ID="Label7" runat="server" Text="Username" CssClass="form-label text-dark"></asp:Label>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="TxtUname" runat="server" CssClass="form-control border-dark-subtle"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtUname" ErrorMessage="Username cannot be empty"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="row my-3">
                    <div class="col-md-4">
                        <asp:Label ID="Label8" runat="server" Text="Password" CssClass="form-label text-dark"></asp:Label>
                    </div>
                    <div class="col-md-8">
                        <asp:TextBox ID="TxtPwd" runat="server" CssClass="form-control border-dark-subtle"></asp:TextBox>
                    </div>
                </div>
               <div class="row my-3">
                   <div class="col-md-4">
                       <asp:Label ID="Label9" runat="server" Text="Confirm Password" CssClass="form-label text-dark"></asp:Label>
                   </div>
                   <div class="col-md-8">
                       <asp:TextBox ID="TxtConPwd" runat="server" CssClass="form-control border-dark-subtle"></asp:TextBox>
                       <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtPwd" ControlToValidate="TxtConPwd" ErrorMessage="Password mismatch"></asp:CompareValidator>
                   </div>
               </div>
                <div class="row my-3">
                    <div class="col-md-4">
                     </div>
                    <div class="col-md-8">
                         <asp:Button ID="BtnAdmReg" runat="server" Text="Register" CssClass="btn btn-dark rounded-4 mr-3" OnClick="BtnAdmReg_Click"  />
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
                   <p class="footer_text">   Opening Times:  Monday-Friday 9am - 5pm</p>
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
     <script src="js/sidebars.js"></script>
   
</body>
</html>
