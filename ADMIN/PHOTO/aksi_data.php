<?php
include_once "../../koneksi/koneksi.php";

$MENU=$_GET['MENU'];
$HAK=$_GET['HAK'];
$ID=$_GET['ID'];
$NO=$_GET['NO'];
$TOPIK=$_GET['TOPIK'];
$SUMBER=$_GET['SUMBER'];
$UNIT=$_GET['UNIT'];
$FASILITAS=$_GET['FASILITAS'];
$SATUAN=$_GET['SATUAN'];
$ESELON2=$_GET['ESELON2'];
$KODE=$_GET['KODE'];

$update="UPDATE amar_photo_sigap SET 
KODE='$KODE',
ESELON2='$ESELON2',
SATUAN='$SATUAN',
FASILITAS='$FASILITAS',
TOPIK='$TOPIK',
UNIT='$UNIT',
SUMBER='$SUMBER'

WHERE ID='$ID'";


$hasil=mysql_query($update,$konek)
	or die ("GAGAL".MYSQL_error());

header ("location:../../ADMIN/PHOTO/aksi.php?TOPIK=$TOPIK&MENU=$MENU&ID=$ID&HAK=$HAK");
?>
