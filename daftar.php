

<?php
include 'conn.php';

$username=$_POST['username'];
$useremail=$_POST['useremail'];
$userimage=$_POST['userimage'];
$userauth=$_POST['userauth'];
$usersource=$_POST['usersource'];

$conn->query("INSERT into tabeluser ((username, useremail, userimage, userauth, usersource) values ('".$username."','".$useremail."','".$userimage."','".$userauth."','".$usersource."')");



?>