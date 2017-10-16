
<?php
//include_once "../koneksi/koneksi.php";
$G='<hr noshade color=#000000 size=3>';
$MENU=$_GET['MENU'];
$SET=$_GET['SET'];
$TOPIK=$_GET['TOPIK'];
$ID=$_GET['ID'];

	$sql_cari="SELECT * FROM amar_photo_sigap WHERE TOPIK='$TOPIK' AND JENIS<>'' ORDER BY JENIS ASC";
	$qry_cari = mysql_query($sql_cari, $konek) 
				or die ("Gagal query");
	$jumlah=mysql_num_rows($qry_cari);
$no=1;
if ($_GET['DISPLAY'] == 'before') {
	?>
  <div>
              <a href="index.php?SET=<?php echo $_GET['SET']?>&TOPIK=<?php echo $_GET['TOPIK']?>&DISPLAY=data" class="btn btn-danger" >Data</a>
              <a href="index.php?SET=<?php echo $_GET['SET']?>&TOPIK=<?php echo $_GET['TOPIK']?>&DISPLAY=video" class="btn btn-danger" >Video</a>
              
            </div>
  <?php
}
elseif ($_GET['DISPLAY'] == 'video') {
	while($data_cari=mysql_fetch_array($qry_cari)){		
$PDF=$data_cari[PDF];
	if ($PDF<>'') {$ARTI='SUBMIT';}else {;} 
	if ($PDF=='') {$ARTI='HIDDEN';}else {;} 

$PHOTO1=$data_cari[PHOTO1];
$PHOTO2=$data_cari[PHOTO2];
$PHOTO3=$data_cari[PHOTO3];
$PHOTO4=$data_cari[PHOTO4];
$PHOTO5=$data_cari[PHOTO5];
$PHOTO6=$data_cari[PHOTO6];
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

		if ($PHOTO1<>''){$W1=125;}else {;}
		if ($PHOTO1<>''){$H1=125;}else {;}
		if ($PHOTO2<>''){$W2=125;}else {;}
		if ($PHOTO2<>''){$H2=125;}else {;}
		if ($PHOTO3<>''){$W3=125;}else {;}
		if ($PHOTO3<>''){$H3=125;}else {;}
		if ($PHOTO4<>''){$W4=125;}else {;}
		if ($PHOTO4<>''){$H4=125;}else {;}
		if ($PHOTO5<>''){$W5=125;}else {;}
		if ($PHOTO5<>''){$H5=125;}else {;}
		if ($PHOTO6<>''){$W6=125;}else {;}
		if ($PHOTO6<>''){$H6=125;}else {;}

$TOPIK=$data_cari[TOPIK];
		if ($PHOTO2==''){$VIDEO='';}else {;}
		if ($PHOTO2<>''){$VIDEO='PLAY VIDEO';}else {;}
		if ($PHOTO2 == '') {
			?>
			<!-- <p></p> -->
			<div class="alert alert-warning" role="alert">
 	Maaf tidak ada video yg didisimpan
</div>
		<?php
		}else{
			?>
		<a href="ADMIN/$PHOTO2?HAK=<?php echo $HAK?>&DENAH=<?php echo $DENAH?>&KODE=<?php echo $KODE?>'" class="btn btn-success">button</a>
		<?php	
		}
		
	}
}
elseif ($_GET['DISPLAY'] == 'data') {
	
		echo "<table border=1 ><FONT SIZE=5><B>$TOPIK</FONT>
			<th><TABLE WIDTH=>NO</TABLE>
			<Th><TABLE WIDTH=>Daftar Inventaris</font></TABLE>	
			<Th><TABLE WIDTH=>Merk</TABLE>	
			<Th><TABLE WIDTH=>Jumlah</TABLE>	
			<Th><TABLE WIDTH=>Kondisi</TABLE>	
			<Th><TABLE WIDTH=>Tahun Perolehan</TABLE>	
			<Th><TABLE WIDTH=>Nilai Rp.</TABLE>	
			<Th><TABLE WIDTH=>Sumber</TABLE>	
			<Th><TABLE WIDTH=>Photo</TABLE>	
			<!--<Th><TABLE WIDTH=>Video</TABLE>	-->
			";	
	while($data_cari=mysql_fetch_array($qry_cari)){		
$PDF=$data_cari[PDF];
	if ($PDF<>'') {$ARTI='SUBMIT';}else {;} 
	if ($PDF=='') {$ARTI='HIDDEN';}else {;} 

$PHOTO1=$data_cari[PHOTO1];
$PHOTO2=$data_cari[PHOTO2];
$PHOTO3=$data_cari[PHOTO3];
$PHOTO4=$data_cari[PHOTO4];
$PHOTO5=$data_cari[PHOTO5];
$PHOTO6=$data_cari[PHOTO6];
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

		if ($PHOTO1<>''){$W1=125;}else {;}
		if ($PHOTO1<>''){$H1=125;}else {;}
		if ($PHOTO2<>''){$W2=125;}else {;}
		if ($PHOTO2<>''){$H2=125;}else {;}
		if ($PHOTO3<>''){$W3=125;}else {;}
		if ($PHOTO3<>''){$H3=125;}else {;}
		if ($PHOTO4<>''){$W4=125;}else {;}
		if ($PHOTO4<>''){$H4=125;}else {;}
		if ($PHOTO5<>''){$W5=125;}else {;}
		if ($PHOTO5<>''){$H5=125;}else {;}
		if ($PHOTO6<>''){$W6=125;}else {;}
		if ($PHOTO6<>''){$H6=125;}else {;}

$TOPIK=$data_cari[TOPIK];
		if ($PHOTO2==''){$VIDEO='';}else {;}
		if ($PHOTO2<>''){$VIDEO='PLAY VIDEO';}else {;}

			echo "<TR>
			<th VALIGN=TOP><TABLE WIDTH=><td  ALIGN=right bgcolor=>$no.</TABLE>
			<th VALIGN=TOP><TABLE WIDTH=><td bgcolor=>$data_cari[JENIS]</TABLE>
			<th VALIGN=TOP><TABLE WIDTH=><td bgcolor=>$data_cari[MERK]</TABLE>
			<th ALIGN=CENTER VALIGN=TOP><TABLE WIDTH=><td bgcolor=>$data_cari[JUMLAH]</TABLE>
			<th ALIGN=CENTER VALIGN=TOP><TABLE WIDTH=><td bgcolor=>$data_cari[KONDISI]</TABLE>
			<th ALIGN=CENTER VALIGN=TOP><TABLE WIDTH=><td bgcolor=>$data_cari[TAHUN]</TABLE>
			<th VALIGN=TOP><TABLE WIDTH=><td bgcolor=>$data_cari[NILAI]</TABLE>
			<th ALIGN=CENTER VALIGN=TOP><TABLE WIDTH=><td bgcolor=>$data_cari[SUMBER]</TABLE>
			<Th VALIGN=TOP><TABLE WIDTH=><td ALIGN=CENTER bgcolor=><img src='ADMIN/PHOTO/$PHOTO1' width=$W1 height=$H1></TABLE>
			<!--<Th VALIGN=TOP><TABLE WIDTH=><td ALIGN=CENTER bgcolor=><a href='ADMIN/$PHOTO2?HAK=$HAK&DENAH=$DENAH&KODE=$KODE'>$VIDEO</TABLE>-->
<tr>";
$no++;
}
}
?></TABLE>

