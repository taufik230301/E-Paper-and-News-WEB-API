<?php
require_once( '../db.php' );
$DB = new DB;
$query = "SELECT * FROM tbl_transaksi";
$getUser = $DB->check($query);

if ($getUser > 0 ) {

	$query = "INSERT INTO tbl_transaksi (nama_pembeli, nama_koran, harga_koran, idorder, buy_on, status) VALUES('" . trim( $_POST[ 'nama_pembeli' ] ) . "','" . trim( $_POST[ 'nama_koran' ] ) . "','" . trim( $_POST[ 'harga_koran' ] ) . "','" . trim( $_POST[ 'idorder' ] ) . "',now(),'" . trim($_POST[ 'status' ] ). "' )";

	$DB->query( $query )or die( "Insert Error at line 11: " . $DB->error() );

  if ($getUser > 0 ) {
	$row_array['nama_pembeli'] = $_POST[ 'nama_pembeli' ];
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