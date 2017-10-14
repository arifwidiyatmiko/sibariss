<?php
include_once "../../koneksi/koneksi.php";

$G='<hr noshade color=#000000 size=3>';
$MENU=$_GET['MENU'];
$TOPIK=$_GET['TOPIK'];
$HAK=$_GET['HAK'];
$ID=$_GET['ID'];

$sql_address="SELECT * FROM amar_photo_sigap WHERE ID='$ID'";
$qry_address=mysql_query($sql_address, $konek)
	or die ("gagal menampilkan".mysql_error());
$hsl_address=mysql_fetch_array($qry_address);
ECHO "
<form action=../index.php method=GET name=form1 target=_self>	
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=SET value='$SET'>
				<input type='hidden' name=UNIT value='$UNIT'>
				<input type='hidden' name=HAK value='$HAK'>
<input type=SUBmit value=Back></form>

<form action=aksi_data.php method=GET name=form1 target=_self>	
				<input type='hidden' name=ID value='$ID'>
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=HAK value='$HAK'>
";
?> 
<title>Gallery Photo</title>
<TR> 
  <div align="right"></div>
<table width="103%" border="0" align="center">
  <tr> 
    <td valign="top"> <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr valign="top"> 
          <td width="25%">&nbsp; </td>
        </tr>
        <tr valign="top"> 
          <td> </tr>
        <tr valign="top"> 
          <td><table width="50%" border="0" cellspacing="1" cellpadding="1">
                <tr> 
                <td width="20%" valign="top" bgcolor="#CCCCCC"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td valign="top"> <div align="right"><font size="3" face="Geneva, Arial, Helvetica, sans-serif">Nama 
                          Ruangan<BR>
                          </font></div></td>
                      <td width="5%">&nbsp;</td>
                    </tr>
                  </table>
                  <td width="80%" valign="top"><font size=3><?php ECHO"$JABATAN2"?> 
                    <input name="TOPIK" type="text" id="JABATAN" value="<?php ECHO"$hsl_address[TOPIK]"?>" size="75"><input name="ESELON2" type="HIDDEN" value="<?php ECHO"$hsl_address[ESELON2]"?>" size="75">
                    </font></td>
              </tr>
              <tr> 
                <td valign="top" bgcolor="#CCCCCC"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td valign="top"> <div align="right"><font size="3" face="Geneva, Arial, Helvetica, sans-serif">Pengguna<BR>
                          </font></div></td>
                      <td width="5%">&nbsp;</td>
                    </tr>
                  </table></td>
                  <td><font size=3> 
                    <?PHP
ECHO"$hsl_address[ESELON2]<BR>
<input type=radio name=ESELON2 value=''><BR>
<input type=radio name=ESELON2 value='Sekretariat Deputi'>Sekretariat Deputi<BR>
<input type=radio name=ESELON2 value='Asisten Deputi Sumber Daya Hayati'>Asisten Deputi Sumber Daya Hayati<BR>
<input type=radio name=ESELON2 value='Asisten Deputi Sumber Daya Mineral, Energi dan Non Konvensional'>Asisten Deputi Sumber Daya Mineral, Energi dan Non Konvensional<BR>
<input type=radio name=ESELON2 value='Asisten Deputi Jasa Kemaritiman'>Asisten Deputi Jasa Kemaritiman<BR>
<input type=radio name=ESELON2 value='Asisten Deputi Lingkungan dan Kebencanaan Maritim'>Asisten Deputi Lingkungan dan Kebencanaan Maritim
";
?>
                    <br><input name="SIMPAN2" type="submit" value="Simpan"></FORM>
                    </font></td>
              </tr>
              <tr> 
                <td valign="top" bgcolor="#CCCCCC"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td valign="top"> <div align="right"><font size="3" face="Geneva, Arial, Helvetica, sans-serif"><strong>FASILITAS 
                          RUANG <br>
                          </strong><BR>
                          </font></div></td>
                      <td width="5%">&nbsp;</td>
                    </tr>
                  </table></td>
                <td valign="top"> 
                  <?php
if ($TOPIK=='') {$SUB='HIDDEN';}else {;}
if ($TOPIK<>'') {$SUB='SUBMIT';}else {;}
	$sql_cari="SELECT * FROM amar_photo_sigap WHERE TOPIK='$TOPIK' ORDER BY ID DESC";
	$qry_cari = mysql_query($sql_cari, $konek) or die ("Gagal query cari");
	$jumlah=mysql_num_rows($qry_cari);
	if ($jumlah=='') {
	echo "
<form action=_add.php method=get name=form1 target=_self>
<input type='HIDDEN' name=ID value='$ID'>
<input type='hidden' name=MENU value='$MENU'>
<input type='hidden' name=HAK value='$HAK'>
<input type='hidden' name=ESELON2 value='$hsl_address[ESELON2]'>
<input type='hidden' name=TOPIK value='$hsl_address[TOPIK]'>
<input type=$SUB value=Mulai></form>
	"; exit;}

	echo "
<form action=_add.php method=get name=form1 target=_self>
<input type='HIDDEN' name=ID value='$ID'>
<input type='hidden' name=MENU value='$MENU'>
<input type='hidden' name=HAK value='$HAK'>
<input type='hidden' name=ESELON2 value='$hsl_address[ESELON2]'>
<input type='hidden' name=TOPIK value='$hsl_address[TOPIK]'>
<input type=$SUB value=Tambah></form>
";

$no=1;
		while($data_cari=mysql_fetch_array($qry_cari)){		
if ($TOPIK=='') {$T='HIDDEN';}else {;}
if ($TOPIK<>'') {$T='TEXT';}else {;}

echo"
      <table width=100% border=0 cellspacing=0 cellpadding=0>
        <td valign='top'><table width='100%' border='0' cellspacing='0' cellpadding='0' bgcolor=#FFCC66>
            <tr> 
              <td width=2%></td>
              <td valign=top width='25%'></td>
            </tr>
            <tr> 
              <td valign=top width=2%>$no. </td><form action=edit.php method=get name=form1 target=_self>
              <td><DIV ALIGN=RIGHT>
			  	Nama <input type=$T name=JENIS size=40 value='$data_cari[JENIS]'><br>
			  	Merk <input type=$T name=MERK size=40 value='$data_cari[MERK]'><br>
			  	Jumlah <input type=$T name=JUMLAH size=4 value='$data_cari[JUMLAH]'><br>
			  	Kondisi <input type=$T name=KONDISI size=4 value='$data_cari[KONDISI]'><br>
				<input type='hidden' name=ID value='$ID'>
				<input type='hidden' name=MENU value='$MENU'>
<input type='hidden' name=TOPIK value='$data_cari[TOPIK]'>
			  	<input type=$SUB value=SIMPAN></FORM>

				<form action=_hapus.php method=get name=form1 target=_self>
<input type='hidden' name=ID value='$data_cari[ID]'>
<input type='hidden' name=MENU value='$MENU'>
<input type='hidden' name=HAK value='$HAK'>
<input type='hidden' name=ESELON2 value='$hsl_address[ESELON2]'>
<input type='hidden' name=TOPIK value='$data_cari[TOPIK]'>
				<input type=$SUB value=HAPUS></form>

			<form method=\"post\" action=\"journal.php?ID=$ID&KODE=PHOTO1&NAMA=$NAMA&MENU=$MENU\" enctype=\"multipart/form-data\">
        <input type=\"FILE\" name='foto'><input type='hidden' name=HAK value='$HAK'><input type=\"submit\" value=\"Photo\"></form>

			<form method=\"post\" action=\"journal.php?ID=$ID&KODE=PHOTO1&NAMA=$NAMA&MENU=$MENU\" enctype=\"multipart/form-data\">
        <input type=\"FILE\" name='foto'><input type='hidden' name=HAK value='$HAK'><input type=\"submit\" value=\"Video\"></form>


				</td>
            </tr>

            <tr>
            </tr></TABLE>
</TABLE>
$G";
$no++;
}
?>
                </td>
              </tr>
              <tr> 
                  <td colspan="2" valign="top">&nbsp;</td>
              </tr>
            </table></td>
        </tr>
      </table>
      <div align="left"></div>
      <div align="left"></div></td>
  </tr>
</table>
<TR><body background="../images/bg4.gif"> 
<TR><BR> 
    <tr> 
      <td valign="top">
<div align="center"> 
      <table width="100%" border="0" cellspacing="1" cellpadding="1">
        <tr> 
          <td width="25%"> 
            <?PHP
$PHOTO1=$hsl_address[PHOTO1];
$PHOTO2=$hsl_address[PHOTO2];
		if ($PHOTO1==''){$W1=0;}else {;}
		if ($PHOTO1==''){$H1=0;}else {;}
		if ($PHOTO2==''){$W2=0;}else {;}
		if ($PHOTO2==''){$H2=0;}else {;}

		if ($PHOTO1<>''){$W1=125;}else {;}
		if ($PHOTO1<>''){$H1=125;}else {;}
		if ($PHOTO2<>''){$W2=125;}else {;}
		if ($PHOTO2<>''){$H2=125;}else {;}
ECHO"<img src='$PHOTO1' width=$W1 height=$H1>";
?>
          </td>
          <td width="5120%" colspan="2"> 
            <?PHP
ECHO"
			<form method=\"post\" action=\"journal.php?ID=$ID&KODE=PHOTO1&NAMA=$NAMA&MENU=$MENU\" enctype=\"multipart/form-data\">
        <input type=\"FILE\" name='foto'>
        <br><input type='hidden' name=HAK value='$HAK'><input type=\"submit\" value=\"Photo1\"></form>
";
?>
          </td>
        </tr>
        <tr> 
          <td> 
            <?PHP
$PHOTO1=$hsl_address[PHOTO1];
$PHOTO2=$hsl_address[PHOTO2];
		if ($PHOTO1==''){$W1=0;}else {;}
		if ($PHOTO1==''){$H1=0;}else {;}
		if ($PHOTO2==''){$W2=0;}else {;}
		if ($PHOTO2==''){$H2=0;}else {;}

		if ($PHOTO1<>''){$W1=125;}else {;}
		if ($PHOTO1<>''){$H1=125;}else {;}
		if ($PHOTO2<>''){$W2=125;}else {;}
		if ($PHOTO2<>''){$H2=125;}else {;}
ECHO"<img src='$PHOTO2' width=$W2 height=$H2>";
?>
          </td>
          <td colspan="2"> 
            <?PHP
ECHO"
			<form method=\"post\" action=\"journal.php?ID=$ID&KODE=PHOTO2&NAMA=$NAMA&MENU=$MENU\" enctype=\"multipart/form-data\">
        <input type=\"FILE\" name='foto'>
        <br><input type='hidden' name=HAK value='$HAK'><input type=\"submit\" value=\"Photo2\"></form>
";
?>
          </td>
        </tr>
        <tr> 
          <td> 
            <?PHP
$PHOTO3=$hsl_address[PHOTO3];
		if ($PHOTO3==''){$W3=0;}else {;}
		if ($PHOTO3==''){$H3=0;}else {;}
		if ($PHOTO3<>''){$W3=125;}else {;}
		if ($PHOTO3<>''){$H3=125;}else {;}
ECHO"<img src='$PHOTO3' width=$W3 height=$H3>";
?>
          </td>
          <td colspan="2"> 
            <?PHP
ECHO"
			<form method=\"post\" action=\"journal.php?ID=$ID&KODE=PHOTO3&NAMA=$NAMA&MENU=$MENU\" enctype=\"multipart/form-data\">
        <input type=\"FILE\" name='foto'>
        <br><input type='hidden' name=HAK value='$HAK'><input type=\"submit\" value=\"Photo3\"></form>
";
?>
          </td>
        </tr>
        <tr> 
          <td> 
            <?PHP
$PHOTO4=$hsl_address[PHOTO4];
		if ($PHOTO4==''){$W4=0;}else {;}
		if ($PHOTO4==''){$H4=0;}else {;}
		if ($PHOTO4<>''){$W4=125;}else {;}
		if ($PHOTO4<>''){$H4=125;}else {;}
ECHO"<img src='$PHOTO4' width=$W4 height=$H4>";
?>
          </td>
          <td colspan="2"> 
            <?PHP
ECHO"
			<form method=\"post\" action=\"journal.php?ID=$ID&KODE=PHOTO4&NAMA=$NAMA&MENU=$MENU\" enctype=\"multipart/form-data\">
        <input type=\"FILE\" name='foto'>
        <br><input type='hidden' name=HAK value='$HAK'><input type=\"submit\" value=\"Photo4\"></form>
";
?>
          </td>
        </tr>
        <tr> 
          <td> 
            <?PHP
$PHOTO5=$hsl_address[PHOTO5];
		if ($PHOTO5==''){$W5=0;}else {;}
		if ($PHOTO5==''){$H5=0;}else {;}
		if ($PHOTO5<>''){$W5=125;}else {;}
		if ($PHOTO5<>''){$H5=125;}else {;}
ECHO"<img src='$PHOTO5' width=$W5 height=$H5>";
?>
          </td>
          <td colspan="2"> 
            <?PHP
ECHO"
			<form method=\"post\" action=\"journal.php?ID=$ID&KODE=PHOTO5&NAMA=$NAMA&MENU=$MENU\" enctype=\"multipart/form-data\">
        <input type=\"FILE\" name='foto'>
        <br><input type='hidden' name=HAK value='$HAK'><input type=\"submit\" value=\"Photo5\"></form>
";
?>
          </td>
        </tr>
        <tr> 
          <td> 
            <?PHP
$PHOTO6=$hsl_address[PHOTO6];
		if ($PHOTO6==''){$W6=0;}else {;}
		if ($PHOTO6==''){$H6=0;}else {;}
		if ($PHOTO6<>''){$W6=125;}else {;}
		if ($PHOTO6<>''){$H6=125;}else {;}
ECHO"<img src='../../../INTRANET/PHOTO/$PHOTO6' width=$W6 height=$H6>";
?>
          </td>
          <td colspan="2"> 
            <?PHP
ECHO"
			<form method=\"post\" action=\"journal.php?ID=$ID&KODE=PHOTO6&NAMA=$NAMA&MENU=$MENU\" enctype=\"multipart/form-data\">
        <input type=\"FILE\" name='foto'>
        <br><input type='hidden' name=HAK value='$HAK'><input type=\"submit\" value=\"Photo6\"></form>
";
?>
          </td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
          <td colspan="2">&nbsp;</td>
        </tr>
      </table>
    </div>
        
      </td>
    </tr>
  </table>
<TR> 