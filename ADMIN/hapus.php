<?php
$server ="localhost";
$user ="jimat";
$passwd ="jimat.db";
$dbs ="jimat_maritim"; 
$konek=mysql_connect($server, $user, $passwd)
or die ("Gagal konek ke server MySQL".mysql_error());
$bukadb=mysql_select_db($dbs)
or die ("Gagal membuka database $dbs".mysql_error());

$MENU=$_GET['MENU'];
$HAK=$_GET['HAK'];
$UNIT=$_GET['UNIT'];
$ESELON2=$_GET['ESELON2'];
$ID=$_GET['ID'];
$PASSWORD=$_GET['PASSWORD'];
$NAMA=$_GET['NAMA'];
$NIP=$_GET['NIP'];
$JABATAN=$_GET['JABATAN'];
$ESELON=$_GET['ESELON'];

$id= $_GET['id'];

$hapus="DELETE FROM amar_sigap where ID='$ID'";


mysql_query($hapus,$konek)
	or die ("GAGAL".MYSQL_error());
header ("location:index.php?MENU=SETTING&UNIT=RTP");
?>
