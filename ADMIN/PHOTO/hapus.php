<?php
include_once "../../koneksi/koneksi.php";

$MENU=$_GET['MENU'];
$NAMA=$_GET['NAMA'];
$ID=$_GET['ID'];
$TOPIK=$_GET['TOPIK'];
$SUMBER=$_GET['SUMBER'];
$HAK=$_GET['HAK'];

$hapus="DELETE FROM amar_photo_sigap where ID='$ID'";
mysql_query($hapus,$konek)
	or die ("GAGAL".MYSQL_error());

header ("location:../../ADMIN/index.php?SET=GALLERY&MENU=SETTING&UNIT=$HAK&HAK=$HAK");
?>
