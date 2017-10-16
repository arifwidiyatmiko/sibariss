<?php
$G='<hr noshade color=#2A7B53 size=3>';
$TOPIK= $_GET['TOPIK'];
$MENU= $_GET['MENU'];
$HAK= $_GET['HAK'];
?>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" id="Table_01">
  <tbody>
    <tr> 
      <td width="50%" height="460" colspan="2" valign="top" class="arial9point-black"> 
        <font color="#FFFFFF"><span class="ver10" style="color: rgb(255, 255, 255);"> 
        </span></font> 
        <div align="center"><font face="Verdana" size="+4"> </font> </div>
        <div align="center"> 
          <div align="center"> </div>
          <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" >
            <tbody>
              <tr> 
                
            <td width="78%" valign="middle"> <font color="#000000" size="5">Tata 
              Ruang Kantor</font><font color="#000000" size="5"></td>
                <td valign="top"> 
                  <div align="center"></div></td>
              </tr>
              <tr> 
                <td colspan="2" valign="top" bgcolor="#000066"><font size="3" face="Geneva, Arial, Helvetica, sans-serif">&nbsp;</font> 
                </td>
              </tr>
            </tbody>
          </table>
          <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr valign="top"> 
              <td width="1%">&nbsp;</td>
              
        <td> 
          <table width="100%" border="0" align="left" cellpadding="1" cellspacing="1">
            <tr> 
              <td valign="top" bgcolor="#FFFFFF">
                <?php
	$sql_cari="SELECT * FROM amar_photo_sigap GROUP BY TOPIK ORDER BY URUT ASC";
	$qry_cari = mysql_query($sql_cari, $konek) or die ("Gagal query cari?");

$no=1;
		while($data_cari=mysql_fetch_array($qry_cari)){		
			echo "<form action=index.php method=GET name=form1 target=_self>
<input type=hidden name=ADMIN value='$ADMIN'>
			<input name=MENU type=HIDDEN value='$MENU'>
			<input name=SATKER type=HIDDEN value='$data_cari[TOPIK]'>
			<input name=KODE type=HIDDEN value='$data_cari[KODE]'>
			<input name=DISPLAY type=HIDDEN value='before'>
			<input type=SUBMIT value='Go'><font size=2>$no. $data_cari[TOPIK]</form><BR>";
$no++;
	}
ECHO"$G";
?>

              </td>
              <td width="75%" valign="top" bgcolor="#FFFFFF"> 
                <?php
$KODE=$_GET['KODE'];
	if ($KODE<>'') {$JURNAL='FASILITAS.php';}else {;}
include_once "$JURNAL";
?>
              </td>
            </tr>
          </table>
          <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr> 
              <td width="50%" valign="top"> 
                <?php
ECHO"$G";

	$sql_cari="SELECT * FROM amar_photo_sigap GROUP BY TOPIK ORDER BY URUT ASC";
	$qry_cari = mysql_query($sql_cari, $konek) or die ("Gagal query cari");
	$jumlah=mysql_num_rows($qry_cari);

	if (mysql_num_rows($qry_cari)==0) {
		echo "
            	<form action=PHOTO/add.php method=GET name=form1 target=_self>
				<input type='hidden' name=TOPIK value='$TOPIK'>
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=NAMA value='$NAMA'>
				<input type='hidden' name=HAK value='$HAK'>
			  	<input type=submit value=Tambah></form>
		";
		exit;}
		echo "
            	<form action=PHOTO/add.php method=GET name=form1 target=_self>
				<input type='hidden' name=TOPIK value='$TOPIK'>
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=HAK value='$HAK'>
			  	<input type=submit value=Tambah></form>
		";

		echo "<table border=1 >			
			<th><TABLE WIDTH=>NO</TABLE>
			<th><TABLE WIDTH=>NAMA RUANGAN</TABLE>
			<Th><TABLE WIDTH=>Kode</font></TABLE>	
			<Th><TABLE WIDTH=>UPDATE</font></TABLE>	
			<Th><TABLE WIDTH=>VIDEO</font></TABLE>	
			<Th><TABLE WIDTH=>HAPUS</font></TABLE>	
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

			echo "<TR><form action=PHOTO/aksi_dat.php method=GET name=form1 target=_self>
			<th VALIGN=TOP><TABLE WIDTH=><td  ALIGN=right bgcolor=>$no.</TABLE>
			<Th VALIGN=TOP><TABLE WIDTH=><td ALIGN=CENTER bgcolor=>
				<input type='TEXT' name=TOPIK value='$data_cari[TOPIK]'></TABLE>
			<Th VALIGN=TOP><TABLE WIDTH=><td ALIGN=left bgcolor=>
				<input type='TEXT' name=KODE value='$data_cari[KODE]'><BR>
				No. Urut <input type='TEXT' size=2 name=URUT value='$data_cari[URUT]'>
				</TABLE>

			<Th VALIGN=TOP><TABLE WIDTH=><td ALIGN=CENTER bgcolor=>
            	
				<input type='hidden' name=ID value=$data_cari[ID]>
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=HAK value='$HAK'>
			  	<input type=submit value=UPDATE></form></TABLE>

<th bgcolor=#FFCC00 align=center valign=top><TABLE WIDTH=><td align=LEFT>
			<form method=\"post\" action=\"journal.php?ID=$data_cari[ID]&KODE=PHOTO2&NAMA=$NAMA&MENU=$MENU\" enctype=\"multipart/form-data\">
        <input type=\"FILE\" name='foto'>
		<input type='hidden' name=NO value='$data_cari[ID]'>
		<input type='hidden' name=ID value='$ID'>
		<input type='hidden' name=MENU value='$MENU'>
		<input type='hidden' name=TOPIK value='$data_cari[TOPIK]'>
		<input type='hidden' name=HAK value='$HAK'>
		<input type=\"submit\" value=\"Video\"></form>
</TABLE>

			<Th VALIGN=TOP><TABLE WIDTH=><td ALIGN=CENTER bgcolor=>
            	<form action=PHOTO/YAKIN.php method=GET name=form1 target=_self>
				<input type='hidden' name=ID value=$data_cari[ID]>
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=HAK value='$HAK'>
			  	<input type=submit value=HAPUS></form></TABLE>

<tr>";
$no++;		}
?>
          </table>