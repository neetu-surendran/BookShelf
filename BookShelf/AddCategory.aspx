<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="BookShelf.AddCategory" %>

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
</head>

<body>
    <nav class="navbar navbar-expand-md bg-dark border-bottom border-body" data-bs-theme="dark">
    </nav>
    <div class="d-flex flex-nowrap">
        <div class="flex-shrink-0 p-3" style="width: 230px;" >
        <a href="#" class="d-flex align-items-center pb-3 mb-3 link-body-emphasis text-decoration-none border-bottom">
          <img src="bn_images/anotherShelf.jpg" alt="bookshelf" width="70" height="60"/>
           <span><img src="images/bookShelfLogo.png" alt="bookshelf" width="110" height="60"/></span>
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
        <form id="form1" runat="server" class="w-100 needs-validation mb-5"> 
        <div class="about_section_2 text-bg-light">
            <div class="container">
                <div class="row">
                    <h1 class="about_taital">Add Category</h1>
                </div>
            </div>
        </div>

            <div class="container mb-5 w-75">
                <div class="row my-3">
                    <div class="col-md-4">
                        <label for="TxtCatgName" class="form-label border-black text-dark fw-semibold">Name:</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="TxtCatgName" runat="server" CssClass="form-control" required="required" placeholder="Enter Category Name"></asp:TextBox>
                    </div>
                    <div class="invalid-feedback col-md-2">Please enter a name for the category.</div>
                </div>
                <div class="row my-3">
                    <div class="col-md-4">
                        <label for="FileUpload1" class="form-label text-dark fw-semibold">Cover Image:</label>
                    </div>
                    <div class="col-md-6">
                        <asp:FileUpload ID="FileUpload1" runat="server" required="required" />
                    </div>
                    <div class="invalid-feedback col-md-2">Upload cover image for category.</div>
                </div>
                <div class="row my-3">
                    <div class="col-md-4">
                        <label for="TxtCatDesc" class="form-label text-dark fw-semibold">Description:</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="TxtCatDesc" runat="server" class="form-control" placeholder="Enter category description" required="required" TextMode="MultiLine" Rows="3"></asp:TextBox>
                    </div>
                    <div class="invalid-feedback col-md-2">Upload cover image for category.</div>
                </div>
                <div class="row my-3">
                    <div class="col-md-4">
                    </div>
                    <div class="col-md-8">
                        <asp:Button ID="BtnInsert" class="btn btn-dark" runat="server" Text="Submit" OnClick="BtnInsert_Click" />
                    </div>
                </div>
<%--                 <div class="row">
                   <div class="mt-3 d-flex justify-content-start">
                        <label class="form-label text-dark me-5 pe-5"><strong>Name:</strong></label>
                        <asp:TextBox ID="TxtCatgName" runat="server" class="form-control" placeholder="Enter Category Name" name="uname" required="required" Width="500px"></asp:TextBox>
                        <div class="invalid-feedback">Please enter a name for the category.</div>
                    </div>
                    <div class="mt-3 d-flex justify-content-start">
                        <label class="form-label text-dark me-5 pe-5"><strong>Image: </strong></label>
                        <asp:FileUpload ID="FileUpload1" runat="server" required="required" />
                        <div class="invalid-feedback">Upload cover image for category</div>
                    </div>
                    <div class="mt-3 d-flex justify-content-start">
                        <label class="form-label text-dark me-5"><strong>Description:</strong></label>
                        <asp:TextBox ID="TxtCatDesc" runat="server" class="form-control" placeholder="Enter category description" TextMode="MultiLine" Width="500px"></asp:TextBox>
                        <div class="invalid-feedback">Please specify a short description.</div>
                    </div>

                    <div class="mt-3">
                        <asp:Button ID="BtnInsert" class="btn btn-dark" runat="server" Text="Submit" OnClick="BtnInsert_Click" />
                    </div>
                </div>--%>
            </div>

        <div class="modal fade" id="categoryModal" tabindex="-1" aria-labelledby="catgModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content rounded-3">
                        <div class="modal-body">
                            <h3 class="mb-0 text-center" id="catgModalLabel"><strong>Choose another name</strong></h3>
                            <p class="mb-0 text-center">A category with this name already exists.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-lg btn-link fs-6 col-6 mx-auto" data-bs-dismiss="modal">OK</button>
                        </div>
                    </div>
                </div>
            </div>

       <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <%--<script src="js/bootstrap.bundle.min.js"></script>--%>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      <script src="js/modal.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
     <script src="js/sidebars.js"></script>

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
      
  
</body>
</html>


