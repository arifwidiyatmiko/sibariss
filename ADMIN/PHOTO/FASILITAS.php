<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/scrolling-nav.css" rel="stylesheet">

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom JavaScript for this theme -->
    <script src="js/scrolling-nav.js"></script>
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
$SATKER= $_GET['SATKER'];
			echo "$KODE $SATKER
      <table width=100% border=0 cellspacing=0 cellpadding=0>
        <td valign='top'><table width='100%' border='0' cellspacing='0' cellpadding='1' bgcolor=></form>

            	<form action=PHOTO/aksi.php method=GET name=form1 target=_self>
				<input type='hidden' name=ID value=$data_cari[ID]>
				<input type='hidden' name=TOPIK value='$data_cari[TOPIK]'>
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=HAK value='$HAK'>
			  	<input type=hidden class=button_blue value=Update></form>

            	<form action=PHOTO/YAKIN.php method=GET name=form1 target=_self>
				<input type='hidden' name=ID value=$data_cari[ID]>
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=HAK value='$HAK'>
			  	<input type=hidden class=button_blue value=Hapus></form>

		</td>
";

?></table>
<?php
if ($_GET['DISPLAY']=='before') {
	?>
	<div>
              <a href="index.php?ADMIN=<?php echo $_GET['ADMIN']?>&MENU=<?php echo $_GET['MENU']?>&SATKER=<?php echo $_GET['SATKER']?>&KODE=<?php echo $_GET['KODE']?>&DISPLAY=data" class="btn btn-danger" >Data</a>
             <a href="index.php?ADMIN=<?php echo $_GET['ADMIN']?>&MENU=<?php echo $_GET['MENU']?>&SATKER=<?php echo $_GET['SATKER']?>&KODE=<?php echo $_GET['KODE']?>&DISPLAY=video" class="btn btn-danger" >Video</a>
            </div>
	<?php
}
else if ($_GET['DISPLAY']=='video') {
	$SATKER= $_GET['SATKER'];
	$sql_cari="SELECT * FROM amar_photo_sigap WHERE TOPIK='$SATKER' ORDER BY ID ASC";
	$qry_cari = mysql_query($sql_cari, $konek) or die ("Gagal query cari");
	$jumlah=mysql_num_rows($qry_cari);

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
$no++;	
}	
if ($PHOTO2 == '') {
			?>
			<div class="alert alert-warning" role="alert">
 	Maaf tidak ada video yg didisimpan
</div>
			<!-- <p></p> -->
		<?php
		}else{
			?>
		<a href="<?php echo $PHOTO2?>?HAK=<?php echo $HAK?>&DENAH=<?php echo $DENAH?>&KODE=<?php echo $KODE?>" class="btn btn-success">Download Video</a>
		<?php	
		}
}
else if ($_GET['DISPLAY']=='data') {
	$SATKER= $_GET['SATKER'];
	$sql_cari="SELECT * FROM amar_photo_sigap WHERE TOPIK='$SATKER' ORDER BY ID ASC";
	$qry_cari = mysql_query($sql_cari, $konek) or die ("Gagal query cari");
	$jumlah=mysql_num_rows($qry_cari);

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
			<!--<Th><TABLE WIDTH=>Video</TABLE>	-->
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
			<th VALIGN=TOP><TABLE WIDTH=><td bgcolor=>$data_cari[KONDISI]</TABLE>
			<th VALIGN=TOP><TABLE WIDTH=><td bgcolor=>$data_cari[TAHUN]</TABLE>
			<th VALIGN=TOP><TABLE WIDTH=><td bgcolor=>$data_cari[NILAI]</TABLE>
			<th VALIGN=TOP><TABLE WIDTH=><td bgcolor=>$data_cari[SUMBER]</TABLE>
			<Th VALIGN=TOP><TABLE WIDTH=><td ALIGN=CENTER bgcolor=><img src='PHOTO/$PHOTO1' width=$W1 height=$H1></TABLE>
			<!--<Th VALIGN=TOP><TABLE WIDTH=><td ALIGN=CENTER bgcolor=><a href='$PHOTO2?HAK=$HAK&DENAH=$DENAH&KODE=$KODE'>$VIDEO</TABLE>-->
			<Th VALIGN=TOP><TABLE WIDTH=><td ALIGN=CENTER bgcolor=>
            	<form action=PHOTO/aksi.php method=GET name=form1 target=_self>
				<input type='hidden' name=ID value=$data_cari[ID]>
				<input type='hidden' name=TOPIK value='$data_cari[TOPIK]'>
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=HAK value='$HAK'>
			  	<input type=submit value=UPDATE></form></TABLE>

<tr>";
$no++;		}
}

//ECHO"$G";
?></TABLE></TABLE>
