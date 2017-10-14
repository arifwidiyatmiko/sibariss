<div align="center">
  <div align="center">
    <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr> 
        <td valign="top"> 
          <?php
$G='<hr noshade color=#2A7B53 size=3>';
	$sql_cari="SELECT * FROM amar_photo_sigap WHERE TOPIK<>'' GROUP BY TOPIK ORDER BY TOPIK ASC";
	$qry_cari = mysql_query($sql_cari, $konek) 
				or die ("Gagal query cari?");
	$jumlah=mysql_num_rows($qry_cari);
$no=1;
		while($data_cari=mysql_fetch_array($qry_cari)){		
			echo "<form action=index.php method=GET name=form1 target=_self>
			<input name=SET type=HIDDEN value='$SET'>
			<input name=TOPIK type=HIDDEN value='$data_cari[TOPIK]'>
			<input type=SUBMIT value='Go'><font size=2> $data_cari[TOPIK]</form><BR>";
$no++;
	}
ECHO"$G";
?>
        </td>
        <td width="75%" valign="top"> 
          <?PHP
$TOPIK=$_GET['TOPIK'];
$SET=$_GET['SET'];
	if ($TOPIK=='') {$JURNAL='BLANK.php';}else {;}
	if ($TOPIK<>'') {$JURNAL='RUANG.php';}else {;}
include_once "$JURNAL";
?>
        </td>
      </tr>
    </table>
    <strong><font size="5" face="Geneva, Arial, Helvetica, sans-serif">JENIS BARANG 
    INVENTARIS</font></strong> </div>
  <table width="50%" border="1" align="center" cellpadding="0" cellspacing="0">
    <tr valign="top" bgcolor="#CCCCCC"> 
      <td width="2%" rowspan="3" valign="middle"> <div align="center"><strong><font size="3" face="Geneva, Arial, Helvetica, sans-serif">NO. 
          </font></strong></div>
      <td rowspan="3" valign="middle"> <div align="center"><strong><font size="3" face="Geneva, Arial, Helvetica, sans-serif">NAMA 
          JENIS BARANG INVENTARIS</font></strong></div>
      <td colspan="3"><div align="center"><strong><font size="3" face="Geneva, Arial, Helvetica, sans-serif">JUMLAH</font></strong></div> 
    <tr valign="top" bgcolor="#CCCCCC"> 
      <td width="5%" rowspan="2"> <div align="center"><strong><font size="3" face="Geneva, Arial, Helvetica, sans-serif">Total</font></strong></div>
      <td colspan="2"> <div align="center"><strong></strong></div>
        <div align="center"><strong><font size="3" face="Geneva, Arial, Helvetica, sans-serif">Kondisi</font></strong></div> 
    <tr valign="top" bgcolor="#CCCCCC"> 
      <td width="15%">
<div align="center"><strong><font size="3" face="Geneva, Arial, Helvetica, sans-serif">Baik</font></strong></div>
      <td width="15%">
<div align="center"><strong><font size="3" face="Geneva, Arial, Helvetica, sans-serif">Rusak</font></strong></div> 
    <tr valign="top"> 
      <td colspan="5"> 
        <?php
	$sql_cari="SELECT * FROM amar_photo_sigap WHERE TOPIK<>'' AND JENIS<>''  ORDER BY TOPIK DESC";
	$qry_cari = mysql_query($sql_cari, $konek) 
				or die ("Gagal query");
	$jumlah=mysql_num_rows($qry_cari);
$no=1;

	while($data_cari=mysql_fetch_array($qry_cari)){		
$TOPIK=$data_cari[TOPIK];
$JENIS=$data_cari[JENIS];
$MERK=$data_cari[MERK];
$query="SELECT amar_photo_sigap.JUMLAH, SUM( amar_photo_sigap.JUMLAH) AS T1P1 FROM amar_photo_sigap WHERE JENIS='$JENIS' AND MERK='$MERK' AND TOPIK='$TOPIK'";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$JAN=$data[T1P1];

$query="SELECT amar_photo_sigap.BAIK, SUM( amar_photo_sigap.BAIK) AS T1P1 FROM amar_photo_sigap WHERE JENIS='$JENIS' AND MERK='$MERK' AND TOPIK='$TOPIK'";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$FEB=$data[T1P1];

$query="SELECT amar_photo_sigap.RUSAK, SUM( amar_photo_sigap.RUSAK) AS T1P1 FROM amar_photo_sigap WHERE JENIS='$JENIS' AND MERK='$MERK' AND TOPIK='$TOPIK'";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$MAR=$data[T1P1];

$query="SELECT amar_photo_sigap.JENIS, COUNT( amar_photo_sigap.JENIS) AS T1P1 FROM amar_photo_sigap WHERE JENIS='$JENIS' AND MERK='$MERK' AND SUMBER='APBN' AND TOPIK='$TOPIK'";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$APR=$data[T1P1];

$query="SELECT amar_photo_sigap.JENIS, COUNT( amar_photo_sigap.JENIS) AS T1P1 FROM amar_photo_sigap WHERE JENIS='$JENIS' AND MERK='$MERK' AND SUMBER<>'APBN' AND TOPIK='$TOPIK'";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$MEI=$data[T1P1];

$query="SELECT amar_sigap.TEMPAT, COUNT( amar_sigap.TEMPAT) AS T1P1 FROM amar_sigap WHERE BULAN='6' AND TAHUN='$TAHUN' AND TEMPAT='$TEMPAT' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$JUN=$data[T1P1];

$query="SELECT amar_sigap.TEMPAT, COUNT( amar_sigap.TEMPAT) AS T1P1 FROM amar_sigap WHERE BULAN='7' AND TAHUN='$TAHUN' AND TEMPAT='$TEMPAT' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$JUL=$data[T1P1];

$query="SELECT amar_sigap.TEMPAT, COUNT( amar_sigap.TEMPAT) AS T1P1 FROM amar_sigap WHERE BULAN='8' AND TAHUN='$TAHUN' AND TEMPAT='$TEMPAT' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$AGS=$data[T1P1];

$query="SELECT amar_sigap.TEMPAT, COUNT( amar_sigap.TEMPAT) AS T1P1 FROM amar_sigap WHERE BULAN='9' AND TAHUN='$TAHUN' AND TEMPAT='$TEMPAT' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$SEP=$data[T1P1];

$query="SELECT amar_sigap.TEMPAT, COUNT( amar_sigap.TEMPAT) AS T1P1 FROM amar_sigap WHERE BULAN='10' AND TAHUN='$TAHUN' AND TEMPAT='$TEMPAT' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$OKT=$data[T1P1];

$query="SELECT amar_sigap.TEMPAT, COUNT( amar_sigap.TEMPAT) AS T1P1 FROM amar_sigap WHERE BULAN='11' AND TAHUN='$TAHUN' AND TEMPAT='$TEMPAT' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$NOP=$data[T1P1];

$query="SELECT amar_sigap.TEMPAT, COUNT( amar_sigap.TEMPAT) AS T1P1 FROM amar_sigap WHERE BULAN='12' AND TAHUN='$TAHUN' AND TEMPAT='$TEMPAT' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$DES=$data[T1P1];
$TOTAL=$JAN+$FEB+$MAR+$APR+$MEI+$JUN+$JUL+$AGS+$SEP+$OKT+$NOP+$DES;
			echo "<tr>
			<th align=center valign=top><TABLE WIDTH=2><td align=center><font size=2>$no.</TABLE>
			<th valign=top><TABLE WIDTH=><td bgcolor=><font size=2>$data_cari[JENIS]<BR>$data_cari[MERK]<BR>$data_cari[TOPIK]</TABLE>
			<th align=center valign=MIDDLE><TABLE WIDTH=><td bgcolor=><font size=3>$JAN</TABLE>
			<th align=center valign=MIDDLE><TABLE WIDTH=><td bgcolor=><font size=3>$FEB</TABLE>
			<th align=center valign=MIDDLE><TABLE WIDTH=><td bgcolor=><font size=3>$MAR</TABLE>
			";
$no++;
}

$TAUN=date(Y); //echo"$TAUN";
$TAHUN=$_GET['TAHUN'];
	if ($TAHUN=='') {$TAHUN=$TAUN;}else {;} 
	if ($TAHUN<>'') {$TAHUN=$TAHUN;}else {;} 
$AKSES=$_GET['AKSES'];
$NAMA=$_GET['NAMA'];
$TUGAS=$_GET['TUGAS'];
$UNIT=$_GET['UNIT'];

$query="SELECT amar_sigap.JUMLAH, SUM( amar_sigap.JUMLAH) AS T1P1 FROM amar_sigap WHERE BULAN='1' AND TAHUN='$TAHUN' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$JAN=$data[T1P1];

$query="SELECT amar_sigap.JUMLAH, SUM( amar_sigap.JUMLAH) AS T1P1 FROM amar_sigap WHERE BULAN='2' AND TAHUN='$TAHUN' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$FEB=$data[T1P1];

$query="SELECT amar_sigap.JUMLAH, SUM( amar_sigap.JUMLAH) AS T1P1 FROM amar_sigap WHERE BULAN='3' AND TAHUN='$TAHUN' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$MAR=$data[T1P1];

$query="SELECT amar_sigap.JUMLAH, SUM( amar_sigap.JUMLAH) AS T1P1 FROM amar_sigap WHERE BULAN='4' AND TAHUN='$TAHUN' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$APR=$data[T1P1];

$query="SELECT amar_sigap.JUMLAH, SUM( amar_sigap.JUMLAH) AS T1P1 FROM amar_sigap WHERE BULAN='5' AND TAHUN='$TAHUN' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$MEI=$data[T1P1];

$query="SELECT amar_sigap.JUMLAH, SUM( amar_sigap.JUMLAH) AS T1P1 FROM amar_sigap WHERE BULAN='6' AND TAHUN='$TAHUN' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$JUN=$data[T1P1];

$query="SELECT amar_sigap.JUMLAH, SUM( amar_sigap.JUMLAH) AS T1P1 FROM amar_sigap WHERE BULAN='7' AND TAHUN='$TAHUN' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$JUL=$data[T1P1];

$query="SELECT amar_sigap.JUMLAH, SUM( amar_sigap.JUMLAH) AS T1P1 FROM amar_sigap WHERE BULAN='8' AND TAHUN='$TAHUN' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$AGS=$data[T1P1];

$query="SELECT amar_sigap.JUMLAH, SUM( amar_sigap.JUMLAH) AS T1P1 FROM amar_sigap WHERE BULAN='9' AND TAHUN='$TAHUN' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$SEP=$data[T1P1];

$query="SELECT amar_sigap.JUMLAH, SUM( amar_sigap.JUMLAH) AS T1P1 FROM amar_sigap WHERE BULAN='10' AND TAHUN='$TAHUN' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$OKT=$data[T1P1];

$query="SELECT amar_sigap.JUMLAH, SUM( amar_sigap.JUMLAH) AS T1P1 FROM amar_sigap WHERE BULAN='11' AND TAHUN='$TAHUN' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$NOP=$data[T1P1];

$query="SELECT amar_sigap.JUMLAH, SUM( amar_sigap.JUMLAH) AS T1P1 FROM amar_sigap WHERE BULAN='12' AND TAHUN='$TAHUN' AND PENUTUP<>'' ";
$qry_address=mysql_query($query, $konek) or die ("gagal menampilkan".mysql_error());
$data=mysql_fetch_array($qry_address);
$DES=$data[T1P1];
$TOTAL=$JAN+$FEB+$MAR+$APR+$MEI+$JUN+$JUL+$AGS+$SEP+$OKT+$NOP+$DES;
?>
  </table>
  <BR>
</div>
<div align="center"><BR>
  <BR>
  <BR>
  <BR>
</div>
