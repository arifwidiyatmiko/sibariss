<?PHP
$MENU=$_GET['MENU'];
$UNIT=$_GET['UNIT'];
$PELAKSANA=$_GET['PELAKSANA'];
$ESELON2=$_GET['ESELON2'];
$ID=$_GET['ID'];
$NO=$_GET['NO'];
//$SET=$_GET['SET'];
$AKSI=$_GET['AKSI'];
$G='<hr noshade color=#2A7B53 size=3>';
	if ($AKSI=='') {$GOTO="OPERATOR='$NAMA'";}else {;}
	if ($AKSI<>'') {$GOTO="ID='$NOMOR'";}else {;}

$sql_address="SELECT * FROM amar_sigap WHERE ID='$ID' ORDER BY ID DESC";
$qry_address=mysql_query($sql_address, $konek)
	or die ("gagal menampilkan".mysql_error());
$hsl=mysql_fetch_array($qry_address);
$PELAKSANA=$hsl['PELAKSANA']; 
$NO=$hsl['ID']; 
	if ($PELAKSANA<>'') {$GO='SIGAP.php';}else {;}
	if ($PELAKSANA=='') {$GO='blank.php';}else {;}

include_once "$GO";

			echo "
<form action=daftar.php method=get name=form1 target=_self>
				<input type='hidden' name=SET value='BOOKING'>
				<input type='hidden' name=ID value='$ID'>
				<input type='hidden' name=GO value='$GO'>
				<input type='hidden' name=ESELON1 value='$ESELON1'>
				<input type='hidden' name=ESELON2 value='$ESELON2'>
				<input type='hidden' name=NAMA value='$NAMA'>
<input type=SUBMIT value='TAMBAH'></form>
			
<form action=book/jadwal_data.php method=GET target=_self>
<input name=ESELON1 type=HIDDEN value='$ESELON1'>
<input name=ESELON2 type=HIDDEN value='$ESELON2'>
<input name=NAMA type=HIDDEN value='$NAMA'>
<input name=GO type=HIDDEN value='$GO'>
<input name=ID type=HIDDEN value='$ID'>
<input name=NO type=HIDDEN value='$NO'>
<input name=SET type=HIDDEN value='$SET'>
";
include_once "jadwal.php";
	if ($PELAKSANA=='') {echo "";	exit;}
?>
