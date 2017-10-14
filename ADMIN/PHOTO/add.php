<?php
include_once "../../koneksi/koneksi.php";

$MENU=$_GET['MENU'];
$HAK=$_GET['HAK'];
$UNIT=$_GET['UNIT'];
$ESELON1=$_GET['ESELON1'];
$ID=$_GET['ID'];
$PASSWORD=$_GET['PASSWORD'];
$NAMA=$_GET['NAMA'];
$NIP=$_GET['NIP'];
$JABATAN=$_GET['JABATAN'];
$ESELON=$_GET['ESELON'];
	if ($HAK=='') {$HAK='deputi2';}else {;} 
	if ($HAK<>'') {$HAK=$HAK;}else {;} 


$perintah="INSERT INTO amar_photo_sigap (
HAK

)
					
VALUES(
'$HAK'

)";

$hasil=mysql_query($perintah,$konek)
	or die ("GAGAL".MYSQL_error());
header ("location:../../ADMIN/index.php?SET=GALLERY&MENU=SETTING&UNIT=$HAK&HAK=$HAK");
?>