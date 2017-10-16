<head><meta http-equiv="refresh" content="60">
<title>ADMIN SIRAP</title>
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
<link rel="shortcut icon" href="http:d2.gif">
<style type="text/css" media="all">
.button_green
{
    border-top:1px solid #d1e459;
    border-left:1px solid #d1e459;
    border-right:1px solid #1c3403;
    border-bottom:1px solid #1c3403;
    background-color:#97d937;
    font-family: Calibri,Tahoma,Arial,Helvetica,sans-serif;
    font-size:12px;
	color:#ffffff;
    font-weight:bold;
    padding:2px 5px 2px 5px;
}
.button_blue
{
    border-top:1px solid #d1e459;
    border-left:1px solid #d1e459;
    border-right:1px solid #1c3403;
    border-bottom:1px solid #1c3403;
    background-color:#0000FF;
    font-family: Calibri,Tahoma,Arial,Helvetica,sans-serif;
    font-size:16px;
    color:#ffffff;
    font-weight:bold;
    padding:2px 5px 2px 5px;
}

.button_red
{
    border-top:1px solid #000000;
    border-left:1px solid #000000;
    border-right:1px solid #000000;
    border-bottom:1px solid #000000;
    background-color:#cc0000;
    font-family: Calibri,Tahoma,Arial,Helvetica,sans-serif;
    font-size:14px;
    color:#ffffff;
    font-weight:bold;
    padding:2px 5px 2px 5px;
}
</style>
<body bgcolor="#CCCCCC">
<div align="center"><font color="#FF0000" size="5" face="Verdana, Arial, Helvetica, sans-serif"><strong> 
<?php
include_once "../koneksi/koneksi.php";

$UNIT=$_GET['UNIT'];
$MENU=$_GET['MENU'];
$TAHUN=date("Y");
//	if ($UNIT<>'deputi4') {echo "SALAH COY ";	exit;}
	if ($MENU=='') {echo "SALAH COY ";	exit;}
	if ($MENU<>'SETTING') {echo "SALAH COY ";	exit;}
?>
<font size="4"> </font> 
<table width="95%" align="center" border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr> 
      <td width="50%" valign="top"> <div align="left"><img src="../d2.gif" width="100" height="100"></div></td>
    </tr>
    <tr> 
      <td valign="top" bgcolor="#FFFFFF"> <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr> 
            <td valign="top"><div align="left"><strong> </strong></div>
        </table>
        <div align="right"><strong> </strong></div>
</table>
<strong> </strong> 
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" background="../images/images/background.gif" id="Table_01">
  <tbody>
    <tr> 
      <td width="50%" colspan="2" valign="top" background="../images/images/bg4.gif" class="arial9point-black"> 
        <font color="#FFFFFF"><span class="ver10" style="color: rgb(255, 255, 255);"> 
        </span></font> <div align="center"><font face="Verdana" size="+4"> </font> 
        </div>
        <div align="center"> 
          <div align="center"> </div>
          <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" background="../../Monitoring/dl/meranti/bg.jpg" >
            <tbody>
              <tr bgcolor="#000066"> 
                <td width="100%" colspan="2" valign="top" bgcolor="#000066"><font size="3" face="Geneva, Arial, Helvetica, sans-serif">&nbsp;</font> 
                </td>
              </tr>
            </tbody>
          </table>
          <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr valign="top"> 
              <td width="1%">&nbsp;</td>
              <td bgcolor="#FFFFFF"> <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr> 
                    <td valign="top"> <strong> 
                      <?PHP
$HAK='RTP';
			echo "<tr>
      <table width=100% border=0 cellspacing=0 cellpadding=0>
        <td valign='top'><table width='100%' border='0' cellspacing='0' cellpadding='1' bgcolor=></form>$G
<form action=../index.php method=get target=_self>
<input type=SUBMIT value='Home' class=button_blue>
</form>

<form action=index.php method=get target=_self>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=UNIT type=HIDDEN value='$UNIT'>
<input type=SUBMIT value='Esc' class=button_blue>
</form>

<form action=index.php method=GET name=form1 target=_self>
				<input type='hidden' name=SET value=TARUNG>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=UNIT type=HIDDEN value='$UNIT'>
			  	<input type=submit value='Tata Ruang Kantor' class=button_blue></form>

<form action=index.php method=get target=_self>
<input type='hidden' name=SET value=AGENDA>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=UNIT type=HIDDEN value='$UNIT'>
<input type=hidden value='Agenda' class=button_blue>
</form>

<form action=index.php method=get target=_self>
<input type='hidden' name=SET value=PERATURAN>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=UNIT type=HIDDEN value='$UNIT'>
<input type=submit value='Koleksi Peraturan' class=button_blue>
</form>

<form action=index.php method=GET name=form1 target=_self>
<input type='hidden' name=SET value=STATISTIK>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=UNIT type=HIDDEN value='$UNIT'>
<input type=submit value='Statistik' class=button_blue></form>

<form action=index.php method=GET name=form1 target=_self>
<input type='hidden' name=SET value=CARI>
<input name=MENU type=HIDDEN value='$MENU'>
&nbsp;&nbsp;&nbsp;<input name=DATA type=TEXT value=''>
<input type=submit value='Cari Data' class=button_red></form>

		$G</td>
<BR>";
$no++;
?>
                      </strong> </td>
                  </tr>
                  <tr> 
                    <td width="81%" valign="top"><font size="3" face="Geneva, Arial, Helvetica, sans-serif"> 
                      <?php
$SET= $_GET['SET'];

$TUGAS= $_GET['TUGAS'];
$MODE= $_GET['MODE'];
	if ($SET=='') {$ARTI='PHOTO/GALLERY.php';}else {;} 
	if ($SET=='AGENDA') {$ARTI='AGENDA.php';}else {;} 
	if ($SET=='TARUNG') {$ARTI='PHOTO/DENAH.php';}else {;} 
	if ($SET=='STATISTIK') {$ARTI='STATISTIK/index.php';}else {;} 
	if ($SET=='PERATURAN') {$ARTI='PERATURAN/index.php';}else {;} 
	if ($SET=='CARI') {$ARTI='cari.php';}else {;} 
	if ($MODE<>'') {$ARTI='PHOTO/KODE.php';}else {;}
include_once "$ARTI"; //ECHO"X-$ARTI";
include_once "$ARTIS";
?>
                      </font></td>
                  </tr>
                </table></td>
                  </tr>
                </table></tr>
          </table>
          <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0" bgcolor="#CCCCCC">
            <tr valign="top"> 
              <td> </td>
            </tr>
          </table>
        </div>
<strong><font size="3" face="Geneva, Arial, Helvetica, sans-serif"> </font></strong></td> </tr> </tbody> </table> 
<br>
