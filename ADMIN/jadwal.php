<?php
	$sql_cari="SELECT * FROM amar_sigap WHERE OPERATOR<>'' AND SELESAI='' ORDER BY ID DESC";
	$qry_cari = mysql_query($sql_cari, $konek) or die ("Gagal query cari");

$no=1;
		echo "<DIV ALIGN=CENTER><FONT SIZE=7>MOHON PERSETUJUAN</FONT><table width=95% align=center border=1 cellspacing=0 cellpadding=0>
  <tr>
    <td bgcolor=#CCCCCC WIDTH=1 rowspan=2>
			<div align=center><font size=4>No.</div></td>
          	<td bgcolor=#CCCCCC width=><div align=center><font size=4>Agenda/Acara</div></td>
          	<td bgcolor=#CCCCCC width=><div align=center><font size=4>Tanggal</div></td>
          	<td bgcolor=#CCCCCC width=><div align=center><font size=4>Waktu</div></td>
          	<td bgcolor=#CCCCCC width=><div align=center><font size=4>Penanggungjawab</div></td>
          	<td bgcolor=#CCCCCC width=><div align=center><font size=4>Ruangan</div></td>
          	<td bgcolor=#CCCCCC width=><div align=center><font size=4>Periksa</div></td>
          	<td bgcolor=#CCCCCC width=><div align=center><font size=4>Hapus</div></td>
  </tr>
  <tr> 
  </tr>
  </tr>";	
		while($data_cari=mysql_fetch_array($qry_cari)){		
$HAK=$data_cari[HAK];
	if ($HAK=='') {$SUB='SUBMIT';}else {;}
	if ($HAK<>'') {$SUB='HIDDEN';}else {;}
$PELAKSANA=$data_cari[PELAKSANA];
if ($PELAKSANA=='RTP') {$ARTI='AGREE.php';}else {;} 
if ($PELAKSANA<>'RTP') {$ARTI='setuju.php';}else {;} 

			echo "<tr>
			<th align=LEFT valign=top><TABLE><td align=LEFT><font size=2>$no.</TABLE>
			<th valign=top><TABLE><td align=LEFT><font size=2>$data_cari[WI]<BR>$data_cari[PENUTUP]</TABLE>
			<th align=center valign=top><TABLE><td align=LEFT><font size=2>$data_cari[HARI]/$data_cari[BULAN]/$data_cari[TAHUN]</TABLE>
			<th align=center valign=top><TABLE><td align=LEFT><font size=2>$data_cari[JAM]</TABLE>
			<th valign=top><TABLE><td align=LEFT><font size=2>$data_cari[PELAKSANA]</TABLE>
			<th align=center valign=top><TABLE><td align=LEFT><font size=2>$data_cari[TEMPAT]</TABLE>
			<th align=center valign=top><TABLE><td align=LEFT></form>
<form action=index.php method=GET target=_self>
<input name=PELAKSANA type=hidden value='$data_cari[PELAKSANA]'>
<input name=ID type=HIDDEN value='$data_cari[ID]'>
<input name=SET type=HIDDEN value='$SET'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=UNIT type=HIDDEN value='$UNIT'>
			<input type=$SUB value=Periksa></form></TABLE>
			
			<th align=center valign=top><TABLE><td align=LEFT></form>
<form action=YAKIN.php method=GET target=_self>
<input name=PELAKSANA type=hidden value='$data_cari[PELAKSANA]'>
<input name=ID type=HIDDEN value='$data_cari[ID]'>
<input name=SET type=HIDDEN value='$SET'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=UNIT type=HIDDEN value='$UNIT'>
			<input type=$SUB value=Hapus></form></TABLE>
			
			";
$no++;
}
		  ?></table>
