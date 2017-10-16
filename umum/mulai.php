<?php
include_once "../koneksi/koneksi.php";

$PHPL= $_GET['PHPL'];
	$PHPL = strtoupper($PHPL); 
	$PHPL= strip_tags($PHPL); 
	$PHPL= trim ($PHPL); 
$DATA='jayapura';
	$DATA = strtoupper($DATA); 
	$DATA= strip_tags($DATA); 
	$DATA= trim ($DATA); 

$USERNAME= $_GET['NAMA'];
$PASSWORD= $_GET['PHPL'];
$ID= $_GET['ID'];
	$sql_cari="SELECT * FROM amar_admin_sigap WHERE username='$USERNAME' AND password='$PASSWORD' GROUP BY username";
	$qry_cari = mysql_query($sql_cari, $konek) 
				or die ("Gagal query cari?");
	$jumlah=mysql_num_rows($qry_cari);

	if (mysql_num_rows($qry_cari)==0) {
		echo "<p onload='alert('Image is loaded');'>Maaf, Username dan Password tidak cocok. $ID $PASSWORD $OPERATOR<p>
		<a href='../index.php?SET=admin'> Kembali Kehalaman Login</a>
		<script type='text/javascript'>
		  	function loadImage() {
		  	    alert('Image is loaded');
		 	}
		  </script>";
		
		// header("location : ../index.php?SET=admin");
		// exit;
	}
		while($data_cari=mysql_fetch_array($qry_cari)){		
			$tgl=substr($data_cari['tgl_data'],8,2);
			$bln=substr($data_cari['tgl_data'],5,2);
			$thn=substr($data_cari['tgl_data'],0,4);
			$infotampil =str_replace($datakunci,"<b>$datakunci</b>",$data_cari[informasi]);		
			$UNIT=$data_cari[hak];
//	if ($UNIT<>'RTP') {echo "SALAH COY ";	exit;}
			
header ("location:../ADMIN/index.php?UNIT=$UNIT&MENU=SETTING");
}
?>
