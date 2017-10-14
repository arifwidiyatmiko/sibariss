<?php
include_once "../../koneksi/koneksi.php";

$MENU=$_GET['MENU'];
$HAK=$_GET['HAK'];
$UNIT=$_GET['UNIT'];
$ID=$_GET['ID'];
$PASSWORD=$_GET['PASSWORD'];
$NAMA=$_GET['NAMA'];
$NIP=$_GET['NIP'];
$JABATAN=$_GET['JABATAN'];
$ESELON=$_GET['ESELON'];

$NOMOR= $_GET['NOMOR'];

$hapus="DELETE FROM amar_sigap where ID='$NOMOR'";


mysql_query($hapus,$konek)
	or die ("GAGAL".MYSQL_error());

$ESELON1=$_GET['ESELON1'];
$ESELON2=$_GET['ESELON2'];
$GO=$_GET['GO'];
$NAMA=$_GET['NAMA'];
$SET=$_GET['SET'];
header ("location:../index.php?MENU=SETTING&UNIT=RTP&ESELON1=$ESELON1&ESELON2=$ESELON2&GO=$GO&NAMA=$NAMA&SET=$SET&ID=$ID");
?>
