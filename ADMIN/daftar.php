<?php
include_once "../koneksi/koneksi.php";

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


$perintah="INSERT INTO amar_sigap (
PELAKSANA,
OPERATOR

)
					
VALUES(
'RTP',
'RTP'

)";

$hasil=mysql_query($perintah,$konek)
	or die ("GAGAL".MYSQL_error());
header ("location:index.php?MENU=SETTING&UNIT=RTP");
?>