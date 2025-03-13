<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookDetails.aspx.cs" Inherits="BookShelf.BookDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="viewport" content="initial-scale=1, maximum-scale=1" />
    <!-- site metas -->
    <title>The Book Shelf</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sidebars/" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <!-- Responsive-->
    <link rel="stylesheet" href="css/responsive.css" />
    <!-- fevicon -->
    <link rel="icon" href="images/fevicon.png" type="image/gif" />
    <!-- font css -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap" rel="stylesheet" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css" />
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />
    <!-- Custom styles for this template -->
    <link href="css/sidebars.css" type="text/css" rel="stylesheet" />
    <style>
        .cartbtn {
            width: auto;
            float: left;
            font-size: 16px;
            color: #d78373;
            text-align: center;
            border-radius: 5px;
            border: 1px solid #d78373;
            text-transform: uppercase;
            padding: 8px;
            cursor: pointer;
        }
            .cartbtn:hover {
                color: #3b3b3b;
                border: 1px solid #3b3b3b;
            }

    </style>
</head>
<body>
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
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="UserHome.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Books</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Feedback.aspx">Feedback</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle user_icon" href="#" runat="server" id="navbarDropdown" role="button" data-bs-toggle="dropdown"  
                            aria-expanded="false"> <i class="fa fa-user" aria-hidden="true"></i> </a>
                        <ul class="dropdown-menu dropdown-menu-end">
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
                <h1 class="about_taital" style="font-size: 25px;">Book Details</h1>
            </div>
        </div>
    </div>
    <form id="form1" runat="server">

        <div class="info-section product-section shadow flex-column">
            <div class="container">
                <div class="row">
                    <%--Product Image--%>
                    <div class="col-md-6 text-center">
                        <asp:Image ID="Image1" runat="server" CssClass="img-fluid rounded img-thumbnail" AlternateText="Book Title" Height="350px" Width="250px" />
                    </div>
                    <%--Product Details--%>
                    <div class="col-md-6">
                        <h2 class="fw-bold">
                            <asp:Label ID="LblTitle" runat="server"></asp:Label>
                        </h2>
                        <h5 class="text-secondary mb-1">by
                       <a href="#">
                           <asp:Label ID="LblAuthor" runat="server"></asp:Label></a>
                        </h5>
                        <h5 class="text-secondary mb-3"><b>Publisher: </b>
                            <asp:Label ID="LblPublisher" runat="server"></asp:Label>
                            <asp:Label ID="LblPubYear" runat="server"></asp:Label>
                        </h5>
                        <h5 class="text-muted" style="text-align: justify; line-height: 1.6;">
                            <asp:Label ID="LblDescription" runat="server"></asp:Label>
                        </h5>
                        <h5 class="text-secondary"><b>ISBN:</b>
                            <asp:Label ID="LblISBN" runat="server"></asp:Label>
                        </h5>
                        <h4 class="text-danger">
                            <asp:Label ID="LblPrice" runat="server"></asp:Label>
                        </h4>
                        <h4>
                            <asp:Label ID="LblStock" runat="server" CssClass="fw-bold"></asp:Label>
                        </h4>
                        <h5 class="text-muted">
                            <asp:Label ID="LblQuantity" runat="server" Text="Quantity:"></asp:Label>
                        </h5>
                        <%--                    <h3 class="mb-3 ">
                        <asp:DropDownList ID="DdlQuantity" runat="server" CssClass="form-select form-select-sm"></asp:DropDownList>
                    </h3>--%>
                        <div class="btn-group btn-group-sm mb-5" role="group" aria-label="Small button group">
                            <button class="btn btn-outline-dark" type="button" id="btnMinus">-</button>
                            <input type="text" id="quantityInput" runat="server" class="text-center" style="width: 50px;" value="1" readonly="true  " />
                            <button class="btn btn-outline-dark" type="button" id="btnPlus">+</button>
                            <asp:HiddenField ID="hfStock" runat="server" />
                        </div>
                        <div>
                            <asp:Button ID="btnAddToCart" runat="server" CssClass="btn cartbtn" Text="Add to Cart" data-bs-toggle="modal"
                                data-bs-target="#cartModal" OnClick="btnAddToCart_Click" />
                        </div>

                        <div class="modal fade" id="cartModal" tabindex="-1" aria-labelledby="cartModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content rounded-3">
                                    <div class="modal-body">
                                        <h3 class="mb-0 text-center" id="cartModalLabel"><strong>Added To Cart</strong></h3>
                                        <p class="mb-0 text-center">Your item has been added to cart.</p>
                                    </div>
                                    <div class="modal-footer">
                                        <a href="ViewCart.aspx" class="btn btn-lg btn-link fs-6 text-decoration-none col-6 m-0 rounded-0 border-end">View Cart</a>
                                        <button type="button" class="btn btn-lg btn-link fs-6 text-decoration-none col-6 m-0 rounded-0" data-bs-dismiss="modal">No thanks</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <h6>
                            <asp:Label ID="Label1" runat="server" Visible="false"></asp:Label>
                        </h6>
                        <div class="d-flex justify-content-end">
                            <a href="UserHome.aspx" class="btn btn-link">Continue Shopping</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Javascript files-->
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <%--<script src="js/bootstrap.bundle.min.js"></script>--%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
        </script>
        <script src="js/jquery-3.0.0.min.js"></script>
        <script src="js/plugin.js"></script>
        <script src="js/modal.js"></script>
        <script src="js/tooltip.js"></script>
        <!-- sidebar -->
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/custom.js"></script>

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
                    <div class="form-group">
                        <textarea class="update_mail" placeholder="Your Email" rows="5" id="comment" name="Your Email"></textarea>
                        <div class="subscribe_bt"><a href="#">
                            <img src="images/teligram-icon.png" /></a></div>
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
</body>
</html>
