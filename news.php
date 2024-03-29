<?php
session_start();
require_once('db.php');
$DB = new DB;
$message = "";
	if (!isset($_SESSION['userid'])) {
?>		
	<script type="text/javascript"><!--
		window.location = "index.php";
		//-->
    </script>
<?php
	}
$query = "SELECT *, (
       select group_concat(C.category_name SEPARATOR ',<br> ')
       from tbl_category C
       WHERE (LOCATE(CONCAT(' ',C.cid, ','), P.news_cat) > 0)
) as categories
from tbl_news P;" or die("SELECT Error: ".mysql_error());
$news_check = $DB->select($query);
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Sumatera Ekpres</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/vendors/datatable/dataTables.bootstrap4.css">
    <!-- End layout styles -->
	 <style type="text/css">
	  table td {
		text-overflow:ellipsis;
		overflow:hidden;
		white-space:nowrap;
		}
	  </style>
    <link rel="shortcut icon" href="assets/images/favicon.png" />
  </head>
  <body>
    <div class="container-scroller">
      <!-- partial:../../partials/_navbar.html -->
      <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
          <a class="navbar-brand brand-logo" href="admin-dash.php"><img src="assets/images/logo.jpg" alt="logo" /></a>
          <a class="navbar-brand brand-logo-mini" href="admin-dash.php"><img src="assets/images/logo-mini.png" alt="logo" /></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-stretch">
          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-menu"></span>
          </button>
          <ul class="navbar-nav navbar-nav-right">
            <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                <div class="nav-profile-img">
                  <img src="assets/images/faces/face1.jpg" alt="image">
                  <span class="availability-status online"></span>
                </div>
                <div class="nav-profile-text">
                  <p class="mb-1 text-black"><?=$_SESSION['usrFullName']?></p>
                </div>
              </a>
              <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
                <a class="dropdown-item" href="#">
                  <i class="mdi mdi-cached mr-2 text-success"></i> Aktivitas </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="logout.php">
                  <i class="mdi mdi-logout mr-2 text-primary"></i> Keluar </a>
              </div>
            </li>
            <li class="nav-item d-none d-lg-block full-screen-link">
              <a class="nav-link">
                <i class="mdi mdi-fullscreen" id="fullscreen-button"></i>
              </a>
            </li>
            <li class="nav-item nav-logout d-none d-lg-block">
              <a class="nav-link" href="logout.php">
                <i class="mdi mdi-power"></i>
              </a>
            </li>
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
          </button>
        </div>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:../../partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
                <div class="nav-profile-image">
                  <img src="assets/images/faces/face1.jpg" alt="profile">
                  <span class="login-status online"></span>
                  <!--change to offline or busy as needed-->
                </div>
                <div class="nav-profile-text d-flex flex-column">
                  <span class="font-weight-bold mb-2"><?=$_SESSION['usrFullName']?></span>
                  <span class="text-secondary text-small">Project Manager</span>
                </div>
                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="admin-dash.php">
                <span class="menu-title">Dashboard</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="news.php">
                <span class="menu-title">Atur Berita</span>
                <i class="mdi mdi-format-list-bulleted menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="categories.php">
                <span class="menu-title">Atur Kategori</span>
                <i class="mdi mdi-bookmark-outline menu-icon"></i>
              </a>
            </li>
               <li class="nav-item">
              <a class="nav-link" href="aturkoran.php">
                <span class="menu-title">Atur Koran</span>
                <i class="mdi mdi-library-books menu-icon"></i>
              </a>
            </li>
            <li class="nav-item sidebar-actions">
              <span class="nav-link">
                <div class="border-bottom">
                  <h6 class="font-weight-normal mb-3">Tambah</h6>
                </div>
                <a class="btn btn-block btn-lg btn-gradient-primary mt-4" style="color: #fff" href="add-news.php">+ Berita / Film</a>
                 <!--<a class="btn btn-block btn-lg btn-gradient-primary mt-4" style="color: #fff" href="aturkoran.php">+ Koran</a>-->
                <!-- <a class="btn btn-block btn-lg btn-gradient-primary mt-4" style="color: #fff" href="kategorifilm.php">+ Kategori Film</a> -->


              </span>
            </li>
          </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
			              <div class="page-header">
              <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white mr-2">
                  <i class="mdi mdi-format-list-bulleted"></i>
                </span> Atur Berita </h3>
              <nav aria-label="breadcrumb">
                <ul class="breadcrumb">
                  <li class="breadcrumb-item active" aria-current="page">
                    <span></span>Overview <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                  </li>
                </ul>
              </nav>
            </div>
			    <div class="card">
		  <div class="card-body">
			 <div class="row">
                  <div class="col-12">
                    <table id="news-listing" class="table">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>Image</th>
                          <th>Title</th>
                          <th>Categories</th>
                          <th>Views</th>
                          <th>Featured</th>
                          <th>Trending</th>
                          <th>Breaking</th>
                          <th>Status</th>
                          <th>Actions</th>
                        </tr>
                      </thead>
                      <tbody>
						  <?php if(count($news_check) > 0){
							$i=1;
						  foreach ($news_check as $get_info) { ?>
                        <tr>
                          <td><?=$i;?></td>
                          <td><div class="d-flex flex-row flex-wrap">
                      			<img src="images/<?=$get_info['news_cover_img'];?>" class="img-lg rounded" alt="category image">
                    		</div></td>
                          <td><div style=" max-width: 200px; float:left;line-height: 1.5em; height: 3em; text-overflow: ellipsis; overflow:hidden; white-space:nowrap;"><?=$get_info['news_title'];?></div></td>
                          <td><?=$get_info['categories'];?></span></td>
                          <td><?=$get_info['news_views'];?></td>
                          <td>
                            <?php if($get_info['featured']=='1'){ echo'<i class="mdi mdi-toggle-switch text-success icon-md">';} else { echo'<i class="mdi mdi-toggle-switch-off text-danger icon-md">';}?>
                          </td>
                          <td>
                            <?php if($get_info['isTrending']=='1'){ echo'<i class="mdi mdi-toggle-switch text-success icon-md">';} else { echo'<i class="mdi mdi-toggle-switch-off text-danger icon-md">';}?>
                          </td>
                          <td>
                            <?php if($get_info['isBreaking']=='1'){ echo'<i class="mdi mdi-toggle-switch text-success icon-md">';} else { echo'<i class="mdi mdi-toggle-switch-off text-danger icon-md">';}?>
                          </td>					  
                          <td>
                            <?php if($get_info['status']=='1'){ echo'<i class="mdi mdi-toggle-switch text-success icon-md">';} else { echo'<i class="mdi mdi-toggle-switch-off text-danger icon-md">';}?>
                          </td>
                          <td>
                            <a href="add-news.php?action=edit&news=<?=$get_info['id'];?>" title="Edit"><i class="mdi mdi-lead-pencil text-primary icon-md"></i></a>
							<a href="preview-news.php?action=preview&news=<?=$get_info['id'];?>" title="Preview" target="_blank"><i class="mdi mdi-television-guide icon-md"></i></a>
                          </td>
                        </tr>
						  
						  <?php $i++; } 
					}else{   ?>
                        <tr>
                          <td colspan="8"><div class="alert" role="alert" style="color: #ffffff;background-color: #fe7c96;border-color: #fe7c96;">
                      <i class="mdi mdi-bug"></i> Oh snap! You don't have any Category yet!.</div></td>
                        </tr>
						  <?php }   ?>
                      </tbody>
                    </table>
                  </div>
                </div>
			  </div>
			</div>			  
			</div>
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/_footer.html -->

          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
	<script src="assets/vendors/datatable/jquery.dataTables.js"></script>
    <script src="assets/vendors/datatable/dataTables.bootstrap4.js"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/hoverable-collapse.js"></script>
    <script src="assets/js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
	  	  <script type="text/javascript">
	   $('#news-listing').DataTable({"scrollX": true});
	  </script>
    <!-- End custom js for this page -->
  </body>
</html>