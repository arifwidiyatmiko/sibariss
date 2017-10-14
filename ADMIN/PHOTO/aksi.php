<?php
include_once "../../koneksi/koneksi.php";
$G='<hr noshade color=#000000 size=3>';
$MENU=$_GET['MENU'];
$TOPIK=$_GET['TOPIK'];
$HAK=$_GET['HAK'];
$ID=$_GET['ID'];

$sql_address="SELECT * FROM amar_photo_sigap WHERE ID='$ID'";
$qry_address=mysql_query($sql_address, $konek)
	or die ("gagal menampilkan".mysql_error());
$hsl_address=mysql_fetch_array($qry_address);
ECHO "
<form action=../index.php method=GET name=form1 target=_self>	
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=SET value='$SET'>
				<input type='hidden' name=UNIT value='$UNIT'>
				<input type='hidden' name=HAK value='$HAK'>
<input type=SUBmit value=Back></form>

";
if ($TOPIK=='') {$SUB='HIDDEN';}else {;}
if ($TOPIK<>'') {$SUB='SUBMIT';}else {;}

	$sql_cari="SELECT * FROM amar_photo_sigap WHERE TOPIK='$TOPIK' ORDER BY ID DESC";
	$qry_cari = mysql_query($sql_cari, $konek) 
				or die ("Gagal query");
	$jumlah=mysql_num_rows($qry_cari);
	if ($jumlah=='') {
	echo "
<form action=_add.php method=get name=form1 target=_self>
<input type='HIDDEN' name=ID value='$ID'>
<input type='hidden' name=MENU value='$MENU'>
<input type='hidden' name=HAK value='$HAK'>
<input type='hidden' name=ESELON2 value='$hsl_address[ESELON2]'>
<input type='hidden' name=TOPIK value='$hsl_address[TOPIK]'>
<input type=$SUB value=Mulai></form>
	"; exit;}

	echo "
<form action=_add.php method=get name=form1 target=_self>
<input type='HIDDEN' name=ID value='$ID'>
<input type='HIDDEN' name=MENU value='$MENU'>
<input type='HIDDEN' name=HAK value='$HAK'>
<input type='HIDDEN' name=ESELON2 value='$hsl_address[ESELON2]'>
<input type='HIDDEN' name=TOPIK value='$hsl_address[TOPIK]'>
<input type='HIDDEN' name=KODE value='$hsl_address[KODE]'>
<input type=$SUB value=Tambah></form>

<form action=aksi_data.php method=GET name=form1 target=_self>	
				<input type='hidden' name=ID value='$ID'>
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=HAK value='$HAK'>
";

$no=1;
echo"
<table width='100%' border='1' align='center' cellpadding='0' cellspacing='0' bgcolor=#FFFFFF>
  <tr valign='top'> 
    <td width='1' rowspan='2' align=center valign='middle'><font size=3>No.</td>
    <td rowspan='2' align=center valign='middle'><font size=3>Nama Ruangan</td>
    <td colspan=7 align=center valign=top><font size=3>Barang Inventaris</td>
    <td width='5' rowspan='2' align=center valign='middle'><font size=3>Simpan</td>
    <td width='5' rowspan='2' align=center valign='middle'><font size=3>Photo</td>
  </tr>
  <tr valign='top'> 
    <td width='100' align=center valign='top'><font size=3>Jenis<br>Barang</td>
    <td width='100' align=center valign='top'><font size=3>Merk</td>
    <td width='100' align=center valign='top'><font size=3>Jumlah</td>
    <td width='100' align=center valign='top'><font size=3>Kondisi</td>
    <td width='100' align=center valign='top'><font size=3>Tahun</td>
    <td width='100' align=center valign='top'><font size=3>Nilai</td>
    <td width='100' align=center valign='top'><font size=3>Sumber<br>Anggaran</td>
  </tr>
";
	while($data_cari=mysql_fetch_array($qry_cari)){		
$PHOTO1=$data_cari[PHOTO1];
$PHOTO2=$data_cari[PHOTO2];
$PHOTO3=$data_cari[PHOTO3];
$PHOTO4=$data_cari[PHOTO4];
$PHOTO5=$data_cari[PHOTO5];
$PHOTO6=$data_cari[PHOTO6];
		if ($PHOTO1==''){$W1=0;}else {;}
		if ($PHOTO1==''){$H1=0;}else {;}
		if ($PHOTO2==''){$W2=0;}else {;}
		if ($PHOTO2==''){$H2=0;}else {;}
		if ($PHOTO3==''){$W3=0;}else {;}
		if ($PHOTO3==''){$H3=0;}else {;}
		if ($PHOTO4==''){$W4=0;}else {;}
		if ($PHOTO4==''){$H4=0;}else {;}
		if ($PHOTO5==''){$W5=0;}else {;}
		if ($PHOTO5==''){$H5=0;}else {;}
		if ($PHOTO6==''){$W6=0;}else {;}
		if ($PHOTO6==''){$H6=0;}else {;}

		if ($PHOTO1<>''){$W1=125;}else {;}
		if ($PHOTO1<>''){$H1=125;}else {;}
		if ($PHOTO2<>''){$W2=125;}else {;}
		if ($PHOTO2<>''){$H2=125;}else {;}
		if ($PHOTO3<>''){$W3=125;}else {;}
		if ($PHOTO3<>''){$H3=125;}else {;}
		if ($PHOTO4<>''){$W4=125;}else {;}
		if ($PHOTO4<>''){$H4=125;}else {;}
		if ($PHOTO5<>''){$W5=125;}else {;}
		if ($PHOTO5<>''){$H5=125;}else {;}
		if ($PHOTO6<>''){$W6=125;}else {;}
		if ($PHOTO6<>''){$H6=125;}else {;}
if ($TOPIK=='') {$T='HIDDEN';}else {;}
if ($TOPIK<>'') {$T='TEXT';}else {;}

if ($TOPIK=='') {$R='HIDDEN';}else {;}
if ($TOPIK<>'') {$R='RADIO';}else {;}

echo "<tr><form action=aksi_data.php method=GET name=form1 target=_self>
<th align=center valign=top><TABLE WIDTH=1%><td align=center><font size=3>$no.</TABLE>
<th align=LEFT valign=top><TABLE WIDTH=><td align=LEFT>
	<input name=TOPIK type=text size=25 value='$data_cari[TOPIK]'><br>
	Kode Ruangan:<br>
	<input name=KODE type=text size=5 value='$data_cari[KODE]'>
				<input type='hidden' name=ID value='$ID'>
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=HAK value='$HAK'>
	<input type=submit value=Simpan></form>
	</TABLE>
<th bgcolor=#FFCC00 align=center valign=top><TABLE WIDTH=><td align=center><form action=edit.php method=get name=form1 target=_self>
	<input type=$T SIZE=15 name=JENIS value='$data_cari[JENIS]'>
	<img src='$PHOTO1' width=$W1 height=$H1>
	</TABLE>
<th bgcolor=#FFCC00 align=center valign=top><TABLE WIDTH=><td align=center>
	<input type=$T SIZE=10 name=MERK value='$data_cari[MERK]'></TABLE>
<th bgcolor=#FFCC00 align=center valign=top><TABLE WIDTH=><td align=center>
	<input type=$T SIZE=3 name=JUMLAH value='$data_cari[JUMLAH]'></TABLE>
<th bgcolor=#FFCC00 align=LEFT valign=top><TABLE WIDTH=100><td align=LEFT>
	<input type=HIDDEN SIZE=10 name=KONDISI value='$data_cari[KONDISI]'>
	<input type=text SIZE=2 name=BAIK value='$data_cari[BAIK]'>Baik<BR>
	<input type=text SIZE=2 name=RUSAK value='$data_cari[RUSAK]'>Rusak
	</TABLE>

<th bgcolor=#FFCC00 align=center valign=top><TABLE WIDTH=><td align=center>
	<input type=$T SIZE=4 name=TAHUN value='$data_cari[TAHUN]'></TABLE>
<th bgcolor=#FFCC00 align=center valign=top><TABLE WIDTH=><td align=center>
	<input type=$T SIZE=5 name=NILAI value='$data_cari[NILAI]'></TABLE>
<th bgcolor=#FFCC00 align=LEFT valign=top><TABLE WIDTH=130><td align=CENTER><input type=$T SIZE=5 name=SUMBER value='$data_cari[SUMBER]'></TABLE>
<th bgcolor=#FFCC00 align=center valign=top><TABLE WIDTH=><td align=center>
	<input type='hidden' name=NO value='$data_cari[ID]'>
	<input type='hidden' name=ID value='$ID'>
	<input type='hidden' name=MENU value='$MENU'>
	<input type='hidden' name=TOPIK value='$data_cari[TOPIK]'>
	<input type=$SUB value=Simpan></form>

	<form action=_hapus.php method=get name=form1 target=_self>
	<input type='hidden' name=NO value='$data_cari[ID]'>
	<input type='hidden' name=ID value='$ID'>
	<input type='hidden' name=MENU value='$MENU'>
	<input type='hidden' name=HAK value='$HAK'>
	<input type='hidden' name=ESELON2 value='$hsl_address[ESELON2]'>
	<input type='hidden' name=TOPIK value='$data_cari[TOPIK]'>
	<input type=$SUB value=Hapus></form>
	</TABLE>
<th bgcolor=#FFCC00 align=center valign=top><TABLE WIDTH=><td align=LEFT>
			<form method=\"post\" action=\"journal.php?ID=$data_cari[ID]&KODE=PHOTO1&NAMA=$NAMA&MENU=$MENU\" enctype=\"multipart/form-data\">
        <input type=\"FILE\" name='foto'>
		<input type='hidden' name=NO value='$data_cari[ID]'>
		<input type='hidden' name=ID value='$ID'>
		<input type='hidden' name=MENU value='$MENU'>
		<input type='hidden' name=TOPIK value='$data_cari[TOPIK]'>
		<input type='hidden' name=HAK value='$HAK'>
		<input type=\"submit\" value=\"Photo\"></form>
	</TABLE>

";
$no++;
}
?>

