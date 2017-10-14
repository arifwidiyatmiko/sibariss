<?php
//include_once "../koneksi/koneksi.php";
$G='<hr noshade color=#000000 size=3>';
$MENU=$_GET['MENU'];
$SET=$_GET['SET'];
$TOPIK=$_GET['TOPIK'];
$ID=$_GET['ID'];

	$sql_cari="SELECT * FROM sesdep_aturan WHERE TOPIK='$TOPIK' ORDER BY ID DESC";
	$qry_cari = mysql_query($sql_cari, $konek) 
				or die ("Gagal query");
	$jumlah=mysql_num_rows($qry_cari);
$no=1;
echo"
<table width='95%' border='1' align='center' cellpadding='0' cellspacing='0' bgcolor=#FFFFFF>
  <tr valign='top'> 
    <td width='1' rowspan='2' align=center valign='middle'><font size=3>No.</td>
    <td align=center valign='middle'><font size=3>Nama Peraturan</td>
    <td align=center valign='middle'><font size=3>PDF</td>
  </tr>
  <tr valign='top'> 
  </tr>
";
	while($data_cari=mysql_fetch_array($qry_cari)){		
$PDF=$data_cari[PDF];
	if ($PDF<>'') {$ARTI='SUBMIT';}else {;} 
	if ($PDF=='') {$ARTI='HIDDEN';}else {;} 

echo "<tr>
<th align=center valign=top><TABLE WIDTH=1%><td align=center><font size=3>$no.</TABLE>
<th align=LEFT valign=top><TABLE WIDTH=><td align=LEFT>$data_cari[TENTANG]<BR>Tahun: $data_cari[TAHUN]
	Nomor: $data_cari[NOMOR]</table>

<th bgcolor=#FFCC00 align=center valign=top><TABLE WIDTH=><td align=LEFT>
	<form action='PERATURAN/$data_cari[PDF]' method=GET name=form1 target=_self>
	<input type=$ARTI value=PDF></form>
	</TABLE>

";
$no++;
}
?>

