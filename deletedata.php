<?php
include 'conn.php';

$judul=$_POST['judul'];


$conn->query("delete from tbl_status where judul='.$judul.'");

?>


// <?php
// include 'conn.php';

// $name=$_POST['name'];


// $conn->query("delete from user_details where name='.$name.'");



// ?>