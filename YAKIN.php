<?php
$ID= $_GET['ID'];
$MENU= $_GET['MENU'];
$UNIT=$_GET['UNIT'];
$ESELON1=$_GET['ESELON1'];
$ESELON2=$_GET['ESELON2'];
$GO=$_GET['GO'];
$NAMA=$_GET['NAMA'];
$SET=$_GET['SET'];
$NOMOR= $_GET['NOMOR'];
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
<form action=index.php method=GET name=form1 target=_self>
				<input type='hidden' name=ESELON1 value='$ESELON1'>
				<input type='hidden' name=ESELON2 value='$ESELON2'>
				<input type='hidden' name=GO value='$GO'>
				<input type='hidden' name=NAMA value='$NAMA'>
				<input type='hidden' name=SET value='$SET'>
				<input type='hidden' name=ID value='$ID'>
				<input type='hidden' name=UNIT value='$UNIT'>
				<input type='hidden' name=MENU value='$MENU'>
		<input type=submit value='BATAL'></form>
";
$no++;
?>
        </div>
      <td width="50%" valign="top" bgcolor="<?PHP ECHO"$WARNA"?>"><div align="center">
          <?PHP
echo "
		<form action=hapus.php method=get target=_self>
				<input type='hidden' name=NOMOR value='$NOMOR'>
				<input type='hidden' name=ESELON1 value='$ESELON1'>
				<input type='hidden' name=ESELON2 value='$ESELON2'>
				<input type='hidden' name=GO value='$GO'>
				<input type='hidden' name=NAMA value='$NAMA'>
				<input type='hidden' name=SET value='$SET'>
				<input type='hidden' name=ID value='$ID'>
				<input type='hidden' name=UNIT value='$UNIT'>
				<input type='hidden' name=MENU value='$MENU'>
		<input type=submit value='Hapus'></form>
";
$no++;
?>
        </div>
</TABLE>
