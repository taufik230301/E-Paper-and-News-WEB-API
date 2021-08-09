<?php
require_once( '../db.php' );
$DB = new DB;
$query = "SELECT * FROM tbl_beli_koran";
$getUser = $DB->check($query);

if ($getUser > 0 ) {

	$query = "INSERT INTO tbl_beli_koran (nama_pembeli, nama_koran, buy_on, harga_koran, status, idorder) VALUES('" . trim( $_POST[ 'nama_pembeli' ] ) . "','" . trim( $_POST[ 'nama_koran' ] ) . "',now(),'" . trim($_POST[ 'harga_koran' ] ). "','" . trim($_POST[ 'status' ] ). "', '" . trim($_POST[ 'idorder' ] ). "' )";

	$DB->query( $query )or die( "Insert Error at line 11: " . $DB->error() );

  if ($getUser > 0 ) {
	$row_array['nama_koran'] = $_POST[ 'nama_koran' ];
	$row_array['harga_koran'] = $_POST[ 'harga_koran' ];
	$row_array['status'] = $_POST[ 'status' ];
	echo json_encode($row_array);
	
}else{
	$row_array['status'] = "fail";
	$row_array['nama_koran'] = "User Does not exits! Please Register";
	echo json_encode($row_array);
}
}
?>