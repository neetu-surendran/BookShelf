<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBooks.aspx.cs" Inherits="BookShelf.AddBooks" %>

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
      <title>The BookShelf</title>
      <meta name="keywords" content=""/>
      <meta name="description" content=""/>
      <meta name="author" content=""/>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet"/>
      <!-- bootstrap css -->
      <%--<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>--%>
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
        .auto-style3 {
                width: 518px;
            }
        .auto-style5 {
                width: 780px;
            }
        .auto-style9 {
                width: 419px;
            }
        .auto-style10 {
                width: 350px;
            }
            .auto-style11 {
                width: 215px;
            }
            .auto-style13 {
                width: 215px;
                height: 1px;
            }
            .auto-style14 {
                width: 518px;
                height: 1px;
            }
            .auto-style15 {
                width: 780px;
                height: 1px;
            }
            .auto-style17 {
                width: 419px;
                height: 1px;
            }
            .auto-style18 {
                width: 350px;
                height: 1px;
            }
            .auto-style19 {
                height: 1px;
                width: 102px;
            }
            .auto-style21 {
                width: 215px;
                height: 49px;
            }
            .auto-style22 {
                width: 518px;
                height: 49px;
            }
            .auto-style23 {
                width: 780px;
                height: 49px;
            }
            .auto-style25 {
                width: 419px;
                height: 49px;
            }
            .auto-style26 {
                width: 350px;
                height: 49px;
            }
            .auto-style27 {
                height: 49px;
                width: 102px;
            }
            .auto-style28 {
                width: 102px;
            }
            .auto-style29 {
                width: 402px;
            }
            .auto-style30 {
                width: 402px;
                height: 1px;
            }
            .auto-style31 {
                width: 402px;
                height: 49px;
            }
            .auto-style32 {
                width: 403px;
            }
            .auto-style33 {
                width: 403px;
                height: 1px;
            }
            .auto-style34 {
                width: 403px;
                height: 49px;
            }
            .auto-style35 {
                width: 403px;
                height: 27px;
            }
            .auto-style36 {
                width: 215px;
                height: 27px;
            }
            .auto-style37 {
                width: 518px;
                height: 27px;
            }
            .auto-style38 {
                width: 780px;
                height: 27px;
            }
            .auto-style39 {
                width: 402px;
                height: 27px;
            }
            .auto-style40 {
                width: 419px;
                height: 27px;
            }
            .auto-style41 {
                width: 350px;
                height: 27px;
            }
            .auto-style42 {
                width: 102px;
                height: 27px;
            }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-md bg-dark border-bottom border-body" data-bs-theme="dark">
    </nav>
    <div class="d-flex flex-nowrap">
        <div class="flex-shrink-0 p-3 " style="width: 280px;" >
        <a href="#" class="d-flex align-items-center pb-3 mb-3 link-body-emphasis text-decoration-none border-bottom">
          <!-- <svg class="bi pe-none me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg> -->
          <img src="bn_images/anotherShelf.jpg" alt="bookshelf" width="70" height="60"/>
           <span><img src="images/bookShelfLogo.png" alt="bookshelf" width="110" height="60"/></span>
          <!-- <span class="fs-4 fw-semibold">The Book Shelf</span> -->
        </a>
        <ul class="list-unstyled ps-0">
          <li class="mb-1">
            <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0" data-bs-toggle="collapse" 
                data-bs-target="#home-collapse" aria-expanded="false">
              Home
            </button>
            <div class="collapse" id="home-collapse">
              <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                <li><a href="AdminDashboard.aspx" class="link-body-emphasis d-inline-flex text-decoration-none rounded">Dashboard</a></li>
              </ul>
            </div>
          </li>
          <li class="mb-1">
            <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" 
                data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="true">
              Book Management
            </button>
            <div class="collapse show" id="dashboard-collapse">
              <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                <li><a href="AddCategory.aspx" class="link-body-emphasis d-inline-flex text-decoration-none rounded">Add Category</a></li>
                <li><a href="EditCategory.aspx" class="link-body-emphasis d-inline-flex text-decoration-none rounded">Edit Category</a></li>
                <li><a href="AddBooks.aspx" class="link-body-emphasis d-inline-flex text-decoration-none rounded">Add Book</a></li>
                <li><a href="EditBook.aspx" class="link-body-emphasis d-inline-flex text-decoration-none rounded">Edit Book</a></li>
              </ul>
            </div>
          </li>
          <li class="mb-1">
            <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" 
                data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
              User Management
            </button>
            <div class="collapse" id="orders-collapse">
              <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                <li><a href="UserList.aspx" class="link-body-emphasis d-inline-flex text-decoration-none rounded">User List</a></li>
                <li><a href="ViewFeedback.aspx " class="link-body-emphasis d-inline-flex text-decoration-none rounded">User Feedback</a></li>
              </ul>
            </div>
          </li>
          <li class="border-top my-3"></li>
          <li class="mb-5">
            <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
              Account
            </button>
            <div class="collapse" id="account-collapse">
              <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                <li><a href="AdminProfile.aspx" class="link-body-emphasis d-inline-flex text-decoration-none rounded">Profile</a></li>
                <li><a href="Logout.aspx" class="link-body-emphasis d-inline-flex text-decoration-none rounded">Sign out</a></li>
              </ul>
            </div>
          </li>
        </ul>
      </div>
        <div class="d-flex">
            <div class="vr"></div>
        </div>
        <form id="form1" runat="server" class="w-100 needs-validation">
        <div class="about_section_2 text-bg-light">
            <div class="container">
                <div class="row">
                    <h1 class="about_taital">Add Book</h1>
                </div>
            </div>
        </div>
      
        <!--Table-->
       <%--<table class="w-100 content">
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style13">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style30">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style13"></td>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style30"></td>
            <td class="auto-style17"></td>
            <td class="auto-style18"></td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td class="auto-style34">
                &nbsp;</td>
            <td class="auto-style21">
            <asp:Label ID="Label1" runat="server" Text="Category" BackColor="White" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style22">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="ddl">
                        </asp:DropDownList>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
            <td class="auto-style23">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please select category" InitialValue="0" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style31">
            <asp:Label ID="Label6" runat="server" Text="Publication Year" BackColor="White" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style25">
            <asp:TextBox ID="TxtPubYear" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style26">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter publication date" ControlToValidate="TxtPublisher"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style27"></td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">
                &nbsp;</td>
            <td class="auto-style11">
            <asp:Label ID="Label2" runat="server" Text="Title" BackColor="White" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style3">
            <asp:TextBox ID="TxtTitle" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter book title" ControlToValidate="TxtTitle"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style29">
            <asp:Label ID="Label7" runat="server" Text="Stock" BackColor="White" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style9">
            <asp:TextBox ID="TxtStock" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter book stock" ControlToValidate="TxtStock"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">
                &nbsp;</td>
            <td class="auto-style11">
            <asp:Label ID="Label3" runat="server" Text="Author" BackColor="White" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style3">
            <asp:TextBox ID="TxtAuthor" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter book author" ControlToValidate="TxtAuthor"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style29">
            <asp:Label ID="Label8" runat="server" Text="Description" BackColor="White" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style9">
            <asp:TextBox ID="TxtBDesc" runat="server" Height="44px" Width="200px" TextMode="MultiLine" Rows="4"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Book description empty" ControlToValidate="TxtBDesc"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">
                &nbsp;</td>
            <td class="auto-style11">
            <asp:Label ID="Label4" runat="server" Text="Price" BackColor="White" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style3">
            <asp:TextBox ID="TxtPrice" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter book price" ControlToValidate="TxtPrice"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style29">
            <asp:Label ID="Label9" runat="server" Text="Cover Image" BackColor="White" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="48px" Width="242px" />
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Upload book cover image" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">
                &nbsp;</td>
            <td class="auto-style11">
            <asp:Label ID="Label5" runat="server" Text="Publisher" BackColor="White" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style3">
            <asp:TextBox ID="TxtPublisher" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter publisher" ControlToValidate="TxtPublisher"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style29">
            <asp:Label ID="Label10" runat="server" Text="ISBN" BackColor="White" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style9">
            <asp:TextBox ID="TxtISBN" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="ISBN code error" ValidationExpression="^(?=(?:\D*\d){10}(?:(?:\D*\d){3})?$)[\d-]+$" ControlToValidate="TxtISBN"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35"></td>
            <td class="auto-style36"></td>
            <td class="auto-style37"></td>
            <td class="auto-style38">
            <asp:Button ID="BtnAddBook" runat="server" Text="Add Book" BackColor="Black" CssClass="btn btn-dark" Font-Bold="False" Font-Names="Arial" ForeColor="White" Width="167px" Height="38px" OnClick="BtnAddBook_Click" />
            </td>
            <td class="auto-style39">
            </td>
            <td class="auto-style40"></td>
            <td class="auto-style41"></td>
            <td class="auto-style42"></td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style28">&nbsp;</td>
        </tr>
        </table>--%>
        <!-- Table End -->
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <div class="container mb-5 w-75">
                <div class="row my-3">
                    <div class="col-md-4">
                        <label for="DropDownList1" class="form-label text-dark fw-semibold">Category:</label>
                    </div>
                    <div class="col-md-6">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    CssClass="form-select border-dark-subtle">
                                </asp:DropDownList>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <div class="col-md-2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Please select category" InitialValue="0" ControlToValidate="DropDownList1">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-md-4">
                        <label for="TxtTitle" class="form-label text-dark fw-semibold">Title:</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="TxtTitle" runat="server" CssClass="form-control border-dark-subtle" required="required"></asp:TextBox>
                    </div>
<%--                    <div class="col-md-2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter book title"
                            ControlToValidate="TxtTitle"></asp:RequiredFieldValidator>
                    </div>--%>
                </div>

                <div class="row my-3">
                    <div class="col-md-4">
                        <label for="TxtAuthor" class="form-label text-dark fw-semibold">Author:</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="TxtAuthor" runat="server" CssClass="form-control border-dark-subtle" required="required"></asp:TextBox>
                    </div>
<%--                    <div class="col-md-2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter book author"
                            ControlToValidate="TxtAuthor"></asp:RequiredFieldValidator>
                    </div>--%>
                </div>

                <div class="row my-3">
                    <div class="col-md-4">
                        <label for="TxtPrice" class="form-label text-dark fw-semibold">Price:</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="TxtPrice" runat="server" CssClass="form-control border-dark-subtle" required="required"></asp:TextBox>
                    </div>
<%--                    <div class="col-md-2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter book price"
                            ControlToValidate="TxtPrice"></asp:RequiredFieldValidator>
                    </div>--%>
                </div>

                <div class="row my-3">
                    <div class="col-md-4">
                        <label for="TxtPublisher" class="form-label text-dark fw-semibold">Publisher:</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="TxtPublisher" runat="server" CssClass="form-control border-dark-subtle" required="required"></asp:TextBox>
                    </div>
<%--                    <div class="col-md-2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                            ErrorMessage="Enter publisher" ControlToValidate="TxtPublisher"></asp:RequiredFieldValidator>
                    </div>--%>
                </div>
                <div class="row my-3">
                    <div class="col-md-4">
                        <label for="TxtPubYear" class="form-label text-dark fw-semibold">Publication Year:</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="TxtPubYear" runat="server" CssClass="form-control border-dark-subtle" required="required"></asp:TextBox>
                    </div>
<%--                    <div class="col-md-2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                            ErrorMessage="Enter publication year" ControlToValidate="TxtPubYear"></asp:RequiredFieldValidator>
                    </div>--%>
                </div>
                <div class="row my-3">
                    <div class="col-md-4">
                        <label for="TxtStock" class="form-label text-dark fw-semibold">Stock:</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="TxtStock" runat="server" CssClass="form-control border-dark-subtle" required="required"></asp:TextBox>
                    </div>
<%--                    <div class="col-md-2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ErrorMessage="Enter book stock" ControlToValidate="TxtStock"></asp:RequiredFieldValidator>
                    </div>--%>
                </div>
                <div class="row my-3">
                    <div class="col-md-4">
                        <label for="TxtBDesc" class="form-label text-dark fw-semibold">Description:</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="TxtBDesc" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control border-dark-subtle" required="required"></asp:TextBox>
                    </div>
<%--                    <div class="col-md-2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                            ErrorMessage="Book description empty" ControlToValidate="TxtBDesc"></asp:RequiredFieldValidator>
                    </div>--%>
                </div>
                <div class="row my-3">
                    <div class="col-md-4">
                        <label for="FileUpload1" class="form-label text-dark fw-semibold">Cover Image:</label>
                    </div>
                    <div class="col-md-6">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control border-dark-subtle" required="required"/>
                    </div>
<%--                    <div class="col-md-2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ErrorMessage="Upload book cover image" ControlToValidate="FileUpload1">
                        </asp:RequiredFieldValidator>
                    </div>--%>
                </div>
                <div class="row my-3">
                    <div class="col-md-4">
                        <label for="TxtISBN" class="form-label text-dark fw-semibold">ISBN: </label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="TxtISBN" runat="server" CssClass="form-control border-dark-subtle"></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ErrorMessage="ISBN code error" ValidationExpression="^(?=(?:\D*\d){10}(?:(?:\D*\d){3})?$)[\d-]+$" 
                            ControlToValidate="TxtISBN"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="row mt-3 mb-5">
                    <div class="col-md-4">
                    </div>
                    <div class="col-md-8">
                        <asp:Button ID="BtnAddBook" runat="server" Text="Add Book" CssClass="btn btn-dark rounded-3 "  OnClick="BtnAddBook_Click" />
                    </div>
                </div>

            </div>
                        


      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      <script src="js/modal.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>

    </form>
    </div>
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
</body>
</html>
