<?php
include_once "../../koneksi/koneksi.php";

$ESELON1=$_GET['ESELON1'];
$ESELON2=$_GET['ESELON2'];
$ID=$_GET['ID'];
$GO=$_GET['GO'];
$MENU=$_GET['MENU'];
$SET=$_GET['SET'];
	if ($GO=='PNS') {$DB='amar_induk';}else {;}
	if ($GO<>'PNS') {$DB='amar_tkk';}else {;}



$perintah="INSERT INTO amar_sigap (
PELAKSANA,
OPERATOR

)
					
VALUES(
'$ESELON3',
'$NAMA'

)";

$hasil=mysql_query($perintah,$konek)
	or die ("GAGAL".MYSQL_error());
header ("location:../index.php?MENU=$MENU&ESELON1=$ESELON1&ESELON2=$ESELON2&GO=$GO&ID=$ID&SET=$SET");
?>