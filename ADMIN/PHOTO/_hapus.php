<?php
include_once "../../koneksi/koneksi.php";

$MENU=$_GET['MENU'];
$NAMA=$_GET['NAMA'];
$ID=$_GET['ID'];
$NO=$_GET['NO'];
$TOPIK=$_GET['TOPIK'];
$SUMBER=$_GET['SUMBER'];
$HAK=$_GET['HAK'];

$hapus="DELETE FROM amar_photo_sigap where ID='$NO'";
mysql_query($hapus,$konek)
	or die ("GAGAL".MYSQL_error());

header ("location:../../ADMIN/PHOTO/aksi.php?TOPIK=$TOPIK&MENU=$MENU&ID=$ID&HAK=$HAK");
?>
