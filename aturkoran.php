<?php
session_start();
	if (!isset($_SESSION['userid'])) {
?>		
	<script type="text/javascript"><!--
		window.location = "index.php";
		//-->
    </script>
<?php
	}
require_once('db.php');
$DB = new DB;

$query = "SELECT * FROM tbl_koran";
$koran = $DB->select($query);

$message = "";
$_method="Add";
$id=1;
$nama_koran="";
$size_koran=1;
$_koran_cover_image="";
$publish_on="";
$_imgDefault="abc.jpg";
$jumlah_halaman='1';
$_isRequired="required";

if (isset($_POST['method']) && $_POST['method']=="Add") {
	
	$imageFileType = strtolower(pathinfo($_FILES['koran_cover_image']['name'],PATHINFO_EXTENSION));
	$gambar_cover_koran = strtolower(str_replace(" ","_",$_POST['nama_koran']).".".$imageFileType);
	$file_tmp =$_FILES['koran_cover_image']['tmp_name'];
	move_uploaded_file($file_tmp,"images/".$gambar_cover_koran);	
	
	$FileType = strtolower(pathinfo($_FILES['file_koran']['name'],PATHINFO_EXTENSION));
	$file_koran = strtolower(str_replace(" ","_",$_POST['nama_koran']).".".$FileType);
	$file_tmp1 =$_FILES['file_koran']['tmp_name'];
	move_uploaded_file($file_tmp1,"file/".$file_koran);	
	
	
		$query = "INSERT INTO tbl_koran (nama_koran, jumlah_halaman, publish_on, size_koran, koran_cover_image, file_koran) VALUES('".trim($_POST['nama_koran'])."', '".trim($_POST['jumlah_halaman'])."','".trim($_POST['publish_on'])."', '".trim($_POST['size_koran'])."', '".$gambar_cover_koran."', '".$file_koran."')" or die("SELECT Error: ".mysql_error());
	$DB->query($query);
	$message='<div class="alert" role="alert" style="color: #ffffff;background-color: #1bcfb4; border-color: #1bcfb4;">
                      <i class="mdi mdi-check-decagram"></i>Sucess! New Category created!</div>';
}

if (isset($_POST['method']) && $_POST['method']=="Edit") {
  $query ="";
  $_method="Edit";
	if($_FILES['koran_cover_image']['error'] > 0) { 
      $query = "UPDATE tbl_koran SET nama_koran='".trim($_POST['nama_koran'])."', jumlah_halaman='".trim($_POST['jumlah_halaman'])."', publish_on='".trim($_POST['publish_on'])."', size_koran='".trim($_POST['size_koran'])."' WHERE id=".$_POST['id'] or die("UPDATE Error: ".mysql_error());
	}else{
		$imageFileType = strtolower(pathinfo($_FILES['koran_cover_image']['name'],PATHINFO_EXTENSION));
		$gambar_cover_koran = strtolower(str_replace(" ","_",$_POST['nama_koran']).".".$imageFileType);
		$file_tmp =$_FILES['nama_koran']['tmp_name'];
		move_uploaded_file($file_tmp,"images/".$gambar_cover_koran);
	
		$query = "UPDATE tbl_koran SET nama_koran='".trim($_POST['nama_koran'])."', jumlah_halaman='".trim($_POST['jumlah_halaman'])."', publish_on='".trim($_POST['publish_on'])."', size_koran='".trim($_POST['size_koran'])."', koran_cover_image='".$gambar_cover_koran."' WHERE id=".$_POST['id'] or die("UPDATE Error: ".mysql_error());	
	}	
	
	$DB->query($query);
	$message='<div class="alert" role="alert" style="color: #ffffff; background-color: #1bcfb4; border-color: #1bcfb4;">
                      <i class=" mdi mdi-check-decagram"></i>Sucess! Category details updated!</div>';
}

if (isset($_GET['action']) && $_GET['action']=="edit") {
	$_isRequired="";
	$_method="Edit";
	$query = "SELECT * FROM tbl_koran WHERE id ='".trim($_GET['id'])."'" or die("SELECT Error: ".mysql_error());
	$get_koran = $DB->select($query);
	if(count($get_koran) > 0){
		$id= $get_koran[0]['id'];
		$nama_koran = $get_koran[0]['nama_koran'];
		$jumlah_halaman = $get_koran[0]['jumlah_halaman'];
		$publish_on = $get_koran[0]['publish_on'];
		$size_koran = $get_koran[0]['size_koran'];
		$_imgDefault = $get_koran[0]['koran_cover_image'];
		
	}
}


  
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
	<link rel="stylesheet" href="assets/vendors/dropify/css/dropify.min.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="assets/images/favicon.png" />
       <!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">-->
    <!-- <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" /> --> 
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
                  <i class="mdi mdi-cached mr-2 text-success"></i> Activity Log </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="logout.php">
                  <i class="mdi mdi-logout mr-2 text-primary"></i> Signout </a>
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
                  <i class="mdi mdi-bookmark-outline"></i>
                </span> Koran </h3>
            </div>
			   <div class="row">
              <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Koran</h4>
					  <div class="table-responsive">
                    <table class="table table-image" id="catTable">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>Nama Koran</th>
                          <th>Jumlah Halaman</th>
                          <th>Publish On</th>
                          <th>Size Koran</th>
                          <th>Cover Image</th>
                          <th>File Koran</th>
                          <th>Action</th>
                        </tr>
                      </thead>
                      <tbody>
						  <?php if(count($koran) > 0){
						  foreach ($koran as $row) { ?>
						  
                        <tr>
                          <td ><?=$id++;?></td>
                          <td><?=$row['nama_koran'];?></td>
                          <td><?=$row['jumlah_halaman'];?></td>
                          <td><?=$row['publish_on'];?></td>
						  <td><?=$row['size_koran'];?></td>
						  <td class="w-25">
						      <div class="d-flex flex-row flex-wrap">
                      			<img src="images/<?=$row['koran_cover_image'];?>" class="img-fluid img-thumbnail" alt="category image">
                    		</div>
						  </td>
						  <td class="w-25">
						     <a href="file/<?=$row['file_koran'];?>"><i class="mdi mdi-file text-primary icon-md"></i></a>
                    		</div>
						  </td>
						   <td><a href="aturkoran.php?action=edit&id=<?php echo $row['id']; ?>"><i class="mdi mdi-lead-pencil text-primary icon-md"></i></a></td>
                        </tr>
						  
						  <?php } 
							}else{   ?>
                        <tr>
                          <td colspan="5"><div class="alert" role="alert" style="color: #ffffff;background-color: #fe7c96;border-color: #fe7c96;">
                      <i class="mdi mdi-bug"></i> Oh snap! You don't have any Category yet!.</div></td>
                        </tr>
						  <?php }   ?>
                      </tbody>
                    </table>
					  </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title"><?=$_method?> Koran</h4>
                    <?=$message;?>
                    <form class="forms-sample" action="aturkoran.php" id="categoryForm" method="post" enctype="multipart/form-data">
                      <div class="form-group row">
                        <label for="nama_koran" class="col-sm-3 col-form-label">Perusahaan</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="nama_koran" name="nama_koran" placeholder="Nama Koran" value="<?=$nama_koran?>" required>
                        </div>
                      </div>
                       <div class="form-group row">
                        <label for="catName" class="col-sm-3 col-form-label">Halaman</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="jumlah_halaman" name="jumlah_halaman" placeholder="Jumlah Halaman" value="<?=$jumlah_halaman?>" required>
                        </div>
                      </div>
                         <div class="form-group row">
                        <label for="catName" class="col-sm-3 col-form-label">Size</label>
                        <div class="col-sm-9">
                          <input type="text" class="form-control" id="catName" name="size_koran" placeholder="Ukuran" value="<?=$size_koran?>" required>
                        </div>
                      </div>
                      
                       <div class="form-group row">
                           <label for="catName" class="col-sm-3 col-form-label">Tanggal</label>
                             <div class="col-sm-9">
                       <input id="datepicker" width="276" class="form-control" type="date" name="publish_on" value="<?=$publish_on?>"/>
                            </div>
                              </div>
                      
					  <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Foto</label>
                        <div class="col-sm-9">
                        <input type="file" name="koran_cover_image" class="dropify" data-max-file-size="5M" data-allowed-file-extensions="jpg png jpeg" data-default-file="images/<?=$_imgDefault?>" value="images/<?=$_imgDefault?>" <?=$_isRequired?> >
						  </div>
                      </div>
                      
                      	  <div class="form-group row">
                        <label class="col-sm-3 col-form-label">File</label>
                        <div class="col-sm-9">
                        <input type="file" name="file_koran" class="dropify" data-max-file-size="5M" data-allowed-file-extensions="jpg png jpeg pdf" data-default-file="" value="" <?=$_isRequired?> >
						  </div>
                      </div>
						<!--<div class="form-group row">-->
      <!--                  <label for="catSequence" class="col-sm-3 col-form-label">Sequence</label>-->
      <!--                  <div class="col-sm-9">-->
      <!--                    <input type="text" class="form-control" id="catSequence" name="catSequence" placeholder="Category Sequence" value="<?=$_catSequence?>" required>-->
      <!--                  </div>-->
      <!--                </div>-->
                      <!--<div class="form-group row">-->
                      <!--  <label for="categoryStatus" class="col-sm-3 col-form-label">Status</label>-->
                      <!--  <div class="col-sm-4">-->
                      <!--        <div class="form-check">-->
                      <!--          <label class="form-check-label">-->
                      <!--            <input type="radio" class="form-check-input" name="categoryStatus" id="categoryStatus1" value="1" <?php if($_catStatus=='1'){echo'checked';}?>> Aktif </label>-->
                      <!--        </div>-->
                      <!--      </div>-->
                      <!--      <div class="col-sm-5">-->
                      <!--        <div class="form-check">-->
                      <!--          <label class="form-check-label">-->
                      <!--            <input type="radio" class="form-check-input" name="categoryStatus" id="categoryStatus2" value="0" <?php if($_catStatus=='0'){echo'checked';}?>> Mati </label>-->
                      <!--        </div>-->
                      <!--      </div>-->
                      <!--</div>-->
					  <input name="id" id="id" type="hidden" value="<?=$id?>">
					  <input name="method" id="method" type="hidden" value="<?=$_method?>">
                      <button type="submit" class="btn btn-gradient-primary mr-2"><?=$_method?></button>
                    </form>
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
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/hoverable-collapse.js"></script>
    <script src="assets/js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
	  <script src="assets/vendors/dropify/js/dropify.min.js"></script>
	  <script src="assets/js/dropify.js"></script>
  </body>
</html>