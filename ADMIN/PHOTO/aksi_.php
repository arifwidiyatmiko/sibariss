<?php
include_once "../../koneksi/koneksi.php";

$MENU=$_GET['MENU'];
$HAK=$_GET['HAK'];
$TOPIK=$_GET['TOPIK'];
$ESELON2=$_GET['ESELON2'];
$ID=$_GET['ID'];
$KODE=$_GET['KODE'];
$NAMA=$_GET['NAMA'];
$NIP=$_GET['NIP'];
$JABATAN=$_GET['JABATAN'];
$ESELON=$_GET['ESELON'];
	if ($HAK=='') {$HAK='deputi2';}else {;} 
	if ($HAK<>'') {$HAK=$HAK;}else {;} 


$perintah="INSERT INTO amar_photo_sigap (
HAK,
TOPIK,
ESELON2,
KODE

)
					
VALUES(
'$HAK',
'$TOPIK',
'$ESELON2',
'$KODE'

)";

$hasil=mysql_query($perintah,$konek)
	or die ("GAGAL".MYSQL_error());
header ("location:../../ADMIN/index.php?TOPIK=$TOPIK&MENU=$MENU&MODE=$KODE&HAK=$HAK");
?>