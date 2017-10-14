<table width="100%" border="1" align="center" cellpadding="5" cellspacing="5">
  <tbody>
    <tr> 
      <td valign="top" bgcolor="<?PHP ECHO"$WARNA"?>"><div align="center"><font size="5" face="Geneva, Arial, Helvetica, sans-serif"><span class="style2"><em> 
          </em></span></font> <font size="5" face="Geneva, Arial, Helvetica, sans-serif"><span class="style2"><em> 
          </em></span></font> 
          <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr valign="top"> 
              <td align="left" valign="baseline">
<div align="center">
					<a href="index.php?DENAH=&HAK="><img src="umum/L22.png" width="150" height="30"></A><BR>
                  <a href="index.php?DENAH=&HAK="><img src="umum/L21.png" width="150" height="30"></A><BR>
                  <a href="index.php?DENAH=&HAK="><img src="umum/L20.png" width="150" height="30"></A><BR>
                  <a href="index.php?DENAH=&HAK="><img src="umum/L19.png" width="150" height="30"></A><BR>
                  <a href="index.php?DENAH=&HAK="><img src="umum/L18.png" width="150" height="30"></A><BR>
                  <a href="index.php?DENAH=&HAK="><img src="umum/L17.png" width="150" height="30"></A><BR>
                  <a href="index.php?DENAH=&HAK="><img src="umum/L16.png" width="150" height="30"></A><BR>
                  <a href="index.php?DENAH=&HAK="><img src="umum/L15.png" width="150" height="30"></A><BR>
                  <a href="index.php?DENAH=&HAK="><img src="umum/L14.png" width="150" height="30"></A><BR>
                  <a href="index.php?DENAH=&HAK="><img src="umum/L13.png" width="150" height="30"></A><BR>
                  <a href="index.php?DENAH=&HAK="><img src="umum/L12.png" width="150" height="30"></A><BR>
                  <a href="index.php?DENAH=&HAK="><img src="umum/L11.png" width="150" height="30"></A><BR>
                  <a href="index.php?DENAH=&HAK="><img src="umum/L10.png" width="150" height="30"></A><BR>
                  <a href="index.php?DENAH=&HAK="><img src="umum/L9.png" width="150" height="30"></A><BR>
                  <a href="index.php?DENAH=denah8&HAK=Deputi Bidang Koordinasi Sumber Daya Alam dan Jasa"><img src="umum/L8.png" width="150" height="30" border="0"></a><BR>
                  <a href="index.php?DENAH=&HAK="><img src="umum/L7.png" width="150" height="30" border="0"></a><BR>
                  <a href="index.php?DENAH=&HAK=Biro Umum"><img src="umum/L6.png" width="150" height="30" border="0"></a><BR>
                  <a href="index.php?DENAH=&HAK="><img src="umum/L5.png" width="150" height="30"></A><BR>
				  <a href="index.php?DENAH=&HAK="><img src="umum/L4.png" width="150" height="30"></A><BR>
                  <a href="index.php?DENAH=&HAK="><img src="umum/L3.png" width="150" height="30"></A><BR>
                  <a href="index.php?DENAH=&HAK="><img src="umum/L2.png" width="150" height="30"></A><BR>
				  <a href="index.php?DENAH=&HAK="><img src="umum/L1.png" width="150" height="30"></A><BR>
                </div></td>
            </tr>
          </table>
          <font size="5" face="Geneva, Arial, Helvetica, sans-serif"><span class="style2"><em> 
          </em></span></font> </div>
      <td width="90%" valign="top" bgcolor="#CCCCCC"> 
        <?php
$DENAH= $_GET['DENAH'];
	if ($DENAH=='') {ECHO'<div align=center><img src="umum/tower.jpg" width=700 height=700>';}else {;}
	if ($DENAH=='denah8') {$JURNAL='denah8.php';}else {;}
$KODE= $_GET['KODE'];
	if ($KODE<>'') {$JURNAL='AGENDA.php';}else {;}
include_once "$JURNAL"; //ECHO"$JURNAL";
?>
        <div align="center"> </div></TABLE>

</TABLE>

