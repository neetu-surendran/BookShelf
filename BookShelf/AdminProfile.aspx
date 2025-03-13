<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminProfile.aspx.cs" Inherits="BookShelf.AdminProfile" %>

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
      <title>Admin</title>
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
</head>
<body>
    <nav class="navbar navbar-expand-md bg-dark border-bottom border-body" data-bs-theme="dark" style="min-height: 50px;">
    </nav>

    <div class="d-flex flex-nowrap">
        <div class="flex-shrink-0 p-3 " style="width: 240px;" >
        <a href="#" class="d-flex align-items-center pb-3 mb-3 link-body-emphasis text-decoration-none border-bottom">
          <!-- <svg class="bi pe-none me-2" width="30" height="24"><use xlink:href="#bootstrap"/></svg> -->
          <img src="bn_images/anotherShelf.jpg" alt="bookshelf" width="70" height="60"/>
           <span><img src="images/bookShelfLogo.png" alt="bookshelf" width="110" height="60"/></span>
          <!-- <span class="fs-4 fw-semibold">The Book Shelf</span> -->
        </a>
        <ul class="list-unstyled ps-0">
          <li class="mb-1">
            <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" 
                data-bs-target="#dashboard-collapse" aria-expanded="false">
              Home
            </button>
            <div class="collapse" id="dashboard-collapse">
              <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                <li><a href="AdminDashboard.aspx" class="link-body-emphasis d-inline-flex text-decoration-none rounded">Dashboard</a></li>
              </ul>
            </div>
          </li>
          <li class="mb-1">
            <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" 
                data-bs-toggle="collapse" data-bs-target="#bookmanage-collapse" aria-expanded="false">
              Book Management
            </button>
            <div class="collapse" id="bookmanage-collapse">
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
                data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">User Management</button>
            <div class="collapse" id="orders-collapse">
              <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                <li><a href="UserList.aspx" class="link-body-emphasis d-inline-flex text-decoration-none rounded">User List</a></li>
                <li><a href="ViewFeedback.aspx" class="link-body-emphasis d-inline-flex text-decoration-none rounded">User Feedback</a></li>
              </ul>
            </div>
          </li>
          <li class="border-top my-3"></li>
          <li class="mb-5">
            <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="true">
              Account
            </button>
            <div class="collapse show" id="account-collapse">
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
                        <h1 class="about_taital">Admin Profile</h1>
                    </div>
                </div>
            </div>

            <div class="container mb-5 w-75">                       
                <div class="row my-3">
                    <div class="col-md-4">
                        <label for="txtName" class="form-label text-dark">Name</label>
                    </div>
                    <div class="col-md-8 ">
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-md-4">
                        <label for="address" class="form-label text-dark">Address</label>
                    </div>
                    <div class="col-md-8 ">
                        <textarea class="form-control" runat="server" rows="2" id="address" required="required"></textarea>
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-md-4">
                        <label for="phone" class="form-label text-dark">Mobile Number</label>
                    </div>
                    <div class="col-md-8 ">
                        <input type="tel" class="form-control" runat="server" id="phone" required="required" />
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-md-4">
                        <label for="em" class="form-label text-dark">E-Mail</label>
                    </div>
                    <div class="col-md-8 ">
                        <input type="email" runat="server" class="form-control" id="em" required="required" />
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
                        <asp:TextBox ID="txtPwd" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row my-3">
                    <div class="col-md-4">
                     </div>
                    <div class="col-md-8">
                        <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-dark rounded-3 mr-3" Text="Update" OnClick="btnUpdate_Click"/>
                        <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-outline-dark rounded-3" Text="Cancel" OnClick="btnCancel_Click"/>
                    </div>
                </div>
            </div>

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
