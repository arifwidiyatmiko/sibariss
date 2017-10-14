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
$NO=$_GET['NO'];
$NAMA=$_GET['NAMA'];
$GO=$_GET['GO'];
$PENUTUP=$_GET['PENUTUP'];
$SELESAI=$_GET['SELESAI'];
$HARI=$_GET['HARI'];
$BULAN=$_GET['BULAN'];
$TAHUN=$_GET['TAHUN'];
$JAM=$_GET['JAM'];
$MENU=$_GET['MENU'];
$TEMPAT=$_GET['TEMPAT'];
$ESELON1=$_GET['ESELON1'];
$ESELON2=$_GET['ESELON2'];
echo " 
<form action=../index.php method=GET name=form1 target=_self>
				<input type='hidden' name=NOMOR value='$NO'>
				<input type='hidden' name=SET value='BOOKING'>
				<input type='hidden' name=AKSI value='BOOKING'>
				<input type='hidden' name=ESELON1 value='$ESELON1'>
				<input type='hidden' name=ESELON2 value='$ESELON2'>
				<input type='hidden' name=ID value='$ID'>
				<input type='hidden' name=NAMA value='$NAMA'>
				<input type='hidden' name=GO value='$GO'>
		<input type=submit value='BATAL'></form>
";

$query="SELECT amar_sigap.TEMPAT, COUNT( amar_sigap.TEMPAT) AS DATA FROM amar_sigap WHERE TEMPAT='$TEMPAT' AND HARI='$HARI' AND BULAN='$BULAN' AND TAHUN='$TAHUN' AND JAM='$JAM' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error()); $data=mysql_fetch_array($qry_address);
$LAYAK=$data[DATA];
if ($LAYAK=='1') {$TEMPAT=$TEMPAT;}else {;} 
if ($LAYAK>'1') {$TEMPAT='';}else {;} 
//ECHO"L-$TEMPAT $HARI $BULAN $TAHUN $JAM $LAYAK";
$update="UPDATE amar_sigap SET 
TEMPAT='$TEMPAT'


WHERE ID='$ID'";
$hasil=mysql_query($update,$konek)
	or die ("GAGAL".MYSQL_error());

	if ($LAYAK>1) {echo "MAAF BENTROK JADWAL WAKTU DAN TEMPAT";	exit;}

if ($PELAKSANA=='RTP') {$ARTI='AGREE.php';}else {;} 
if ($PELAKSANA<>'RTP') {$ARTI='setuju.php';}else {;} 


header ("location:../index.php?GO=$GO&ESELON1=$ESELON1&ESELON2=$ESELON2&NAMA=$NAMA&ID=$ID&SET=BOOKING");
//ECHO"X-$ESELON4";
?>
