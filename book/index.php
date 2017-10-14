<?PHP
//include_once "../koneksi/koneksi.php";

$NAMA=$_GET['NAMA'];
$ESELON1=$_GET['ESELON1'];
			$SIGAP=substr($ESELON1,0,6); //ECHO"$SIGAP";
$ESELON2=$_GET['ESELON2'];
$ID=$_GET['ID'];
$NOMOR=$_GET['NOMOR'];
$GO=$_GET['GO'];
//$SET=$_GET['SET'];
$AKSI=$_GET['AKSI'];
$G='<hr noshade color=#2A7B53 size=3>';
	if ($AKSI=='') {$GOTO="OPERATOR='$NAMA'";}else {;}
	if ($AKSI<>'') {$GOTO="ID='$NOMOR'";}else {;}

$sql_address="SELECT * FROM amar_sigap ORDER BY ID DESC";
$qry_address=mysql_query($sql_address, $konek)
	or die ("gagal menampilkan".mysql_error());
$hsl=mysql_fetch_array($qry_address);
$OPERATOR=$hsl['OPERATOR']; 
//	if ($NAMA<>$OPERATOR) {echo "";	exit;}
$NO=$hsl['ID']; 
			echo "
<form action=daftar.php method=get name=form1 target=_self>
				<input type='hidden' name=SET value='BOOKING'>
				<input type='hidden' name=ID value='$ID'>
				<input type='hidden' name=GO value='$GO'>
				<input type='hidden' name=ESELON1 value='$ESELON1'>
				<input type='hidden' name=ESELON2 value='$ESELON2'>
				<input type='hidden' name=NAMA value='$NAMA'>
<input type=SUBMIT value='TAMBAHi'></form>
			
<form action=book/agenda_data.php method=GET target=_self>
<input name=ESELON1 type=HIDDEN value='$ESELON1'>
<input name=ESELON2 type=HIDDEN value='$ESELON2'>
<input name=NAMA type=HIDDEN value='$NAMA'>
<input name=GO type=HIDDEN value='$GO'>
<input name=ID type=HIDDEN value='$ID'>
<input name=NO type=HIDDEN value='$NO'>
<input name=SET type=HIDDEN value='$SET'>
";
include_once "book/jadwal.php";
//	if ($AKSI=='') {echo "";	exit;}
?>
<table width="100%" border="1" cellpadding="0" cellspacing="0" bgcolor="#99CCFF">
  <tr valign="top"> 
    <td colspan="2"> <div align="center"><strong><font size="4" face="Geneva, Arial, Helvetica, sans-serif">BOOKING 
        RUANG PERTEMUAN<BR>
        <?php echo"$ESELON1"?> </font></strong></div></tr>
  <tr> 
    <td colspan="2" valign="top"><table width="100%" border="1" cellpadding="0" cellspacing="0">
        <tr valign="top"> 
          <td><table width="100%" border="0">
              <tr valign="top"> 
                <td width="6%">Tanggal</td>
                <td width="70%"><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif"> 
                  <select name='HARI'>
                    <option value='<?PHP ECHO "$hsl[HARI]"?>'><?PHP ECHO "$hsl[HARI]"?></option>
                    <option value='1'>1</option>
                    <option value='2'>2</option>
                    <option value='3'>3</option>
                    <option value='4'>4</option>
                    <option value='5'>5</option>
                    <option value='6'>6</option>
                    <option value='7'>7</option>
                    <option value='8'>8</option>
                    <option value='9'>9</option>
                    <option value='10'>10</option>
                    <option value='11'>11</option>
                    <option value='12'>12</option>
                    <option value='13'>13</option>
                    <option value='14'>14</option>
                    <option value='15'>15</option>
                    <option value='16'>16</option>
                    <option value='17'>17</option>
                    <option value='18'>18</option>
                    <option value='19'>19</option>
                    <option value='20'>20</option>
                    <option value='21'>21</option>
                    <option value='22'>22</option>
                    <option value='23'>23</option>
                    <option value='24'>24</option>
                    <option value='25'>25</option>
                    <option value='26'>26</option>
                    <option value='27'>27</option>
                    <option value='28'>28</option>
                    <option value='29'>29</option>
                    <option value='30'>30</option>
                    <option value='31'>31</option>
                  </select>
                  </font></strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Bln 
                  <strong> 
                  <select name='BULAN'>
                    <option value='<?PHP ECHO "$hsl[BULAN]"?>'><?PHP ECHO "$hsl[BULAN]"?></option>
                    <option value='1'>1</option>
                    <option value='2'>2</option>
                    <option value='3'>3</option>
                    <option value='4'>4</option>
                    <option value='5'>5</option>
                    <option value='6'>6</option>
                    <option value='7'>7</option>
                    <option value='8'>8</option>
                    <option value='9'>9</option>
                    <option value='10'>10</option>
                    <option value='11'>11</option>
                    <option value='12'>12</option>
                  </select>
                  </strong>Thn <strong> 
                  <input type="text" size=3 high=1 name="TAHUN" value="<?PHP ECHO "$hsl[TAHUN]"?>">
                  </strong><strong> </strong></font></td>
              </tr>
            </table></td>
          <td><div align="LEFT"></div>
            Waktu: <?PHP ECHO "$hsl[JAM]"?> <input name=JAM type=HIDDEN value='<?PHP ECHO "$hsl[JAM]"?>'> 
            <BR> <input name=JAM type=RADIO value='Pagi'> <FONT size=2>Pagi (08.00 
            - 13.00) 
            <input name=JAM type=RADIO value='Siang'>
            <FONT size=2>Siang (13.00 - 17.00) 
            <input name=JAM type=RADIO value='Sehari'>
            <FONT size=2>Sehari (08.00 - 17.00) <br>
            </font></font></font></td>
          <td><?PHP ECHO "$NAMA"?></td>
        </tr>
      </table></tr>
  <tr> 
    <td valign="top">Agenda/Acara 
      <input size="125" type="text" name="WI" value="<?PHP ECHO "$hsl[WI]"?>">
      Jumlah Peserta <font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong> 
      <input type="text" size=3 high=1 name="JUMLAH" value="<?PHP ECHO "$hsl[JUMLAH]"?>">
      </strong></font>Orang 
    <td valign="top"><div align="right">
        <input name="submit" type=submit value=SIMPAN>
      </div></tr>
  <tr> 
    <td colspan="2" valign="top"><table width="100%" border="1" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
        <tr valign="top"> 
          <td>Penanggungjawab<strong>: <?PHP ECHO "$hsl[PELAKSANA]"?> 
            <input name=PELAKSANA type=HIDDEN value='<?PHP ECHO "$hsl[PELAKSANA]"?>'>
            </strong></td>
          <td><strong><?PHP ECHO "$hsl[TEMPAT]"?> 
            <input name=TEMPAT type=HIDDEN value='<?PHP ECHO "$hsl[TEMPAT]"?>'>
            </strong></td>
        </tr>
        <tr valign="top"> 
          <td><font size="2"> 
            <?PHP
	$sql_cari="SELECT * FROM amar_induk WHERE ESELON1='$ESELON1' AND ESELON3<>'' GROUP BY ESELON3 ORDER BY ESELON3 ASC";
	$qry_cari = mysql_query($sql_cari, $konek) or die ("Gagal query cari");

$no=1;
		while($data_cari=mysql_fetch_array($qry_cari)){		
$ESELON3=$data_cari[ESELON3];
echo"
<input name='PELAKSANA' TYPE=RADIO value='$ESELON3'>$ESELON3<BR>
";
}
?>
            </font><font size="2">&nbsp; </font></td>
          <td><font size="2"> 
            <?PHP
	$sql_cari="SELECT * FROM amar_photo_sigap ORDER BY ID ASC";
	$qry_cari = mysql_query($sql_cari, $konek) or die ("Gagal query cari");

$no=1;
		while($data_cari=mysql_fetch_array($qry_cari)){		
$TOPIK=$data_cari[TOPIK];
echo"
<input name='TEMPAT' TYPE=RADIO value='$TOPIK'>$TOPIK<BR>
";
}
?>
            </font></td>
        </tr>
      </table></tr>
  <tr> 
    <td colspan="2" valign="top"> <div align="right"> 
        <input type=submit value=SIMPAN>
      </div></tr>
  <tr> 
    <td colspan="2" valign="top"> 
</TABLE>
