<?php

include 'conn.php';

$idstatus=$_POST['idstatus'];
$judul=$_POST['judul'];
$status=$_POST['status'];


$conn->query("INSERT into tbl_status values('".$idstatus."','".$judul."','".$status."')");

?>

// <?php

// include 'conn.php';

// $uid=$_POST['uid'];
// $name=$_POST['name'];
// $mobile=$_POST['mobile'];
// $email=$_POST['email'];
// $password=$_POST['password'];


// $conn->query("INSERT into user_details values('".$uid."','".$name."','".$mobile."','".$email."','".$password."')");

// ?>