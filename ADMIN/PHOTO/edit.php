<?php
include_once "../../koneksi/koneksi.php";

$MENU=$_GET['MENU'];
$HAK=$_GET['HAK'];
$ID=$_GET['ID'];
$TOPIK=$_GET['TOPIK'];
$SUMBER=$_GET['SUMBER'];
$UNIT=$_GET['UNIT'];
$FASILITAS=$_GET['FASILITAS'];
$SATUAN=$_GET['SATUAN'];
$ESELON2=$_GET['ESELON2'];

$JENIS=$_GET['JENIS'];
$MERK=$_GET['MERK'];
$JUMLAH=$_GET['JUMLAH'];
$KONDISI=$_GET['KONDISI'];
$NO=$_GET['NO'];
$NILAI=$_GET['NILAI'];
$TAHUN=$_GET['TAHUN'];
$SUMBER=$_GET['SUMBER'];
$KODE=$_GET['KODE'];
$BAIK=$_GET['BAIK'];
$RUSAK=$_GET['RUSAK'];
$APBN=$_GET['APBN'];
$LAIN=$_GET['LAIN'];

$update="UPDATE amar_photo_sigap SET 
APBN='$BAIK',
LAIN='$LAIN',

BAIK='$BAIK',
SUMBER='$SUMBER',
TAHUN='$TAHUN',
NILAI='$NILAI',
JENIS='$JENIS',
MERK='$MERK',
JUMLAH='$JUMLAH',
RUSAK='$RUSAK'

WHERE ID='$NO'";


$hasil=mysql_query($update,$konek)
	or die ("GAGAL".MYSQL_error());

header ("location:../../ADMIN/PHOTO/aksi.php?TOPIK=$TOPIK&MENU=$MENU&ID=$ID&HAK=$HAK");
?>
