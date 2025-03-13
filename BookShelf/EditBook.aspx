<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditBook.aspx.cs" Inherits="BookShelf.EditBook" %>

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
      <title>Admin Dashboard</title>
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
    </nav>
    <div class="d-flex flex-nowrap">
        <div class="flex-shrink-0 p-3 " style="width: 230px;" >
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
          <li class="mb-1">
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

        <div class="d-flex flex-column w-100">
            <div class="about_section_2 text-bg-light">
                <div class="container">
                    <div class="row">
                        <h1 class="about_taital" style="font-size: 25px;">Edit Book</h1>
                    </div>
                </div>
            </div>
            <form id="form1" runat="server">

                <div class="d-inline-flex input-group justify-content-center mb-5">
                    <input class="form-control" style="max-width: 250px;" id="searchText"
                        type="search" runat="server" placeholder="Search Book" aria-label="Search" />
                    <button class="input-group-text btn btn-outline-primary" runat="server"
                        type="button" id="searchButton" onserverclick="searchButton_ServerClick">
                        <i class="bi bi-search"></i>
                    </button>
                </div>
                <div class="container-fluid" style="margin: 0px 20px 50px 20px; padding-left: 30px">
                    <asp:Panel ID="Panel1" runat="server" Style="height: 500px; width: 1000px; overflow: auto;">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table"
                            OnSelectedIndexChanging="GridView1_SelectedIndexChanging" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="2">
                            <Columns>
                                <asp:BoundField DataField="Book_Id" HeaderText="ID" ReadOnly="True" />
                                <asp:BoundField DataField="Category_Id" HeaderText="Category" ReadOnly="True" />
                                <asp:BoundField DataField="Title" HeaderText="Title" ReadOnly="True" />
                                <asp:BoundField DataField="Author" HeaderText="Author" ReadOnly="True" />
                                <asp:BoundField DataField="Price" HeaderText="Price" />
                                <asp:BoundField DataField="Publisher" HeaderText="Publisher" />
                                <asp:BoundField DataField="Publication_Year" HeaderText="Year" />
                                <asp:BoundField DataField="Stock" HeaderText="Stock" />
                                <asp:BoundField DataField="Description" HeaderText="Description" />
                                <asp:ImageField DataImageUrlField="Cover_Image" HeaderText="Image">
                                    <ControlStyle CssClass="rounded mx-auto d-block" Height="70px" Width="100px" />
                                </asp:ImageField>
                                <asp:BoundField DataField="ISBN" HeaderText="ISBN" />
                                <asp:BoundField DataField="Status" HeaderText="Status" />
                                <asp:CommandField HeaderText="Edit" ShowSelectButton="True" />
                            </Columns>
                        </asp:GridView>
                    </asp:Panel>
                </div>
                <div class="container-fluid" style="margin:0px 20px 50px 20px; padding-left: 30px">
                    <asp:Panel ID="Panel2" runat="server" Style="width: 1000px; overflow: auto;">
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="table"
                            DataKeyNames="Book_Id,Price,Publisher,Publication_Year,Stock,Description,Cover_Image,ISBN,Status"
                            OnRowEditing="GridView2_RowEditing" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowUpdating="GridView2_RowUpdating">
                            <Columns>
                                <asp:BoundField DataField="Book_Id" HeaderText="ID" ReadOnly="True" />
                                <asp:BoundField DataField="Category_Id" HeaderText="Category" ReadOnly="True" />
                                <asp:BoundField DataField="Title" HeaderText="Title" ReadOnly="True" />
                                <asp:BoundField DataField="Author" HeaderText="Author" ReadOnly="True" />
                                <asp:BoundField DataField="Price" HeaderText="Price"></asp:BoundField>
                                <asp:BoundField DataField="Publisher" HeaderText="Publisher"></asp:BoundField>
                                <asp:BoundField DataField="Publication_Year" HeaderText="Year" />
                                <asp:BoundField DataField="Stock" HeaderText="Stock" />
                                <asp:BoundField DataField="Description" HeaderText="Description" />
                                <asp:TemplateField HeaderText="Image">
                                    <EditItemTemplate>
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" CssClass="rounded mx-auto d-block" Height="50px" ImageAlign="Middle" ImageUrl='<%# Eval("Cover_Image") %>' Width="50px" />
                                    </ItemTemplate>
                                    <ControlStyle CssClass="rounded mx-auto d-block" Height="70px" Width="100px" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="ISBN" HeaderText="ISBN" />
                                <asp:TemplateField HeaderText="Status">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="ddlStatus" runat="server">
                                            <asp:ListItem>Available</asp:ListItem>
                                            <asp:ListItem>Unavailable</asp:ListItem>
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowEditButton="True" />
                            </Columns>
                        </asp:GridView>
                    </asp:Panel>
                </div>
            </form>
        </div>

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
      <script src="js/sidebars.js"></script>
</body>
</html>
