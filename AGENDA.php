<style type="text/css">

<!--
td {
	font-family: Tahoma, Arial, Helvetica, sans-serif;
	font-size: 11px;
}
a:link {
	color: #000000;
	text-decoration: none;
	font-family: Calibri,Tahoma, Arial, Helvetica, sans-serif;
	font-size: 16px;
}
a:visited {
	color: #000000;
	text-decoration: none;
}
a:hover {
	color: #000000;
	text-decoration: none;
}
.menutop a:link {
	color: #000000;
	text-decoration: none;
}
.menutop a:visited {
	color: #000000;
	text-decoration: none;
}
-->
</style>
<?php
$G='<hr noshade color=#2A7B53 size=3>';
$KODE= $_GET['KODE'];
$sql_address="SELECT * FROM amar_photo_sigap WHERE KODE='$KODE'";
$qry_address=mysql_query($sql_address, $konek)
	or die ("gagal menampilkan".mysql_error());
$hsl_address=mysql_fetch_array($qry_address);

$SATKER= $hsl_address['TOPIK'];
			echo "<font size=5><b>$SATKER</b>";

?>
<?php
$SATKER= $_GET['SATKER'];
	$sql_cari="SELECT * FROM amar_photo_sigap WHERE KODE='$KODE' ORDER BY ID ASC";
	$qry_cari = mysql_query($sql_cari, $konek) or die ("Gagal query cari");
	$jumlah=mysql_num_rows($qry_cari);

		echo "<table border=1 class='table table-bordered'>			
			<th><TABLE WIDTH=>NO</TABLE>
			<Th><TABLE WIDTH=>Daftar Inventaris</font></TABLE>	
			<Th><TABLE WIDTH=>Merk</TABLE>	
			<Th><TABLE WIDTH=>Jumlah</TABLE>	
			<Th><TABLE WIDTH=>Kondisi</TABLE>	
			<Th><TABLE WIDTH=>Tahun Perolehan</TABLE>	
			<Th><TABLE WIDTH=>Nilai Rp.</TABLE>	
			<Th><TABLE WIDTH=>Sumber</TABLE>	
			<Th><TABLE WIDTH=>Photo</TABLE>	
			<Th><TABLE WIDTH=>Video</TABLE>	
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
                        <td VALIGN=TOP>$no.</td>
                        <td VALIGN=TOP>$data_cari[JENIS]</td>
                        <td VALIGN=TOP>$data_cari[MERK]</td>
                        <td VALIGN=TOP>$data_cari[JUMLAH]</td>
                        <td VALIGN=TOP>$data_cari[KONDISI]</td>
                        <td VALIGN=TOP>$data_cari[TAHUN]</td>
                        <td VALIGN=TOP>$data_cari[NILAI]</td>
                        <td VALIGN=TOP>$data_cari[SUMBER]</td>
                        <td VALIGN=TOP><img src='ADMIN/PHOTO/$PHOTO1' widtd=$W1 height=$H1></td>
                        <td VALIGN=TOP><a href='ADMIN/$PHOTO2?HAK=$HAK&DENAH=$DENAH&KODE=$KODE'>$VIDEO</td>

<tr>";
$no++;		}
//ECHO"$G";
?>
