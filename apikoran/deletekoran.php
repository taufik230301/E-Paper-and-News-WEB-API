<?php
require_once( '../db.php' );
$DB = new DB;
$query = "SELECT * FROM tbl_beli_koran";
$getUser = $DB->check($query);




if(isset($_GET['id'])){
      $id    = $_GET['id'];
    
    	$query = "DELETE from tbl_beli_koran where id='$id'";

	$DB->query( $query )or die( "Insert Error at line 11: " . $DB->error() );
	
	   if($query) {
        echo json_encode(array( 'RESPONSE'=>'SUCCESS' ));
    } else {
        echo json_encode(array( 'RESPONSE'=>'FAILED' ));
    }
    } else {
        echo "GAGAL";
    }


?>