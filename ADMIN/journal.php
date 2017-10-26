<?php
include_once "../koneksi/koneksi.php";

$MENU=$_GET['MENU'];
$HAK=$_POST['HAK'];
$ID=$_GET['ID'];
$TOPIK=$_POST['TOPIK'];
$SUMBER=$_GET['SUMBER'];
$KODE=$_GET['KODE'];
$dir = "/";
$tmp=$_FILES['foto']['tmp_name'];
// echo $MENU;exit();
if(!is_uploaded_file($tmp)){
   echo "";
}
$namafile=$_FILES['foto']['name'];
			$X=strlen($namafile);
			$Y=strlen($namafile)-3;
			$Z=$Y-$X;
			$SET=substr($namafile,$Y,3);
	if ($SET=='php') {echo "SALAH"; exit;}
	if ($SET=='PHP') {echo "SALAH"; exit;}
	if ($SET=='html') {echo "SALAH"; exit;}
	if ($SET=='htm') {echo "SALAH"; exit;}
if(!move_uploaded_file($tmp,$dir.$namafile)){
   echo "";
}
	$T='.';


echo "";

$ukuran=$_FILES['foto']['size'];
$file_type=$_FILES['foto']['type'];

$update="UPDATE amar_photo_sigap SET 
$KODE='$namafile'

WHERE ID='$ID'";
mysql_query($update,$konek)
	or die ("GAGAL".MYSQL_error());

header ("location:../ADMIN/index.php?TOPIK=$TOPIK&MENU=$MENU&ID=$ID&HAK=$HAK");
?>
