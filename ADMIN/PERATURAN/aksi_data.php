<?php
include_once "../../koneksi/koneksi.php";

$MENU=$_GET['MENU'];
$HAK=$_GET['HAK'];
$ID=$_GET['ID'];
$NO=$_GET['NO'];
$SET=$_GET['SET'];
$TENTANG=$_GET['TENTANG'];
$TAHUN=$_GET['TAHUN'];
$NOMOR=$_GET['NOMOR'];
$JENIS=$_GET['JENIS'];
$TOPIK=$_GET['TOPIK'];

$update="UPDATE sesdep_aturan SET 
TOPIK='$TOPIK',
TENTANG='$TENTANG',
TAHUN='$TAHUN',
NOMOR='$NOMOR',
JENIS='$JENIS'

WHERE ID='$ID'";


$hasil=mysql_query($update,$konek)
	or die ("GAGAL".MYSQL_error());

header ("location:../../ADMIN/index.php?SET=$SET&MENU=$MENU&HAK=$HAK");
?>
