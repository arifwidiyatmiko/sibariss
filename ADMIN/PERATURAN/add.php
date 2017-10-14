<?php
include_once "../../koneksi/koneksi.php";

$MENU=$_GET['MENU'];
$HAK=$_GET['HAK'];
$SET=$_GET['SET'];

$perintah="INSERT INTO sesdep_aturan (
HAK
)
					
VALUES(
'$HAK'
)";

$hasil=mysql_query($perintah,$konek)
	or die ("GAGAL".MYSQL_error());
header ("location:../../ADMIN/index.php?SET=$SET&MENU=$MENU&HAK=$HAK");
?>