<?php
include_once "../koneksi/koneksi.php";
$HAK= $_GET['HAK'];
$G='<hr noshade color=#2A7B53 size=3>';
?>
<link rel="shortcut icon" href="http:images/dephut.png">
<style type="text/css" media="">
.button_green
{
    border-top:1px solid #d1e459;
    border-left:1px solid #d1e459;
    border-right:1px solid #1c3403;
    border-bottom:1px solid #1c3403;
    background-color:#97d937;
    font-family: Tahoma,Arial,Helvetica,sans-serif;
    font-size:12px;
	color:#000000;
    font-weight:;
    padding:2px 5px 2px 5px;
}
.button_blue
{
    border-top:1px solid #d1e459;
    border-left:1px solid #d1e459;
    border-right:1px solid #1c3403;
    border-bottom:1px solid #1c3403;
    background-color:#0000FF;
    font-family: Tahoma,Arial,Helvetica,sans-serif;
    font-size:12px;
    color:#ffffff;
    font-weight:liht;
    padding:2px 5px 2px 5px;
}

.button_red
{
    border-top:1px solid #000000;
    border-left:1px solid #000000;
    border-right:1px solid #000000;
    border-bottom:1px solid #000000;
    background-color:#cc0000;
    font-family: Tahoma,Arial,Helvetica,sans-serif;
    font-size:14px;
    color:#ffffff;
    font-weight:;
    padding:2px 5px 2px 5px;
}
</style>
<?php
$GOT= $_GET['GO'];
$NAMA=$_GET[NAMA]; 
?>
<script type="text/javascript" src="css/jquery_003.js"></script>
<script type="text/javascript" src="css/jquery_004.js"></script>
<script type="text/javascript" src="css/image-slider.js"></script>
<script type="text/javascript" src="css/menu.js"></script>	
<script type="text/javascript" language="javascript" src="css/jquery_002.js"></script>
<script src="css/jquery.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	var siteURL = '';
	var firstUri = '';
	$(document).ready(function() {	
		//Execute the slideShow
		slideShow();
		$(".btn-slide").click(function(){
		    $("#panel").slideToggle("slow");
		    $(this).toggleClass("active"); return false;
		});
		$(".btn-slide-gbook").click(function() {
			showForm();
			return false;
		});
		$("#loading").ajaxStop(function(){
			$(this).hide();
		});
		$(".gallery a[rel^='galeriDiklat']").prettyPhoto({
			animation_speed:'normal',
			social_tools: ''
		});
	});
</script>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen, projection">
<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen" title="galeriDiklat main stylesheet" charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/slider.css">
<link rel="stylesheet" type="text/css" href="css/gallery.css">
<link rel="stylesheet" type="text/css" href="css/dd_menu.css">
<link rel="stylesheet" type="text/css" href="css/styles_news.css">
<link rel="stylesheet" type="text/css" href="css/newsticker.css">
<link rel="stylesheet" type="text/css" href="css/default-site.css">
      
<body background="../Backgrounds/J0143753.GIF">
<?php
$OPERATOR=$_GET['OPERATOR'];
$MENU=$_GET['MENU'];
	if ($MENU=='SETTING') {$UP='SUBMIT';}else {$UP='HIDDEN';} 
$HAK= $_GET['HAK'];
			echo "<tr><br>
<form action=index.php method=GET target=_self>
<input type=submit value='Esc' class=button_green></form>

<form action=index.php method=GET target=_self>
<input name=SET type=HIDDEN value='SETTING'>
<input type=submit value='Mulai' class=button_green></form>

<form action=index.php method=GET target=_self>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='DATA'>
<input type=HIDDEN value='Updating Data' class=button_green></form>

<form action=index.php method=GET target=_self>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=MODUL type=HIDDEN value='SDM'>
<input type=$UP value='SDM' class=button_green></form>

$NAMA<BR><font size=5 face='Geneva, Arial, Helvetica, sans-serif'><strong>$OPERATOR</strong>";
?>
<table width="90%" border="0" cellpadding="0" cellspacing="0" id="Table_01">
  <tbody>
    <tr> 
      <td width="50%" colspan="2" valign="top" class="arial9point-black"> 
        <font color="#FFFFFF"><span class="ver10" style="color: rgb(255, 255, 255);"> 
        </span></font> <div align="center"><font face="Verdana" size="+4"> </font> 
        </div>
        <div align="center"> 
          <div align="center"> </div>
          <table width="110%" border="0" align="center" cellpadding="0" cellspacing="0" >
            <tbody>
              <tr> 
                <td valign="top">&nbsp;</td>
                <td colspan="2" valign="top">&nbsp; </td>
                <td valign="top">&nbsp;</td>
              </tr>
              <tr> 
                <td width="2%" valign="top">&nbsp;</td>
                <td width="20%" valign="top"> <div align="right"></div>
                  <div align="left"> 
                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="5">
                      <tbody>
                        <tr> 
                          <td width="98%" valign="top" ><strong> 
                            <?php
$HAK=$_GET['HAK'];
$MENU=$_GET['MENU'];
	if ($MENU=='SETTING') {$AKSES='HAK AKSES';}else {;} 
	if ($MENU=='SETTING') {$SUB='SUBMIT';}else {$SUB='HIDDEN';} 
echo "<table width=100% border=0 cellspacing=3 cellpadding=0>
<form action=index.php method=get target=_self>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='SETTING'>
            <tr> 
              <td valign='top' width=2%></td>
              <td valign='top' width=2%><input type=$SUB value='GO' class=button_green></td>
			  <td valign='top'><font size=2> $MENU</font></form></td>
            </tr></table>";

if ($HAK=='SETTING') {
ECHO"$G";
echo"<div align=right><table width=100% border=0 cellspacing=3 cellpadding=0>
<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='PROFIL'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='SETTING'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> PROFIL ORGANISASI</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>

<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='STRUKTUR'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='SETTING'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> STRUKTUR ORGANISASI</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>

<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='RBM'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='SETTING'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> Resort Base Management</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>
</table>
$G";}

echo "<table width=100% border=0 cellspacing=3 cellpadding=0>
<form action=index.php method=get target=_self>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='AKSES'>
            <tr> 
              <td valign='top' width=2%></td>
              <td valign='top' width=2%><input type=hidden value='GO' class=button_green></td>
			  <td valign='top'><font size=2> $AKSES</font></form></td>
            </tr></table>";

if ($HAK=='AKSES') {
ECHO"$G";
echo"<div align=right><table width=100% border=0 cellspacing=3 cellpadding=0>
<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='KPH'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='$HAK'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> Database Potensi KPH</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>
<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='ALAM'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='$HAK'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> Database Potensi Hutan Alam</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>
<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='TANAMAN'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='$HAK'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> Database Potensi Hutan Tanaman</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>
<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='RE'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='$HAK'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> Database Potensi Restorasi Ekosistem</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>

<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='HTR'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='$HAK'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> Database Potensi Hutan Tanaman Rakyat</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>

<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='HD'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='$HAK'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> Database Potensi Hutan Desa</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>

<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='HHBK'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='$HAK'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> Database Potensi Hasil Hutan Bukan Kayu</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>

<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='GANIS'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='$HAK'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> Database GANIS-PHPL</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>

<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='WASGANIS'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='$HAK'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> Database WASGANIS-PHPL</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>

</table>
$G";}

if ($HAK=='DATA') {
ECHO"$G";
echo"<div align=right><table width=100% border=0 cellspacing=3 cellpadding=0>
<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='IUPHHK-HA'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='DATA'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> IUPHHK-HA</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>
<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='IUPHHK-HT'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='DATA'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> IUPHHK-HT</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>
<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='IUPHHK-RE'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='DATA'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> IUPHHK-RE</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>
<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='KPHP'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='DATA'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> KPH</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>
<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='IPPKH'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='DATA'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> IPPKH</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>
<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='DHTR'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='DATA'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> HTR</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>
<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='HKM'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='DATA'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> HKm</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>
<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='DHD'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='DATA'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> Hutan Desa</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>
<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='DHHBK'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='DATA'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> HHBK</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>

</table>
$G";}

if ($HAK=='OPERATOR') {
ECHO"$G";
echo"<div align=right><table width=100% border=0 cellspacing=3 cellpadding=0>
<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='ADMIN'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='OPERATOR'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> ADMIN WEB</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>
<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='UNIT'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='OPERATOR'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> ESELON 2</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>
<form action=index.php method=get target=_self>
<input name=SET type=HIDDEN value='UPT'>
<input name=MENU type=HIDDEN value='$MENU'>
<input name=HAK type=HIDDEN value='OPERATOR'>
            <tr> 
              <td valign='top' width=2%></td>
			  <td valign='top' align=right><font size=2 color=#0000FF> UPT</font></td>
              <td valign='top' width=2%><input type=SUBmit value='Next' class=button_blue>
			  </form></td>
            </tr>

</table>$G";}

?>
                            </strong></td>
                        </tr>
                        <tr> 
                          <td valign="top" ><font face="Verdana" size="1"> 
                            <?php
$SET= $_GET['SET'];
$SDM= $_GET['SDM'];
$PILIH= $_GET['PILIH'];
	if ($SET=='ESELON3') {$AKSI='struktur/3.php';}else {;} 
	if ($SET=='ESELON4') {$AKSI='struktur/eselon4.php';}else {;} 
	if ($SET=='FUNGSIONAL') {$AKSI='struktur/F.php';}else {;} 
	if ($SET=='PELAKSANA') {$AKSI='struktur/pelaksana.php';}else {;} 
include_once "$AKSI";
	if ($PILIH<>'') {$DATA='struktur/esel4.php';}else {;} 
	if ($SDM=='SDM') {$DATA='SDM/pola.php';}else {;} 
include_once "$DATA";
$SAY= $_GET['SAY'];
$UNIT= $_GET['UNIT'];
	if ($SAY<>'') {$TEST='SDM/esel4.php';}else {;} 
include_once "$TEST";
$DATA= $_GET['DATA']; ECHO"$DATA";
$KODE= $_GET['KODE']; 
	if ($KODE=='ESELON2') {$AKSI='sdm/pegawai2.php';}else {;} 
	if ($KODE=='ESELON3') {$AKSI='sdm/pegawai3.php';}else {;} 
	if ($KODE=='ESELON4') {$AKSI='sdm/pegawai4.php';}else {;} 
	if ($KODE=='STAFF') {$AKSI='sdm/pilih.php';}else {;} 
	if ($KODE=='FUNGSIONAL') {$AKSI='sdm/fungsional.php';}else {;} 
include_once "$AKSI";
$POLA= $_GET['POLA']; 
	if ($POLA<>'') {$AKSI='sdm/pilihan.php';}else {;} 
include_once "$AKSI";
$PILIHAN= $_GET['PILIHAN']; 
	if ($PILIHAN<>'') {$AKSI='sdm/pegawai5.php';}else {;} 
include_once "$AKSI";
?>
                            </font></td>
                        </tr>
                        <tr> 
                          <td valign="top" > <div align="left"> 
                              <?php
	if ($SET=='RBM') {$JOURNAL='RBM/eselon4.php';}else {;} 
include_once "$JOURNAL";
?>
                            </div></td>
                        </tr>
                      </tbody>
                    </table>
                  </div></td>
                <td width="65%" valign="top"> <table width="99%" border="0" align="center" cellpadding="0" cellspacing="0" >
                    <tbody>
                      <tr> 
                        <td valign="top"> 
                          <?php
$DATA= $_GET['DATA'];
$SET= $_GET['SET'];
$SDM= $_GET['SDM'];
$GO= $_GET['GO'];
$ESELON4= $_GET['ESELON4'];
$MODUL= $_GET['MODUL'];
$RBM= $_GET['RBM'];
$RESORT= $_GET['RESORT'];
	if ($GO<>'') {$JOURNAL='struktur/ese4.php';}else {;} 
	if ($SET=='SETTING') {$JOURNAL='SETTING.php';}else {;} 
	if ($SET=='STRUKTUR') {$JOURNAL='struktur/index.php';}else {;} 
	if ($SET=='PROFIL') {$JOURNAL='struktur/profil.php';}else {;} 
	if ($MODUL=='SDM') {$JOURNAL='sdm/pola.php';}else {;} 
	if ($SET=='RBM') {$JOURNAL='RBM/index.php';}else {;} 
	if ($RESORT<>'') {$JOURNAL='RBM/RESORT.php';}else {;} 
	if ($RBM<>'') {$JOURNAL='RBM/index.php';}else {;} 

	if ($SET=='ARTIKEL') {$JOURNAL='struktur/artikel.php';}else {;} 
	if ($SET=='BERITA') {$JOURNAL='struktur/berita.php';}else {;} 
	if ($SET=='KOMODITI') {$JOURNAL='struktur/komoditi.php';}else {;} 
	if ($SET=='TAMBAH') {$JOURNAL='struktur/tambah.php';}else {;} 
	if ($SET=='EDIT') {$JOURNAL='struktur/edit.php';}else {;} 
	if ($SET=='ESELON3') {$JOURNAL='struktur/eselon.php';}else {;} 
	if ($SET=='FUNGSIONAL') {$JOURNAL='struktur/fungsional.php';}else {;} 
	if ($GO<>'') {$JOURNAL='struktur/ese4.php';}else {;} 
	if ($ESELON4<>'') {$JOURNAL='struktur/staf.php';}else {;} 

	if ($SET=='SDM') {$JOURNAL='SDM/index.php';}else {;} 
	if ($SDM=='SDM') {$JOURNAL='SDM/pola.php';}else {;} 
	if ($UNIT<>'') {$JOURNAL='SDM/aksi.php';}else {;} 
include_once "$JOURNAL";
$SET= $_GET['SET'];
$TIPE= $_GET['TIPE'];
$DATA= $_GET['DATA'];
	if ($SET=='SETTING') {$JOURNAL='SETTING.php';}else {;} 
	if ($TIPE<>'') {$JOURNAL='sdm/SET.php';}else {;} 
include_once "$JOURNAL";
?>
                        </td>
                      </tr>
                      <tr> 
                        <td valign="top">&nbsp; </td>
                      </tr>
                      <tr> 
                        <td valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr> 
                              <td valign="top">&nbsp; </td>
                            </tr>
                          </table></td>
                      </tr>
                      <tr> 
                        <td valign="top">&nbsp; </td>
                      </tr>
                    </tbody>
                  </table></td>
                <td width="10%" valign="top">&nbsp;</td>
              </tr>
              <tr> 
                <td valign="top">&nbsp;</td>
                <td valign="top">&nbsp;</td>
                <td valign="top">&nbsp; </td>
                <td valign="top">&nbsp;</td>
              </tr>
            </tbody>
          </table>
        </div></td>
    </tr>
    <tr> 
      <td align="center">&nbsp;</td>
    </tr>
    <tr> 
      <td align="center">&nbsp;</td>
    </tr>
  </tbody>
</table>
<table width="101%" border="0" cellpadding="0" cellspacing="0" >
  <tbody>
    <tr> 
      <td width="9%" valign="top">&nbsp;</td>
      <td width="100%" valign="top">&nbsp;</td>
    </tr>
    <tr> 
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
    </tr>
  </tbody>
</table>
  </header>
<div id="slider">
    <div class="main_view">
      <table width="100%" border="0" cellpadding="0" cellspacing="0" >
        <tbody>
          <tr> 
            <td width="9%" valign="top">&nbsp;</td>
          </tr>
          <tr> 
            <td valign="top">&nbsp;</td>
          </tr>
          <tr> 
            <td valign="top">&nbsp;</td>
          </tr>
        </tbody>
      </table>
          <h2 class="title"  property="dc:title" datatype="">&nbsp;</h2>
          </header></article></div>
      </div>
    </div>
    </section></div>
    </div>
  </body>
</html>