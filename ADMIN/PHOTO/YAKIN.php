<?php
include_once "../../koneksi/koneksi.php";
$MENU=$_GET['MENU'];
$NAMA=$_GET['NAMA'];
$ID=$_GET['ID'];
$TOPIK=$_GET['TOPIK'];
$SUMBER=$_GET['SUMBER'];
$HAK=$_GET['HAK'];

?>
<table width="50%" border="0" align="center" cellpadding="5" cellspacing="5">
  <tbody>
    <tr> 
      <td width="25%" colspan="2" valign="top" bgcolor="<?PHP ECHO"$WARNA"?>"> 
        <div align="center">YAKIN MAU MENGHAPUS?</div>
    <tr> 
      <td width="50%" valign="top" bgcolor="<?PHP ECHO"$WARNA"?>"> <div align="center">
          <?PHP
echo "
<form action=../../ADMIN/index.php method=GET name=form1 target=_self>
			  					<input type='hidden' name=MENU value='$MENU'>
			  					<input type='hidden' name=HAK value='$HAK'>
			  					<input type='hidden' name=UNIT value='$HAK'>
			  					<input type='hidden' name=SET value='GALLERY'>
		<input type=submit value='BATAL'></form>
";
$no++;
?>
        </div>
      <td width="50%" valign="top" bgcolor="<?PHP ECHO"$WARNA"?>"><div align="center">
          <?PHP
echo "
		<form action=hapus.php method=get target=_self>
			  					<input type='hidden' name=MENU value='$MENU'>
			  					<input type='hidden' name=HAK value='$HAK'>
			  					<input type='hidden' name=UNIT value='$HAK'>
			  					<input type='hidden' name=ID value='$ID'>
		<input type=submit value='Hapus'></form>
";
$no++;
?>
        </div>
</TABLE>
