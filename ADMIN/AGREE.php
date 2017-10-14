<?php
$server ="localhost";
$user ="jimat";
$passwd ="jimat.db";
$dbs ="jimat_maritim"; 
$konek=mysql_connect($server, $user, $passwd)
or die ("Gagal konek ke server MySQL".mysql_error());
$bukadb=mysql_select_db($dbs)
or die ("Gagal membuka database $dbs".mysql_error());

$PELAKSANA=$_GET['PELAKSANA'];
$ID=$_GET['ID'];
$TEMPAT=$_GET['TEMPAT'];
$KEJADIAN=$_GET['KEJADIAN'];
$PENUTUP=$_GET['PENUTUP'];
$SELESAI=$_GET['SELESAI'];
$WI=$_GET['WI'];
$HARI=$_GET['HARI'];
$BULAN=$_GET['BULAN'];
$TAHUN=$_GET['TAHUN'];
$JAM=$_GET['JAM'];
$JUMLAH=$_GET['JUMLAH'];
$OPERATOR=$_GET['OPERATOR'];
	if ($HARI=='') {ECHO"TANGGAL WAJIB DIISI";	exit;}
	if ($BULAN=='') {ECHO"BULAN WAJIB DIISI";	exit;}
	if ($TAHUN=='') {ECHO"TAHUN WAJIB DIISI";	exit;}
	if ($JAM=='') {ECHO"WAKTU WAJIB DIISI";	exit;}
	if ($JUMLAH=='') {ECHO"JUMLAH PESERTA WAJIB DIISI";	exit;}
	if ($PELAKSANA=='') {ECHO"PENANGGUNGJAWAB WAJIB DIISI";	exit;}

$update="UPDATE amar_sigap SET 
OPERATOR='$OPERATOR',
JUMLAH='$JUMLAH',
JAM='$JAM',
TAHUN='$TAHUN',
BULAN='$BULAN',
HARI='$HARI',
WI='$WI',
PELAKSANA='$PELAKSANA',
TEMPAT='$TEMPAT',
KEJADIAN='$KEJADIAN',
PENUTUP='$PENUTUP',
SELESAI='$SELESAI'


WHERE ID='$ID'";


$hasil=mysql_query($update,$konek)
	or die ("GAGAL".MYSQL_error());

header ("location:index.php?PELAKSANA=$PELAKSANA&ID=$ID&MENU=SETTING&UNIT=RTP");
//ECHO"X-$ESELON4";
?>
