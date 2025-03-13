<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="BookShelf.Invoice" %>

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
      <link href="css/sidebars.css" type="text/css" rel="stylesheet"/>
    <style>
        * {
            box-sizing: border-box;
        }
        .row{
            display: flex;
            flex-wrap: wrap;
        }
        .col-25{
            flex: 25%;
            padding: 0 16px;
        }
        .col-75 {
            flex: 75%;
            padding: 0 16px;
        }
        span.price {
            float: right;
            color: grey;
        }

        /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
        @media (max-width: 800px) {
            .row {
                flex-direction: column-reverse;
            }

            .col-25 {
                margin-bottom: 20px;
            }
        }
    </style>
</head>
<body style="background-color: white">
    <nav class="navbar navbar-expand-md bg-dark border-bottom border-body" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="MainPage.aspx">
                <img src="bn_images/anotherShelf.jpg" alt="Avatar Logo" style="width: 40px;" class="rounded-pill"/>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar"
                                aria-controls="collapsibleNavbar" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
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
                <form class="d-flex" role="search">
                    <div class="input-group mb-3">
                        <input class="form-control" type="search" placeholder="Search" aria-label="Search"/>
                        <button class="input-group-text btn btn-outline-primary" type="button" id="searchButton">
                            <i class="bi bi-search" ></i>
                        </button>
                    </div>
                    <!-- <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"> 
                    <button class="btn btn-outline-success" type="submit">Search</button> -->
                </form>
            </div>
        </div>
    </nav>
    <div class="about_section_2 text-bg-light">
        <div class="container">
            <div class="row">
                <h1 class="about_taital" style="font-size: 25px;">Order Invoice</h1>
            </div>
        </div>
    </div>
    <form id="form1" runat="server">
        <div class="container">
            <h2 id="display" runat="server" class="mb-3 text-success" style="font-weight: 600">Hi </h2>
            <span>Your order has been placed.</span>
            <p>Thank you for shopping with us. We'll send you an email with tracking information when your item ships.</p>
            <p>Your order and shipping details are displayed below:</p>
            <div class="row">
                <div class="col-md-9 py-1 mb-5 p-3">
                    <div class="info-section shadow flex-column p-1">
                        <div class="hstack my-2 justify-content-around">
                            <dl class="address-list">
                                <dt>Shipping Address:</dt>
                                <dd id="addr" runat="server"></dd>
                                <dd id="land" runat="server"></dd>
                                <dd id="dist" runat="server"></dd>
                                <dd id="sp" runat="server"></dd>
                                <dd id="ph" runat="server">Phone: </dd>
                            </dl>
                            <div class="vr"></div>
                            <dl class="address-list">
                                <dt>Payment Type:</dt>
                                <dd id="pay" runat="server"></dd>
                            </dl>
                            <div class="vr"></div>
                            <dl class="address-list">
                                <dt>Order:</dt>
                                <dd>Confirmed</dd>
                                <dd id="bid" runat="server">Bill ID: </dd>
                                <dd id="bdate" runat="server">Bill Date: </dd>
                            </dl>
                        </div>
                        <div class="mx-4">
                            <h2 class="text-center m-3" style="font-weight:600">Order Details</h2>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered mx-2">
                                <Columns>
                                    <asp:BoundField DataField="Order_Id" HeaderText="ID" Visible="False" >
                                    <HeaderStyle Width="20%" />
                                    </asp:BoundField>
                                    <asp:ImageField DataImageUrlField="Cover_Image" HeaderText="Image">
                                        <ControlStyle CssClass="rounded" Height="100px" Width="100px" />
                                    </asp:ImageField>
                                    <asp:BoundField DataField="Title" HeaderText="Title" >
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" >
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Order_Status" HeaderText="Status" >
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Sub_Total" HeaderText="Sub Total" >
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                         </div>

                        <%--class="d-flex justify-content-center m-5"--%>
                        <div class="m-5">
                            <div class="vstack gap-2 col-md-5 mx-auto">
                                <asp:Button ID="BtnContinueAfterPay" runat="server" Text="Continue Shopping"
                                    CssClass="btn btn-dark rounded-pill" OnClick="BtnContinueAfterPay_Click" />
                                <asp:Button ID="BtnSendFb" runat="server" CssClass="btn btn-outline-dark rounded-pill"
                                    Text="Send Feedback" OnClick="BtnSendFb_Click" />
                            </div>
                        </div>                        
                      </div>
                </div>
                <div class="col-md-3 py-1">
                    <div class="info-section shadow flex-column p-3">
                        <%--<h4>Cart <span class="price" style="color: black"><i class="fa fa-shopping-cart"></i><b>4</b></span></h4>--%>
                        <h4>Total Payment: </h4>
                        <p><span>Quantity: </span> <span id="qty" runat="server" class="price"></span></p>
                        <p><span>Sub-Total:</span> <span id="stotal" runat="server" class="price">₹</span></p>
                        <p><span>Delivery:</span> <span class="price">FREE</span></p>
                        <p><span>Discount:</span> <span class="price">₹0</span></p>
                        <hr/>
                        <p>Grand Total: <span id="gtotal" runat="server" class="price" style="color: black">₹</span></p>
                    </div>
                </div>
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
</body>
</html>
