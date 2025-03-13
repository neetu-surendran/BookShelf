﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewAllBooks.aspx.cs" Inherits="BookShelf.ViewAllBooks" %>

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
          <style type="text/css">
              .card {
                  background-color: #fefae0;
                  border-radius: 10px;
                  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                  margin: 10px;
                  padding: 15px;
                  border: 1px solid #ddd;
                  height: 350px;
                  width: 250px;
                  display: flex;
                  flex-direction: column;
                  justify-content: space-between;
              }
              .card-title {
                  font-size: 16px;
                  font-weight: bold;
                  align-content: center;
              }
              .card-body {
                  display: flex;
                  flex-direction: column;
                  justify-content: space-between;
                  height: 100%;
              }
              .card-img-top {
                  height: 150px; 
                  width: auto; 
                  object-fit: contain;
              }
              .card-text {
                  font-size: 0.9rem;
                  color: #6c757d;
              }
          </style>
</head>
<body>
<form id="form1" runat="server">
    <nav class="navbar navbar-expand-md bg-dark border-bottom border-body" data-bs-theme="dark">
        <div class="container-fluid">
<%--            <a class="navbar-brand" href="MainPage.aspx">
                <img src="bn_images/anotherShelf.jpg" alt="Avatar Logo" style="width: 40px;" class="rounded-pill"/>
            </a>--%>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar"
                                aria-controls="collapsibleNavbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <div class="d-flex input-group justify-content-start">
                    <input class="form-control" style="max-width: 250px;" type="search" id="searchBooks"
                        placeholder="Search Books" runat="server" aria-label="Search" />
                    <button class="input-group-text btn btn-outline-primary" runat="server" type="button" id="searchButton"
                        onserverclick="searchButton_ServerClick">
                        <i class="bi bi-search"></i>
                    </button>
                </div>
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="UserHome.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#x">Books</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Feedback.aspx">Feedback</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle user_icon" href="#" runat="server" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i></a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="EditProfile.aspx">Profile</a></li>
                            <li><a class="dropdown-item" href="ViewCart.aspx">My Cart</a></li>
                            <li><a class="dropdown-item" href="ViewOrders.aspx">My Orders</a></li>
                            <li><a class="dropdown-item" href="Logout.aspx">Sign Out</a></li>
                        </ul>
                    </li>
                </ul>                
            </div>
        </div>
    </nav>
    <div class="about_section_2 text-bg-light">
            <div class="container">
                <div class="row">
                    <h1 class="about_taital" style="font-size: 25px;">Books</h1>
                </div>
            </div>
        </div>
    
    <asp:Panel ID="Panel1" runat="server" Visible="true" CssClass="mb-5 pb-5">
        <div class="container">
            <div class="row">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" Width="734px">
                    <ItemTemplate>
                        <div class="col-md-12 my-4">
                            <div class="card">
                                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="card-img-top" CommandArgument='<%# Eval("Book_Id") %>' ImageUrl='<%# Eval("Cover_Image") %>' OnCommand="ImageButton1_Command" />
                                <div class="card-body">
                                    <div class="card-title" runat="server" id="divTitle"><%# Eval("Title") %></div>
                                    <div runat="server" id="divAuthor"><%# "by "+Eval("Author") %></div>
                                    <div runat="server" id="divPrice"><%# "₹" + Eval("Price") %></div>
                                    <%--<asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" BorderWidth="0px" Font-Bold="True" Height="81px" ReadOnly="True" Rows="5" Text='<%# Eval("Title") %>' TextMode="MultiLine" Width="138px"></asp:TextBox>
                                    <asp:Label ID="Label3" runat="server" Text='<%# "by "+Eval("Author") %>'></asp:Label>
                                    <asp:Label ID="Label4" runat="server" Text='<%# "₹" + Eval("Price") %>'></asp:Label>--%>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Visible="false" CssClass="mb-5 pb-5">
        <div class="info-section shadow" style="margin: 100px;">
            <p class="text-center m-5" style="font-size: 18px;"> Sorry! No books match your search in this category.</p>
        </div>
    </asp:Panel>
        

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
                  <div class="form-group">
                     <textarea class="update_mail" placeholder="Your Email" rows="5" id="comment" name="Your Email"></textarea>
                     <div class="subscribe_bt"><a href="#"><img src="images/teligram-icon.png"/></a></div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- footer section end -->

      <!-- copyright section start -->
      <div class="copyright_section ">
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
</form>
</body>
</html>
