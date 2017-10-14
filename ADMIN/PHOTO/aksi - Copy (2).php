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

	$sql_cari="SELECT * FROM amar_photo_sigap WHERE TOPIK='$TOPIK' ORDER BY ID aSC";
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
    <td width='5' rowspan='2' align=center valign='middle'><font size=3>Kode</td>
    <td colspan=4 align=center valign=top><font size=3>Manajemen Ruangan</td>
    <td width='5' rowspan='2' align=center valign='middle'><font size=3>Simpan</td>
    <td width='5' rowspan='2' align=center valign='middle'><font size=3>Photo</td>
    <td width='5' rowspan='2' align=center valign='middle'><font size=3>Video</td>
  </tr>
  <tr valign='top'> 
    <td width='100' align=center valign='top'><font size=3>Jenis Fasilitas</td>
    <td width='100' align=center valign='top'><font size=3>Merk</td>
    <td width='100' align=center valign='top'><font size=3>Jumlah</td>
    <td width='100' align=center valign='top'><font size=3>Kondisi</td>
  </tr>
";
	while($data_cari=mysql_fetch_array($qry_cari)){		
if ($TOPIK=='') {$T='HIDDEN';}else {;}
if ($TOPIK<>'') {$T='TEXT';}else {;}

echo "<tr><form action=aksi_data.php method=GET name=form1 target=_self>
<th align=center valign=top><TABLE WIDTH=1%><td align=center><font size=3>$no.</TABLE>
<th align=LEFT valign=top><TABLE WIDTH=><td align=LEFT>
	<input name=TOPIK type=text size=50 value='$data_cari[TOPIK]'><BR>
	Pengguna: <br>
	<input name=ESELON2 type=text size=50 value='$data_cari[ESELON2]'>
		<DIV ALIGN=LEFT>
		<input type=radio name=ESELON2 value=''><BR>
		<input type=radio name=ESELON2 value='Sekretariat Deputi'><font size=2>Sekretariat Deputi<BR>
		<input type=radio name=ESELON2 value='Asisten Deputi Sumber Daya Hayati'><font size=2>Asisten Deputi Sumber Daya Hayati<BR>
		<input type=radio name=ESELON2 value='Asisten Deputi Sumber Daya Mineral, Energi dan Non Konvensional'><font size=2>Asisten Deputi Sumber Daya Mineral, Energi dan Non Konvensional<BR>
		<input type=radio name=ESELON2 value='Asisten Deputi Jasa Kemaritiman'><font size=2>Asisten Deputi Jasa Kemaritiman<BR>
		<input type=radio name=ESELON2 value='Asisten Deputi Lingkungan dan Kebencanaan Maritim'><font size=2>Asisten Deputi Lingkungan dan Kebencanaan Maritim
	
	</TABLE>
<th align=LEFT valign=top><TABLE WIDTH=><td align=center>
	<input name=KODE type=text size=5 value='$data_cari[KODE]'>
				<input type='hidden' name=ID value='$ID'>
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=HAK value='$HAK'>
	<input type=submit value=Simpan></form>
	</TABLE>
<th bgcolor=#FFCC00 align=center valign=top><TABLE WIDTH=><td align=center><form action=edit.php method=get name=form1 target=_self>
	<input type=$T SIZE=15 name=JENIS value='$data_cari[JENIS]'></TABLE>
<th bgcolor=#FFCC00 align=center valign=top><TABLE WIDTH=><td align=center>
	<input type=$T SIZE=10 name=MERK value='$data_cari[MERK]'></TABLE>
<th bgcolor=#FFCC00 align=center valign=top><TABLE WIDTH=><td align=center>
	<input type=$T SIZE=3 name=JUMLAH value='$data_cari[JUMLAH]'></TABLE>
<th bgcolor=#FFCC00 align=center valign=top><TABLE WIDTH=><td align=center>
	<input type=$T SIZE=10 name=KONDISI value='$data_cari[KONDISI]'></TABLE>
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
			<form method=\"post\" action=\"journal.php?ID=$ID&KODE=PHOTO1&NAMA=$NAMA&MENU=$MENU\" enctype=\"multipart/form-data\">
        <input type=\"FILE\" name='foto'>
		<input type='hidden' name=NO value='$data_cari[ID]'>
		<input type='hidden' name=ID value='$ID'>
		<input type='hidden' name=MENU value='$MENU'>
		<input type='hidden' name=TOPIK value='$data_cari[TOPIK]'>
		<input type='hidden' name=HAK value='$HAK'>
		<input type=\"submit\" value=\"Photo\"></form>
	</TABLE>
<th bgcolor=#FFCC00 align=center valign=top><TABLE WIDTH=><td align=LEFT>
			<form method=\"post\" action=\"journal.php?ID=$ID&KODE=PHOTO1&NAMA=$NAMA&MENU=$MENU\" enctype=\"multipart/form-data\">
        <input type=\"FILE\" name='foto'>
		<input type='hidden' name=NO value='$data_cari[ID]'>
		<input type='hidden' name=ID value='$ID'>
		<input type='hidden' name=MENU value='$MENU'>
		<input type='hidden' name=TOPIK value='$data_cari[TOPIK]'>
		<input type='hidden' name=HAK value='$HAK'>
		<input type=\"submit\" value=\"Video\"></form>
</TABLE>

";
$no++;
}
?>

