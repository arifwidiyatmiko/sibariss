<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
<?php
	if ($ARAH=='') {$WHERE="WHERE NAMA<>''";}else {$WHERE="WHERE NAMA<>'' AND ESELON2='$ARAH' ";} 
//	if ($KODE=='') {$WHERE="WHERE NAMA<>''";}else {$WHERE="WHERE NAMA<>'' AND $KODE='$ARAH' ";} 

	$sql_cari="SELECT * FROM amar_photo_sigap WHERE TOPIK<>'' ORDER BY TOPIK ASC";
	$qry_cari = mysql_query($sql_cari, $konek) 
				or die ("Gagal query");
	$jumlah=mysql_num_rows($qry_cari);
$no=1;

	while($data_cari=mysql_fetch_array($qry_cari)){		
$PHOTO1=$data_cari[PHOTO1];
$PHOTO2=$data_cari[PHOTO2];
$PHOTO3=$data_cari[PHOTO3];
$PHOTO4=$data_cari[PHOTO4];
$PHOTO5=$data_cari[PHOTO5];
$PHOTO6=$data_cari[PHOTO6];
//		if ($PHOTO6==''){$PHOTO6='DEPUTI2.png';}else {;}

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

		if ($PHOTO1<>''){$W1=350;}else {;}
		if ($PHOTO1<>''){$H1=200;}else {;}
		if ($PHOTO2<>''){$W2=350;}else {;}
		if ($PHOTO2<>''){$H2=200;}else {;}
		if ($PHOTO3<>''){$W3=350;}else {;}
		if ($PHOTO3<>''){$H3=200;}else {;}
		if ($PHOTO4<>''){$W4=350;}else {;}
		if ($PHOTO4<>''){$H4=200;}else {;}
		if ($PHOTO5<>''){$W5=350;}else {;}
		if ($PHOTO5<>''){$H5=200;}else {;}
		if ($PHOTO6<>''){$W6=350;}else {;}
		if ($PHOTO6<>''){$H6=200;}else {;}

$no++;

?></table>
<table width="100%" border="0" align="center" cellpadding="5" cellspacing="5">
  <tbody>
    <tr> 
      <td width="25%" valign="top" bgcolor="<?PHP ECHO"$WARNA"?>"> <div align="left"> 
          <?PHP
$UNIT=$data_cari[UNIT];
	if ($UNIT==''){$K='';}else {;}
	if ($UNIT<>''){$K='Kapasitas: ';}else {;}
ECHO"
<FONT SIZE=5><b>$data_cari[TOPIK]</b></FONT><br>
$K$data_cari[UNIT] $data_cari[SATUAN]<br>
$data_cari[FASILITAS]<br>PJ: <font color=#0000ff>$data_cari[ESELON2]<br>
";
?>
        </div>
      <td width="25%" valign="top" bgcolor="<?PHP ECHO"$WARNA"?>"> <div align="center"> 
          <?PHP
ECHO"
					<img src='ADMIN/PHOTO/$PHOTO1' width=$W1 height=$H1>

";
?>
        </div>
      <td width="25%" valign="top" bgcolor="<?PHP ECHO"$WARNA"?>"><div align="center"> 
          <div align="center"> 
            <?PHP
ECHO"
					<img src='ADMIN/PHOTO/$PHOTO2' width=$W2 height=$H2>

";
}
?>
          </div>
        </div>
</TABLE>
</TABLE>
