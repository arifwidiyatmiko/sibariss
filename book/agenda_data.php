<?php
$server ="localhost";
$user ="jimat";
$passwd ="jimat.db";
$dbs ="jimat_maritim"; 
$konek=mysql_connect($server, $user, $passwd)
or die ("Gagal konek ke server MySQL".mysql_error());
$bukadb=mysql_select_db($dbs)
or die ("Gagal membuka database $dbs".mysql_error());

$NAMA=$_GET['NAMA'];
$ESELON1=$_GET['ESELON1'];
$ESELON2=$_GET['ESELON2'];
$GO=$_GET['GO'];
$WI=$_GET['WI'];
$HARI=$_GET['HARI'];
$BULAN=$_GET['BULAN'];
$TAHUN=$_GET['TAHUN'];
$TEMPAT=$_GET['TEMPAT'];
$ID=$_GET['ID'];
$NO=$_GET['NO'];
$PELAKSANA=$_GET['PELAKSANA'];
$JAM=$_GET['JAM'];
$JUMLAH=$_GET['JUMLAH'];
	if ($HARI=='') {ECHO"TANGGAL WAJIB DIISI";	exit;}
	if ($BULAN=='') {ECHO"BULAN WAJIB DIISI";	exit;}
	if ($TAHUN=='') {ECHO"TAHUN WAJIB DIISI";	exit;}
	if ($JAM=='') {ECHO"WAKTU WAJIB DIISI";	exit;}
	if ($JUMLAH=='') {ECHO"JUMLAH PESERTA WAJIB DIISI";	exit;}
	if ($PELAKSANA=='') {ECHO"PENANGGUNGJAWAB WAJIB DIISI";	exit;}

$update="UPDATE amar_sigap SET 
JUMLAH='$JUMLAH',
WI='$WI',
JAM='$JAM',
HARI='$HARI',
BULAN='$BULAN',
TAHUN='$TAHUN',
TEMPAT='$TEMPAT',

PELAKSANA='$PELAKSANA'


WHERE ID='$NO'";


$hasil=mysql_query($update,$konek)
	or die ("GAGAL".MYSQL_error());

//header ("location:TEST.php?HARI=$HARI&BULAN=$BULAN&TAHUN=$TAHUN&JAM=$JAM&TEMPAT=$TEMPAT&NO=$NO&GO=$GO&ESELON1=$ESELON1&ESELON2=$ESELON2&NAMA=$NAMA&ID=$ID&SET=BOOKING");
//ECHO"X-$ESELON4";
?>
