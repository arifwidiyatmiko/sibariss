<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td valign="top"> 
      <?php
	$sql_cari="SELECT * FROM sesdep_aturan WHERE TOPIK<>'' GROUP BY TOPIK ORDER BY TOPIK DESC";
	$qry_cari = mysql_query($sql_cari, $konek) 
				or die ("Gagal query cari?");
	$jumlah=mysql_num_rows($qry_cari);
$no=1;
		while($data_cari=mysql_fetch_array($qry_cari)){		
			echo "<form action=index.php method=GET name=form1 target=_self>
			<input name=SET type=HIDDEN value='$SET'>
			<input name=TOPIK type=HIDDEN value='$data_cari[TOPIK]'>
			<p><input type=SUBMIT class='btn btn-info' value='$data_cari[TOPIK]'><font size=2> </form></p>";
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
	if ($TOPIK<>'') {$JURNAL='TOPIK.php';}else {;}
include_once "$JURNAL";
?>
    </td>
  </tr>
</table>
<?PHP
//include_once "KGB.php";
?>
