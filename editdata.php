<?php

include 'conn.php';

$idstatus=$_POST['idstatus'];
$judul=$_POST['judul'];
$status=$_POST['status'];

$conn->query("update tbl_status
 set idstatus='".$idstatus."',judul='".$judul."',status='".$status."'
where judul='".$judul."'");

?>