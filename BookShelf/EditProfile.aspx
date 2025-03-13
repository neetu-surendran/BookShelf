<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="BookShelf.EditProfile" %>

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
    <form id="form1" runat="server" class="needs-validation">
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
                <ul class="navbar-nav ms-auto mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="UserHome.aspx">Categories</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ViewCart.aspx">Cart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Feedback.aspx">Feedback</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle user_icon" href="#" role="button" data-bs-toggle="dropdown"  
                            aria-expanded="false"> <i class="fa fa-user" aria-hidden="true"></i> User</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Profile</a></li>
                            <li><a class="dropdown-item" href="#">Sign Out</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
        <div class="banner_section home_banner mb-5">
            <div class="container-fluid">
                <a class="navbar-brand" href="MainPage.aspx">
                    <img src="images/bookShelfLogo.png" /></a>
            </div>
        </div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="info-section shadow" style="margin-bottom: 100px;">
                    <div class="col-md-4 flex-column" style="width:500px;">
                        <asp:ImageButton ID="ImageButton1" runat="server" CssClass="rounded-circle mt-5" Width="150px" Height="150px" OnClick="ImageButton1_Click" />
                        <asp:FileUpload ID="FileUpload1" runat="server" Visible="false" />
                    </div>
                    <div class="col-md-8">
                        <h1 class="pt-3" style="font-weight: 600">Edit Profile</h1>
                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="txtName" class="form-label text-dark">Full Name</label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="em" class="form-label text-dark">E-Mail</label>
                            </div>
                            <div class="col-md-8">
                                <input type="email" runat="server" class="form-control" id="em" required="required" />
                            </div>
                        </div>

                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="address" class="form-label text-dark">Address</label>
                            </div>
                            <div class="col-md-8">
                                <textarea class="form-control" runat="server" rows="2" id="address" required="required"></textarea>
                            </div>
                        </div>

                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="txtLand" class="form-label text-dark">Landmark</label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtLand" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="txtState" class="form-label text-dark">State</label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtState" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="txtDist" class="form-label text-dark">District</label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtDist" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="pin" class="form-label text-dark">Pin</label>
                            </div>
                            <div class="col-md-8">
                                <input type="number" class="form-control" runat="server" id="pin" required="required" />
                            </div>
                        </div>

                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="phone" class="form-label text-dark">Mobile Number</label>
                            </div>
                            <div class="col-md-8">
                                <input type="tel" class="form-control" runat="server" id="phone" required="required" />
                            </div>
                        </div>

                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="txtuname" class="form-label text-dark">Username</label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtuname" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="txtPwd" class="form-label text-dark">Password</label>
                            </div>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtPwd" runat="server" class="form-control" ></asp:TextBox>
                            </div>
                        </div>
                        <div class="m-3">
                            <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-dark rounded-3" Text="Update" OnClick="btnUpdate_Click" />
                            <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-outline-dark rounded-3" Text="Cancel" OnClick="btnCancel_Click"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
