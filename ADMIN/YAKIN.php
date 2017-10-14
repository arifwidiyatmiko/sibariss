<?php
$ID= $_GET['ID'];
$NOMOR= $_GET['NOMOR'];
$MENU= $_GET['MENU'];
$UNIT=$_GET['UNIT'];

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
<form action=../ADMIN/index.php method=GET name=form1 target=_self>
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
				<input type='hidden' name=UNIT value='$UNIT'>
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=ID value='$ID'>
				<input type='hidden' name=NOMOR value='$NOMOR'>
		<input type=submit value='Hapus'></form>
";
$no++;
?>
        </div>
</TABLE>
