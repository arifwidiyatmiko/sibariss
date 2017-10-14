<?php
include_once "../koneksi/koneksi.php";

$STATUS= $_GET['STATUS'];
$PASSWORD= $_GET['PHPL'];
$ESELON1= $_GET['ESELON1'];
	if ($STATUS=='PNS') {$DB='amar_induk';}else {;} 
	if ($STATUS<>'PNS') {$DB='amar_tkk';}else {;} 
	if ($STATUS=='PNS') {$GO='PNS';}else {;} 
	if ($STATUS<>'PNS') {$GO='KONTRAK';}else {;} 

	$sql_cari="SELECT * FROM $DB WHERE ESELON1='$ESELON1' AND PASSWORD='$PASSWORD' GROUP BY NAMA";
	$qry_cari = mysql_query($sql_cari, $konek) 
				or die ("Gagal query cari?");
	$jumlah=mysql_num_rows($qry_cari);

	if (mysql_num_rows($qry_cari)==0) {
		echo "SALAH COY $ID $PASSWORD $OPERATOR";
		exit;}

		while($data_cari=mysql_fetch_array($qry_cari)){		
			$tgl=substr($data_cari['tgl_data'],8,2);
			$bln=substr($data_cari['tgl_data'],5,2);
			$thn=substr($data_cari['tgl_data'],0,4);
			$infotampil =str_replace($datakunci,"<b>$datakunci</b>",$data_cari[informasi]);		
			$NAMA=$data_cari[NAMA];
			$ESELON1=$data_cari[ESELON1];
			$ESELON2=$data_cari[ESELON2];
			$ID=$data_cari[ID];
header ("location:../daftar.php?NAMA=$NAMA&ESELON1=$ESELON1&ESELON2=$ESELON2&ID=$ID&GO=$GO&SET=BOOKING");
}
?>
