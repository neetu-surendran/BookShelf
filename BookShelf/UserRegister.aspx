<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="BookShelf.UserRegister" %>

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
</head>
<body>
    <nav class="navbar navbar-expand-md bg-dark border-bottom border-body" data-bs-theme="dark" style="height:50px;">
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
                <img src="images/bookShelfLogo.png" style="width: 100px; height: 100px;" /></a>
        </div>
    </div>

    <form id="form1" runat="server">


        <!-- style start -->
            <%--<style type="text/css">
                .auto-style4 {
                    width: 235px;
                }

                .auto-style8 {
                    width: 88px;
                }
                .auto-style10 {
                    width: 88px;
                    height: 27px;
                }
                .auto-style11 {
                    width: 235px;
                    height: 27px;
                }
                .auto-style14 {
                    height: 27px;
                }
                .auto-style18 {
                    width: 142px;
                    height: 27px;
                }
                .auto-style19 {
                    width: 142px;
                }
                .auto-style20 {
                    width: 241px;
                }
                .auto-style21 {
                    width: 241px;
                    height: 27px;
                }
                .auto-style23 {
                    width: 255px;
                    height: 27px;
                }
                .auto-style24 {
                    width: 188px;
                }
                .auto-style25 {
                    width: 188px;
                    height: 27px;
                }
                .auto-style26 {
                    width: 255px;
                }
            </style>--%>
        <!-- table start -->
        <%--<table class="w-100">
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">
            <asp:Label ID="Label1" runat="server" Text="Name" BackColor="White" Font-Bold="False"></asp:Label>
            </td>
            <td class="auto-style4">
            <asp:TextBox ID="TxtNameUser" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style24">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtNameUser" ErrorMessage="Name cannot be empty"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style19">
            <asp:Label ID="Label6" runat="server" Text="Pincode" BackColor="White" Font-Bold="False"></asp:Label>
            </td>
            <td class="auto-style20">
            <asp:TextBox ID="TxtPin" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtPin" ErrorMessage="Invalid Pincode" ValidationExpression="^[1-9][0-9]{5}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">
            <asp:Label ID="Label2" runat="server" Text="E-Mail" BackColor="White" Font-Bold="False"></asp:Label>
            </td>
            <td class="auto-style4">
            <asp:TextBox ID="TxtEMailU" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style24">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEMailU" ErrorMessage="Inavlid E-Mail format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style19">
            <asp:Label ID="Label7" runat="server" Text="Phone" BackColor="White" Font-Bold="False"></asp:Label>
            </td>
            <td class="auto-style20">
            <asp:TextBox ID="TxtPhone" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtPhone" ErrorMessage="Invalid Phone number" ValidationExpression="^[6-9]\d{9}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">
            <asp:Label ID="Label3" runat="server" Text="Address" BackColor="White" Font-Bold="False"></asp:Label>
            </td>
            <td class="auto-style4">
            <asp:TextBox ID="TxtAddU" runat="server" Height="30px" Width="200px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style24">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtAddU" ErrorMessage="Address cannot be empty"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style19">
            <asp:Label ID="Label8" runat="server" Text="Photo" BackColor="White" Font-Bold="False"></asp:Label>
            </td>
            <td class="auto-style20">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="34px" Width="200px" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Please upload photo"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">
            <asp:Label ID="Label4" runat="server" Text="Landmark" BackColor="White" Font-Bold="False"></asp:Label>
            </td>
            <td class="auto-style4">
            <asp:TextBox ID="TxtLandM" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style24">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtLandM" ErrorMessage="Please specify landmark"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style19">
            <asp:Label ID="Label9" runat="server" Text="Username" BackColor="White" Font-Bold="False"></asp:Label>
            </td>
            <td class="auto-style20">
            <asp:TextBox ID="TxtUsername" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtUsername" ErrorMessage="Username cannot be empty"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
            <td class="auto-style25"></td>
            <td class="auto-style18"></td>
            <td class="auto-style21"></td>
            <td class="auto-style14"></td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">
            <asp:Label ID="Label5" runat="server" Text="District" BackColor="White" Font-Bold="False"></asp:Label>
            </td>
            <td class="auto-style4">
            <asp:TextBox ID="TxtDist" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style24">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtDist" ErrorMessage="Please specify district"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style19">
            <asp:Label ID="Label10" runat="server" Text="Password" BackColor="White" Font-Bold="False"></asp:Label>
            </td>
            <td class="auto-style20">
            <asp:TextBox ID="TxtPwd" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">
            <asp:Label ID="Label11" runat="server" Text="State" BackColor="White" Font-Bold="False"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="193px">
                    <asp:ListItem Value="0">-State-</asp:ListItem>
                    <asp:ListItem Value="Kerala">Kerala</asp:ListItem>
                    <asp:ListItem Value="Tamil Nadu">Tamil Nadu</asp:ListItem>
                    <asp:ListItem Value="Karnataka">Karnataka</asp:ListItem>
                    <asp:ListItem Value="Andhra Pradesh">Andhra Pradesh</asp:ListItem>
                    <asp:ListItem Value="Telangana">Telangana</asp:ListItem>
                    <asp:ListItem Value="Maharashtra">Maharashtra</asp:ListItem>
                    <asp:ListItem Value="New Delhi">New Delhi</asp:ListItem>
                    <asp:ListItem Value="Goa">Goa</asp:ListItem>
                    <asp:ListItem Value="Gujarat">Gujarat</asp:ListItem>
                    <asp:ListItem Value="Himachal Pradesh">Himachal Pradesh</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style24">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select a State" InitialValue="0"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style19">
            <asp:Label ID="Label12" runat="server" Text="Confirm Password" BackColor="White" Font-Bold="False"></asp:Label>
            </td>
            <td class="auto-style20">
            <asp:TextBox ID="TxtComPwd" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtPwd" ControlToValidate="TxtComPwd" ErrorMessage="Password Mismatch"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style24">
            <asp:Button ID="BtnUserReg" runat="server" Text="Register" BackColor="Black" CssClass="btn btn-dark rounded" Font-Bold="False" Font-Names="Arial" ForeColor="White" Width="123px" OnClick="BtnUserReg_Click" />
            </td>
            <td class="auto-style19">
            <asp:Label ID="LblRegUser" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>--%>
        <div class="container d-flex">
            <div class="row mx-auto">
                <div class="card shadow" style="width: 1000px; margin-bottom:100px; justify-content: flex-start;">
                    <div class="about_section_2 text-bg-light">
                        <div class="container">
                            <div class="row">
                                <h1 class="about_taital" style="font-size: 25px;">User Register</h1>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="TxtNameUser" class="form-label text-dark fw-semibold">Name:</label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TxtNameUser" runat="server" CssClass="form-control border-dark-subtle" required="required"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="TxtEMailU" class="form-label text-dark fw-semibold">E-Mail:</label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TxtEMailU" runat="server" type="email" CssClass="form-control border-dark-subtle" required="required"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="TxtAddU" class="form-label text-dark fw-semibold">Address:</label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TxtAddU" runat="server" CssClass="form-control border-dark-subtle" required="required"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="TxtLandM" class="form-label text-dark fw-semibold">Landmark:</label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TxtLandM" runat="server" CssClass="form-control border-dark-subtle" required="required"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="TxtDist" class="form-label text-dark fw-semibold">District:</label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TxtDist" runat="server" CssClass="form-control border-dark-subtle" required="required"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="DropDownList1" class="form-label text-dark fw-semibold">State:</label>
                            </div>
                            <div class="col-md-6">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select border-dark-subtle">
                                    <asp:ListItem Value="0">-State-</asp:ListItem>
                                    <asp:ListItem Value="Kerala">Kerala</asp:ListItem>
                                    <asp:ListItem Value="Tamil Nadu">Tamil Nadu</asp:ListItem>
                                    <asp:ListItem Value="Karnataka">Karnataka</asp:ListItem>
                                    <asp:ListItem Value="Andhra Pradesh">Andhra Pradesh</asp:ListItem>
                                    <asp:ListItem Value="Telangana">Telangana</asp:ListItem>
                                    <asp:ListItem Value="Maharashtra">Maharashtra</asp:ListItem>
                                    <asp:ListItem Value="New Delhi">New Delhi</asp:ListItem>
                                    <asp:ListItem Value="Goa">Goa</asp:ListItem>
                                    <asp:ListItem Value="Gujarat">Gujarat</asp:ListItem>
                                    <asp:ListItem Value="Himachal Pradesh">Himachal Pradesh</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                                                <div class="row my-3">
                            <div class="col-md-4">
                                <label for="TxtPin" class="form-label text-dark fw-semibold">Pincode:</label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TxtPin" runat="server" CssClass="form-control border-dark-subtle" required="required"></asp:TextBox>
                            </div>
                        </div>
                                                <div class="row my-3">
                            <div class="col-md-4">
                                <label for="TxtPhone" class="form-label text-dark fw-semibold">Phone:</label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TxtPhone" runat="server" CssClass="form-control border-dark-subtle" required="required"></asp:TextBox>
                            </div>
                        </div>
                                                <div class="row my-3">
                            <div class="col-md-4">
                                <label for="FileUpload1" class="form-label text-dark fw-semibold">Photo:</label>
                            </div>
                            <div class="col-md-6">
                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control border-dark-subtle" required="required"/>
                            </div>
                        </div>
                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="TxtUsername" class="form-label text-dark fw-semibold">Username:</label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TxtUsername" runat="server" CssClass="form-control border-dark-subtle" required="required"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="TxtPwd" class="form-label text-dark fw-semibold">Password:</label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TxtPwd" runat="server" CssClass="form-control border-dark-subtle" required="required"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row my-3">
                            <div class="col-md-4">
                                <label for="TxtComPwd" class="form-label text-dark fw-semibold">Confirm Password:</label>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TxtComPwd" runat="server" CssClass="form-control border-dark-subtle" required="required"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mt-3 mb-5 me-auto">
                            <div class="col-md-4">
                            </div>
                            <div class="col-md-6 ">
                                <asp:Button ID="BtnUserReg" runat="server" Text="Register" CssClass="btn block btn-dark rounded shadow " OnClick="BtnUserReg_Click" />
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </form>

      <!-- footer section start -->
      <div class="footer_section layout_padding">
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
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" 
            crossorigin="anonymous">
        </script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
             <script src="js/sidebars.js"></script>

</body>
</html>
