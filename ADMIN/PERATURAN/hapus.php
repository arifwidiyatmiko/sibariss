<?php
include_once "../../koneksi/koneksi.php";

$MENU=$_GET['MENU'];
$SET=$_GET['SET'];
$ID=$_GET['ID'];
$TOPIK=$_GET['TOPIK'];
$SUMBER=$_GET['SUMBER'];
$HAK=$_GET['HAK'];

$hapus="DELETE FROM sesdep_aturan where ID='$ID'";
mysql_query($hapus,$konek)
	or die ("GAGAL".MYSQL_error());

header ("location:../../ADMIN/index.php?SET=$SET&MENU=$MENU&HAK=$HAK");
?>
