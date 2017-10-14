<?php
//include_once "../../koneksi/koneksi.php";
$G='<hr noshade color=#000000 size=3>';
$MENU=$_GET['MENU'];
$MODE=$_GET['MODE'];
$HAK=$_GET['HAK'];
$ID=$_GET['ID'];

$sql_address="SELECT * FROM amar_photo_sigap WHERE KODE='$MODE'";
$qry_address=mysql_query($sql_address, $konek)
	or die ("gagal menampilkan".mysql_error());
$hsl_address=mysql_fetch_array($qry_address);
$TOPIK=$hsl_address[TOPIK];
if ($TOPIK=='') {$SUB='SUBMIT';}else {;}
if ($TOPIK<>'') {$SUB='HIDDEN';}else {;}

ECHO "$MODE $hsl_address[TOPIK]
<form action=PHOTO/daftarkan.php method=GET name=form1 target=_self>	
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=MODE value='$MODE'>
				<input type='hidden' name=HAK value='$HAK'>
<input type=$SUB value=Daftarkan></form>

";
if ($TOPIK=='') {$SUB='HIDDEN';}else {;}
if ($TOPIK<>'') {$SUB='SUBMIT';}else {;}

	$sql_cari="SELECT * FROM amar_photo_sigap WHERE KODE='$MODE' ORDER BY ID aSC";
	$qry_cari = mysql_query($sql_cari, $konek) 
				or die ("Gagal query");
		echo "<table border=1 >			
			<th><TABLE WIDTH=>NO</TABLE>
			<Th><TABLE WIDTH=>Daftar Inventaris</font></TABLE>	
			<Th><TABLE WIDTH=>Merk</TABLE>	
			<Th><TABLE WIDTH=>Jumlah</TABLE>	
			<Th><TABLE WIDTH=>Kondisi</TABLE>	
			<Th><TABLE WIDTH=>Tahun Perolahan</TABLE>	
			<Th><TABLE WIDTH=>Nilai Rp.</TABLE>	
			<Th><TABLE WIDTH=>Sumber</TABLE>	
			<Th><TABLE WIDTH=>Photo</TABLE>	
			<Th><TABLE WIDTH=>Video</TABLE>	
			<Th><TABLE WIDTH=>Update</TABLE>	
			";	

$no=1;
		while($data_cari=mysql_fetch_array($qry_cari)){		
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
			<th VALIGN=TOP><TABLE WIDTH=><td bgcolor=>$data_cari[JUMLAH]</TABLE>
			<th VALIGN=TOP><TABLE WIDTH=><td bgcolor=><div align=right>
				Baik: $data_cari[BAIK] <BR>
				Rusak: $data_cari[RUSAK] <BR>
				</TABLE>
			<th VALIGN=TOP><TABLE WIDTH=><td bgcolor=>$data_cari[TAHUN]</TABLE>
			<th VALIGN=TOP><TABLE WIDTH=><td bgcolor=>$data_cari[NILAI]</TABLE>
			<th VALIGN=TOP><TABLE WIDTH=><td bgcolor=>$data_cari[SUMBER]</TABLE>
			<Th VALIGN=TOP><TABLE WIDTH=><td ALIGN=CENTER bgcolor=><img src='PHOTO/$PHOTO1' width=$W1 height=$H1></TABLE>
			<Th VALIGN=TOP><TABLE WIDTH=><td ALIGN=CENTER bgcolor=><a href='$PHOTO2?HAK=$HAK&DENAH=$DENAH&KODE=$KODE'>$VIDEO</TABLE>
			<Th VALIGN=TOP><TABLE WIDTH=><td ALIGN=CENTER bgcolor=>
            	<form action=PHOTO/aksi.php method=GET name=form1 target=_self>
				<input type='hidden' name=ID value=$data_cari[ID]>
				<input type='hidden' name=TOPIK value='$data_cari[TOPIK]'>
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=HAK value='$HAK'>
			  	<input type=submit value=UPDATE></form></TABLE>

<tr>";
$no++;		}
//ECHO"$G";
?></TABLE></TABLE>
