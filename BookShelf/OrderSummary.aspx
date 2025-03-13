<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderSummary.aspx.cs" Inherits="BookShelf.OrderSummary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
<body style="background-color: beige">
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
                <h1 class="about_taital" style="font-size: 25px;">Order Confirmation</h1>
            </div>
        </div>
    </div>

    <form id="form1" runat="server">
        <div class="info-section order-section flex-column shadow">
            <h3 id="display" runat="server" style="font-weight:600">Delivering to </h3>
            <div class="d-flex">
                <p id="order" runat="server">Ordered on </p>
                <p id="bid" runat="server">Bill Id: </p>
            </div>
            <hr/>
            <div class="d-flex justify-content-between">
                <dl class="address-list">
                    <dt>Shipping Address:</dt>
                    <dd id="addr" runat="server"></dd>
                    <dd id="land" runat="server"></dd>
                    <dd id="dist" runat="server"></dd>
                    <dd id="sp" runat="server"></dd>
                    <dd id="ph" runat="server">Phone: </dd>
                </dl>
                <dl class="address-list">
                     <dt>Payment Type:</dt>
                     <dd id="pay" runat="server"></dd>
                </dl>
                <dl class="address-list">
                    <dt>Status:</dt>
                    <dd>Ordered</dd>
                </dl>
            </div>


            <div class="my-4 mx-2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass ="table table-striped">
                    <Columns>
                        <asp:BoundField DataField="Order_Id" HeaderText="ID" Visible="False" />
                        <asp:ImageField DataImageUrlField="Cover_Image" HeaderText="Book">
                            <ControlStyle Height="60px" Width="50px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Title" HeaderText="Title" />
                        <asp:BoundField DataField="Quantity" HeaderText="Qty" />
                        <asp:BoundField DataField="Price" HeaderText="Unit Price" />
                        <asp:BoundField DataField="Order_Status" HeaderText="Status" />
                        <asp:BoundField DataField="Sub_Total" HeaderText="Subtotal" />
                    </Columns>
                </asp:GridView>
            </div>

<%--            <div class="d-flex justify-content-end">
                <dl class="address-list">
                    <dt>Summary:</dt>
                    <dd id="qty" runat="server">Total Items:        </dd>
                    <dd id="stotal" runat="server">Sub-Total:        ₹ </dd>
                    <dd id="del" runat="server">Delivery:        ₹ </dd>
                    <dd id="disc" runat="server">Discount:        ₹ </dd>
                    <dd id="gtotal" runat="server">Grand Total:        ₹ </dd>
                </dl>
            </div>--%>

             <div class="row d-flex justify-content-end">
                 <div class="card mt-4 mx-4" style="max-width: 250px;">
                     <div class="card-body">
                         <h5 class="card-title" style="font-weight: 600">Order Summary</h5>
                         <ul class="list-group list-group-flush">
                             <li class="list-group-item d-flex justify-content-between">
                                 <span>Total Items:</span>
                                 <span id="qty" runat="server"></span>
                             </li>
                             <li class="list-group-item d-flex justify-content-between">
                                 <span>Total:</span>
                                 <span id="stotal" runat="server">₹</span>
                             </li>
                             <li class="list-group-item d-flex justify-content-between">
                                 <span>Delivery:</span>
                                 <span id="del" runat="server">₹</span>
                             </li>
                             <li class="list-group-item d-flex justify-content-between">
                                 <span>Discount:</span>
                                 <span id="disc" runat="server">₹</span>
                             </li>
                             <li class="list-group-item d-flex justify-content-between font-weight-bold">
                                 <span>Grand Total:</span>
                                 <span id="gtotal" runat="server">₹</span>
                             </li>
                         </ul>
                     </div>
                 </div>
             </div>
            
            <div class="hstack gap-3 justify-content-center mt-5">
                <asp:Button ID="BtnPay" runat="server" Text="Continue to Checkout" CssClass =" btn btn-dark rounded-pill" OnClick="BtnPay_Click" />
                <asp:Button ID="BtnCancelOrder" runat="server" Text="Cancel Order" CssClass =" btn btn-outline-dark rounded-pill" OnClick="BtnCancelOrder_Click" />
            </div>
        </div>

      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
       </script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
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
</body>
</html>
