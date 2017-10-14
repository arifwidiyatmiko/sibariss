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
$HARI=$_GET['HARI'];
$BULAN=$_GET['BULAN'];
$TAHUN=$_GET['TAHUN'];
$JAM=$_GET['JAM'];

$query="SELECT amar_sigap.TEMPAT, COUNT( amar_sigap.TEMPAT) AS DATA FROM amar_sigap WHERE TEMPAT='$TEMPAT' AND HARI='$HARI' AND BULAN='$BULAN' AND TAHUN='$TAHUN' AND JAM='$JAM' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error()); $data=mysql_fetch_array($qry_address);
$LAYAK=$data[DATA];
ECHO"L-$TEMPAT $HARI $BULAN $TAHUN $JAM $LAYAK";
//	if ($LAYAK>='1') {echo "BENTROK JADWAL";	exit;}

$update="UPDATE amar_sigap SET 
JAM='$JAM',
TAHUN='$TAHUN',
BULAN='$BULAN',
HARI='$HARI',
PELAKSANA='$PELAKSANA',
TEMPAT='$TEMPAT',
KEJADIAN='$KEJADIAN',
PENUTUP='$PENUTUP',
SELESAI='$SELESAI'


WHERE ID='$ID'";


$hasil=mysql_query($update,$konek)
	or die ("GAGAL".MYSQL_error());

header ("location:TEST.php?PELAKSANA=$PELAKSANA&ID=$ID&TEMPAT=$TEMPAT&KEJADIAN=$KEJADIAN&PENUTUP=$PENUTUP&SELESAI=$SELESAI&HARI=$HARI&BULAN=$BULAN&TAHUN=$TAHUN&JAM=$JAM&MENU=SETTING&UNIT=RTP");
//ECHO"X-$ESELON4";
?>
