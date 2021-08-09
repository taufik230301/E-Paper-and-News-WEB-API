<?php 
// include '../conn.php';

// $sql=$conn->query("select * from tbl_koran");

// $result=array();

// while($fetchdata=$sql->fetch_assoc()){

// 	$result[]=$fetchdata;
// }


// echo json_encode($result);

require_once('../db.php');
$DB = new DB;
$_version = '1.0';
$_encoding = 'UTF-8';
$_koranList= array();
$_path="http://pppkpusri.com/classic_news/";
$_images=$_path."images/";

if (isset($_GET['get'])) {
	
	//get Top articles
	if($_GET['get']=="koran"){

	$query = "SELECT * from tbl_koran" or die("SELECT Error: ".$DB->error());
	
		
		$news_check = $DB->select($query);
		if ( count( $news_check ) > 0 ) {
			foreach ( $news_check as $key => $get_info ) {
				$_newsList[$key]['id']= $get_info['id'];
				$_newsList[$key]['nama_koran']= $get_info['nama_koran'];
				$_newsList[$key]['jumlah_halaman']= $get_info['jumlah_halaman'];
				$_newsList[$key]['publish_on']= $get_info['publish_on'];
				$_newsList[$key]['size_koran']= $get_info['size_koran'];
				$_newsList[$key]['koran_cover_image']= $_images.$get_info['koran_cover_image'];
				
			}
		}
		
	
		
		//Print array in JSON format
		$row_array['version'] = $_version;
		$row_array['encoding'] = $_encoding;
		$row_array['feed'] = $_newsList;
		header('Content-type:application/json;charset=utf-8');		
 		echo json_encode($row_array);
	}
}

?>