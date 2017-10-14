<?php
	$sql_cari="SELECT * FROM amar_sigap WHERE OPERATOR='$NAMA' ORDER BY ID DESC";
	$qry_cari = mysql_query($sql_cari, $konek) or die ("Gagal query cari");

$no=1;
		echo "<DIV ALIGN=CENTER><table width=95% align=center border=1 cellspacing=0 cellpadding=0>
  <tr>
    <td bgcolor=#CCCCCC WIDTH=1 rowspan=2>
			<div align=center><font size=4>No.</div></td>
          	<td bgcolor=#CCCCCC width=><div align=center><font size=4>Agenda/Acara</div></td>
          	<td bgcolor=#CCCCCC width=><div align=center><font size=4>Tanggal</div></td>
          	<td bgcolor=#CCCCCC width=><div align=center><font size=4>Waktu</div></td>
          	<td bgcolor=#CCCCCC width=><div align=center><font size=4>Penanggungjawab</div></td>
          	<td bgcolor=#CCCCCC width=><div align=center><font size=4>Ruangan</div></td>
          	<td bgcolor=#CCCCCC width=><div align=center><font size=4>Periksa</div></td>
          	<td bgcolor=#CCCCCC width=><div align=center><font size=4>Pembatalan</div></td>
  </tr>
  <tr> 
  </tr>
  </tr>";	
		while($data_cari=mysql_fetch_array($qry_cari)){		
$HAK=$data_cari[HAK];
	if ($HAK=='') {$SUB='SUBMIT';}else {;}
	if ($HAK<>'') {$SUB='HIDDEN';}else {;}
$PENUTUP=$data_cari[PENUTUP];
	if ($PENUTUP=='') {$TUTUP='SUBMIT';}else {;}
	if ($PENUTUP<>'') {$TUTUP='HIDDEN';}else {;}

			echo "<tr>
			<th align=LEFT valign=top><TABLE><td align=LEFT><font size=2>$no.</TABLE>
			<th valign=top><TABLE><td align=LEFT><font size=2>$data_cari[WI]<br>$data_cari[PENUTUP]<BR>$data_cari[SELESAI]</TABLE>
			<th align=center valign=top><TABLE><td align=LEFT><font size=2>$data_cari[HARI]/$data_cari[BULAN]/$data_cari[TAHUN]</TABLE>
			<th align=center valign=top><TABLE><td align=LEFT><font size=2>$data_cari[JAM]</TABLE>
			<th valign=top><TABLE><td align=LEFT><font size=2>$data_cari[PELAKSANA]<BR>$data_cari[OPERATOR]</TABLE>
			<th align=center valign=top><TABLE><td align=LEFT><font size=2>$data_cari[TEMPAT]</TABLE>
			<th align=center valign=top><TABLE><td align=LEFT></form>
<form action=index.php method=GET target=_self>
<input name=ESELON1 type=HIDDEN value='$ESELON1'>
<input name=ESELON2 type=HIDDEN value='$ESELON2'>
<input name=NAMA type=HIDDEN value='$NAMA'>
<input name=GO type=HIDDEN value='$GO'>
<input name=ID type=HIDDEN value='$ID'>
<input name=NOMOR type=HIDDEN value='$data_cari[ID]'>
<input name=AKSI type=HIDDEN value='$SET'>
<input name=SET type=HIDDEN value='$SET'>
			<input type=$SUB value=Periksa></form></TABLE>
			
			<th align=center valign=top><TABLE><td align=LEFT></form>
<form action=YAKIN.php method=GET target=_self>
<input name=ESELON1 type=HIDDEN value='$ESELON1'>
<input name=ESELON2 type=HIDDEN value='$ESELON2'>
<input name=NAMA type=HIDDEN value='$NAMA'>
<input name=GO type=HIDDEN value='$GO'>
<input name=ID type=HIDDEN value='$ID'>
<input name=NOMOR type=HIDDEN value='$data_cari[ID]'>
<input name=AKSI type=HIDDEN value='$SET'>
<input name=SET type=HIDDEN value='$SET'>
			<input type=$TUTUP value=Batal></form></TABLE>
			
			";
$no++;
}
		  ?></table>
