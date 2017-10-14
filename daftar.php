<?php
include_once "koneksi/koneksi.php";

$ESELON1=$_GET['ESELON1'];
$ESELON2=$_GET['ESELON2'];
$ID=$_GET['ID'];
$GO=$_GET['GO'];
$NAMA=$_GET['NAMA'];
$SET=$_GET['SET'];
	if ($GO=='PNS') {$DB='amar_induk';}else {;}
	if ($GO<>'PNS') {$DB='amar_tkk';}else {;}

$sql_address="SELECT * FROM $DB WHERE NAMA='$NAMA' AND ESELON1='$ESELON1' ORDER BY ID ASC";
$qry_address=mysql_query($sql_address, $konek)
	or die ("gagal menampilkan".mysql_error());
$hsl=mysql_fetch_array($qry_address);
$ESELON3=$hsl['ESELON3'];


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
header ("location:index.php?NAMA=$NAMA&ESELON1=$ESELON1&ESELON2=$ESELON2&GO=$GO&ID=$ID&SET=$SET");
?>