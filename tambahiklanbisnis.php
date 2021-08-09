// <?php
// require_once( 'db.php' );
// $DB = new DB;
// $name = "images/profile/user.png";

// $query = "SELECT * FROM tbl_user WHERE phone='" . $_POST[ 'phone' ] . "'";
// $getUser = $DB->check($query);

// if ($getUser > 0 ) {
// 	echo "User exits! Reset Password";
// } else {
// 	if ( $_POST[ 'profile' ] == "true" ) {
// 		$image = $_POST[ 'image' ];
// 		$name = "images/profile/" . $_POST[ 'image_name' ];
// 		$realImage = base64_decode( $image );
// 		file_put_contents( $name, $realImage );
// 	}

// 	$query = "INSERT INTO tbl_user (fullname, phone, password, profile, created) VALUES('" . trim( $_POST[ 'name' ] ) . "','" . $_POST[ 'phone' ] . "','" . md5( trim( $_POST[ 'pass' ] ) ) . "','" . $name . "', now())";

// 	$DB->query( $query )or die( "Insert Error at line 11: " . $DB->error() );

// 	echo "Registration Successful! Please LogIn";
// }
// ?>
// <?php
// require_once( 'db.php' );
// $DB = new DB;

// 	$query = "INSERT INTO tbl_iklanbisnis (judul, dekripsi) VALUES('" . trim( $_POST[ 'judul' ] ) . "','" . $_POST[ 'dekripsi' ] . "', now())";

// 	$DB->query( $query )or die( "Insert Error at line 11: " . $DB->error() );

// 	echo "Input Iklan Berhasil!";
// }
// ?>
<?php

include 'conn.php';

$judul=$_POST['judul'];
$dekripsi=$_POST['dekripsi'];
// $mobile=$_POST['mobile'];
// $email=$_POST['email'];
// $password=$_POST['password'];


$conn->query("INSERT into tbl_iklanbisnis (judul, dekripsi) values('".$judul."','".$dekripsi."')");

?>
