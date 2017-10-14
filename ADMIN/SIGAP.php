</FORM><?PHP
if ($PELAKSANA=='RTP') {$ARTI='AGREE.php';}else {;} 
if ($PELAKSANA<>'RTP') {$ARTI='setuju.php';}else {;} 

if ($PELAKSANA=='RTP') {$SUB='TEXT';}else {;} 
if ($PELAKSANA<>'RTP') {$SUB='HIDDEN';}else {;} 
			echo "
<form action=$ARTI method=get name=form1 target=_self>
				<input type='hidden' name=PELAKSANA value='$PELAKSANA'>
				<input type='hidden' name=ID value='$ID'>
				<input type='hidden' name=MENU value='$MENU'>
";
?>
<table width="100%" border="1" cellpadding="0" cellspacing="0" bgcolor="#99CCFF">
  <tr valign="top"> 
    <td colspan="2"> <div align="center"><strong><font size="4" face="Geneva, Arial, Helvetica, sans-serif">BOOKING 
        RUANG PERTEMUAN<BR>
        <?php echo"$ESELON1"?> </font></strong></div></tr>
  <tr> 
    <td colspan="2" valign="top"><table width="100%" border="1" cellpadding="0" cellspacing="0">
        <tr valign="top"> 
          <td colspan="2"><table width="100%" border="1" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
              <tr valign="top"> 
                <td> <table width="100%" border="0">
                    <tr valign="top"> 
                      <td><font face="Geneva, Arial, Helvetica, sans-serif">Penanggungjawab</font></td>
                      <td><strong><?PHP ECHO "$hsl[PELAKSANA]"?> 
                        <input name=PELAKSANA type=<?PHP ECHO "$SUB"?> value='<?PHP ECHO "$hsl[PELAKSANA]"?>'>
                        </strong></td>
                    </tr>
                    <tr valign="top"> 
                      <td><font face="Geneva, Arial, Helvetica, sans-serif">Agenda/Acara</font></td>
                      <td><b><?PHP ECHO "$hsl[WI]"?></b> <input name=WI type=<?PHP ECHO "$SUB"?> value='<?PHP ECHO "$hsl[WI]"?>'></font> 
                      </td>
                    </tr>
                    <tr valign="top"> 
                      <td width="6%"><font face="Geneva, Arial, Helvetica, sans-serif">Tanggal</font></td>
                      <td width="70%"><strong><font face="Verdana, Arial, Helvetica, sans-serif"> 
                        <input name=HARI type=TEXT value='<?PHP ECHO "$hsl[HARI]"?>'>
                        </font></strong><font face="Verdana, Arial, Helvetica, sans-serif"><font face="Verdana, Arial, Helvetica, sans-serif">/<strong> 
                        <input name=BULAN type=TEXT value='<?PHP ECHO "$hsl[BULAN]"?>'>
                        / 
                        <input name=TAHUN type=TEXT value='<?PHP ECHO "$hsl[TAHUN]"?>'>
                        </strong></font></font></td>
                    </tr>
                    <tr valign="top"> 
                      <td><font face="Geneva, Arial, Helvetica, sans-serif">Waktu</font></td>
                      <td><b><?PHP ECHO "$hsl[JAM]"?></b> <input name=JAM type=<?PHP ECHO "$SUB"?> value='<?PHP ECHO "$hsl[JAM]"?>'> 
                        <input name=JAM type=RADIO value='Pagi'> <FONT size=2>Pagi 
                        (08.00 - 13.00) 
                        <input name=JAM type=RADIO value='Siang'>
                        <FONT size=2>Siang (13.00 - 17.00) 
                        <input name=JAM type=RADIO value='Sehari'>
                        <FONT size=2>Sehari (08.00 - 17.00) </font></font></font></td>
                    </tr>
                    <tr valign="top"> 
                      <td><font size="2">Jumlah Peserta</font></td>
                      <td><font size="2"><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong><b><?PHP ECHO "$hsl[JUMLAH]"?> 
                        <input name=JUMLAH type=<?PHP ECHO "$SUB"?> value='<?PHP ECHO "$hsl[JUMLAH]"?>'>
                        </b></strong></font></font>Orang </td>
                    </tr>
                    <tr valign="top"> 
                      <td><font face="Geneva, Arial, Helvetica, sans-serif">Contact 
                        Person</font></td>
                      <td><font size="2"><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong><?PHP ECHO "$hsl[OPERATOR]"?> 
                        <input name=OPERATOR type=<?PHP ECHO "$SUB"?> value='<?PHP ECHO "$hsl[OPERATOR]"?>'>
                        </strong></font></font></td>
                    </tr>
                  </table>
                  <font size="2"><b> </b> </font></td>
                <td><strong><?PHP ECHO "$hsl[TEMPAT]"?> 
                  <input name=TEMPAT type=HIDDEN value='<?PHP ECHO "$hsl[TEMPAT]"?>'>
                  <br>
                  <font size="2"> 
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
?><br><br><br>
                  <input type=submit value=SIMPAN>
                  </font> </strong></td>
              </tr>
              <tr valign="top"> 
                <td><font face="Geneva, Arial, Helvetica, sans-serif">KOMENTAR: 
                  <input size="125" type="text" name="KEJADIAN" value="<?PHP ECHO "$hsl[KEJADIAN]"?>">
                  </font></td>
                <td><?PHP ECHO "$hsl[PENUTUP]"?> <input name=PENUTUP type=HIDDEN value='<?PHP ECHO "$hsl[PENUTUP]"?>'> 
                  <BR> 
                  <?PHP
echo"
<input name='PENUTUP' TYPE=RADIO value=''><BR>
<input name='PENUTUP' TYPE=RADIO value='SETUJU'>SETUJU<BR>
";
?></font></strong>
                  </td>
              </tr>
              <tr valign="top"> 
                <td colspan="2"><?PHP ECHO "$hsl[SELESAI]"?> <input name=SELESAI type=HIDDEN value='<?PHP ECHO "$hsl[SELESAI]"?>'> 
                  <BR> 
                  <?PHP
echo"
<input name='SELESAI' TYPE=RADIO value=''><BR>
<input name='SELESAI' TYPE=RADIO value='SELESAI'>SELESAI<BR>
";
?>
                </td>
              </tr>
            </table></td>
        </tr>
      </table></tr>
  <tr> 
    <td colspan="2" valign="top"><table width="100%" border="0">
        <tr valign="top"> 
          <td width="6%"><input name="submit" type=submit value=SIMPAN></form>
          </td>
          <td width="70%"><div align="right"> 
              <form action=YAKIN.php method=get name=form1 target=_self>
				<input type='hidden' name=PELAKSANA value='<?php echo"$PELAKSANA"?>'>
				<input type='hidden' name=ID value='<?php echo"$ID"?>'>
				<input type='hidden' name=MENU value='<?php echo"$MENU"?>'>
                <input type=submit value=Hapus></FORM>
              <font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong> 
              </strong></font></div></td>
        </tr>
      </table></tr>
  <tr> 
    <td colspan="2" valign="top"> 
</TABLE>
