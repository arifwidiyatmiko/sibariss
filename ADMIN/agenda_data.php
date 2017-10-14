<?php
$server ="localhost";
$user ="jimat";
$passwd ="jimat.db";
$dbs ="jimat_maritim"; 
$konek=mysql_connect($server, $user, $passwd)
or die ("Gagal konek ke server MySQL".mysql_error());
$bukadb=mysql_select_db($dbs)
or die ("Gagal membuka database $dbs".mysql_error());

$UNIT=$_GET['UNIT'];
$HAK=$_GET['HAK'];
$WI=$_GET['WI'];
$HARI=$_GET['HARI'];
$BULAN=$_GET['BULAN'];
$TAHUN=$_GET['TAHUN'];
$TEMPAT=$_GET['TEMPAT'];
$ID=$_GET['ID'];
$PELAKSANA=$_GET['PELAKSANA'];
$NOMOR=$_GET['NOMOR'];

$update="UPDATE amar_sigap SET 
HAK='$HAK'


WHERE ID='$NOMOR'";


$hasil=mysql_query($update,$konek)
	or die ("GAGAL".MYSQL_error());

header ("location:index.php?MENU=SETTING&UNIT=RTP");
//ECHO"X-$ESELON4";
?>
