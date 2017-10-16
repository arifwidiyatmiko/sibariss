<?php
include_once "../koneksi/koneksi.php";
$G='<hr noshade color=#000000 size=3>';
$MENU=$_GET['MENU'];
$SET=$_GET['SET'];
$HAK=$_GET['HAK'];
$ID=$_GET['ID'];

	$sql_cari="SELECT * FROM sesdep_aturan WHERE HAK<>'' ORDER BY ID DESC";
	$qry_cari = mysql_query($sql_cari, $konek) 
				or die ("Gagal query");
	$jumlah=mysql_num_rows($qry_cari);
	if ($jumlah=='') {
	echo "
<form action=PERATURAN/add.php method=GET name=form1 target=_self>	
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=SET value='$SET'>
				<input type='hidden' name=HAK value='DEPUTI2'>
<input type=SUBmit value=Mulai></form>
	"; exit;}

	echo "
<form action=PERATURAN/add.php method=GET name=form1 target=_self>	
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=SET value='$SET'>
				<input type='hidden' name=HAK value='DEPUTI2'>
<input type=submit class=btn btn-success value=Tambah></form>

";

?>
<a href="PERATURAN/pdf.php?UNIT=<?PHP echo $_GET['UNIT'];?>&MENU=<?php echo $_GET['MENU'];?>" class="btn btn-primary">Daftar Peraturan</a>
<?php
$no=1;
echo"
<table width='95%' border='1' align='center' cellpadding='0' cellspacing='0' bgcolor=#FFFFFF>
  <tr valign='top'> 
    <td width='1' rowspan='2' align=center valign='middle'><font size=3>No.</td>
    <td align=center valign='middle'><font size=3>Nama Peraturan</td>
    <td align=center valign='middle'><font size=3>Jenis</td>
    <td align=center valign='middle'><font size=3>Simpan</td>
    <td align=center valign='middle'><font size=3>PDF</td>
    <td align=center valign='middle'><font size=3>Hapus</td>
  </tr>
  <tr valign='top'> 
  </tr>
";
	while($data_cari=mysql_fetch_array($qry_cari)){		
$PDF=$data_cari[PDF];
	if ($PDF<>'') {$ARTI='SUBMIT';}else {;} 
	if ($PDF=='') {$ARTI='HIDDEN';}else {;} 

echo "<tr><form action=PERATURAN/aksi_data.php method=GET name=form1 target=_self>
<th align=center valign=top><TABLE WIDTH=1%><td align=center><font size=3>$no.</TABLE>
<th align=LEFT valign=top><TABLE WIDTH=><td align=LEFT>
	<input name=TENTANG type=text size=50 value='$data_cari[TENTANG]'><BR>
	Tahun: <input name=TAHUN type=text size=5 value='$data_cari[TAHUN]'> Nomor: <input name=NOMOR type=text size=25 value='$data_cari[NOMOR]'><BR>

	$data_cari[TOPIK]<BR><input name=TOPIK type=HIDDEN size=25 value='$data_cari[TOPIK]'>
	<input name=TOPIK type=RADIO value='Umum'><font size=2>Umum<br>
	<input name=TOPIK type=RADIO value='Tanah dan Rumah Negara'><font size=2>Tanah dan Rumah Negara<br>
	<input name=TOPIK type=RADIO value='Kodefikasi'><font size=2>Kodefikasi<br>
	<input name=TOPIK type=RADIO value='Pelimpahan Wewenang'><font size=2>Pelimpahan Wewenang<br>
	<input name=TOPIK type=RADIO value='Pemanfaatan BMN'><font size=2>Pemanfaatan BMN<br>
	<input name=TOPIK type=RADIO value='Penata Usahaan BMN'><font size=2>Penata Usahaan BMN<br>
	<input name=TOPIK type=RADIO value='Penetapan dan Alih Status'><font size=2>Penetapan dan Alih Status<br>
	<input name=TOPIK type=RADIO value='Pengelolaan dan Rencana Kebutuhan'><font size=2>Pengelolaan dan Rencana Kebutuhan<br>
	<input name=TOPIK type=RADIO value='Penghapusan dan Lelang'><font size=2>Penghapusan dan Lelang<br>
	<input name=TOPIK type=RADIO value='Rekonsiliasi'><font size=2>Rekonsiliasi<br>
	
	</table>
<th align=LEFT valign=top><TABLE WIDTH=><td align=LEFT>$data_cari[JENIS] <input name=JENIS type=HIDDEN size=25 value='$data_cari[JENIS]'><BR>
	<input name=JENIS type=RADIO value='Undang-undang'><font size=2>Undang-undang <br>
	<input name=JENIS type=RADIO value='Peraturan Pemerintah'><font size=2>Peraturan Pemerintah<br>
	<input name=JENIS type=RADIO value='Peraturan Presiden'><font size=2>Peraturan Presiden<br>
	<input name=JENIS type=RADIO value='Keputusan Presiden'><font size=2>Keputusan Presiden<br>
	<input name=JENIS type=RADIO value='Peraturan Menteri'><font size=2>Peraturan Menteri<br>
	<input name=JENIS type=RADIO value='Peraturan Lainnya'><font size=2>Peraturan Lainnya<br>
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=HAK value='$HAK'>
				<input type='hidden' name=SET value='$SET'>
				<input type='hidden' name=ID value='$data_cari[ID]'>
	</TABLE>

<th align=LEFT valign=top><TABLE WIDTH=><td align=LEFT>
	<input type=submit value=Simpan></form>
	</TABLE>

<th bgcolor=#FFCC00 align=center valign=top><TABLE WIDTH=><td align=LEFT>
			<form method=\"post\" action=\"PERATURAN/journal.php?ID=$data_cari[ID]&KODE=PDF&SET=$SET&MENU=$MENU&HAK=$HAK\" enctype=\"multipart/form-data\">
        <input type=\"FILE\" name='foto'>
		<input type=\"submit\" value=\"PDF\"></form><BR>
		
	<form action='PERATURAN/$data_cari[PDF]' method=GET name=form1 target=_self>
	<input type=$ARTI value=PDF></form>
	</TABLE>

<th bgcolor=#FFCC00 align=center valign=top><TABLE WIDTH=><td align=LEFT>
	<form action=PERATURAN/hapus.php method=get name=form1 target=_self>
	<input type='hidden' name=ID value='$data_cari[ID]'>
	<input type='hidden' name=SET value='$SET'>
	<input type='hidden' name=MENU value='$MENU'>
	<input type='hidden' name=HAK value='$HAK'>
	<input type='hidden' name=ESELON2 value='$hsl_address[ESELON2]'>
	<input type='hidden' name=TOPIK value='$data_cari[TOPIK]'>
	<input type=SUBmit value=Hapus></form>
	</TABLE>
";
$no++;
}
?>

