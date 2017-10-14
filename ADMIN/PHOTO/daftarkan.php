                <?php
include_once "../../koneksi/koneksi.php";
$MENU=$_GET['MENU'];
$MODE=$_GET['MODE'];
ECHO"$G";

			echo "<form action=aksi_.php method=GET name=form1 target=_self>
			<th VALIGN=TOP><TABLE WIDTH=><td  ALIGN=right bgcolor=>$no.</TABLE>
			<Th VALIGN=TOP><TABLE WIDTH=><td ALIGN=CENTER bgcolor=>
				Nama Ruangan <input type='TEXT' name=TOPIK value=''> Kode Ruangan <input type='TEXT' name=KODE value='$MODE'></TABLE>

			<Th VALIGN=TOP><TABLE WIDTH=><td ALIGN=CENTER bgcolor=>
            	
				<input type='hidden' name=ID value=$data_cari[ID]>
				<input type='hidden' name=MENU value='$MENU'>
				<input type='hidden' name=HAK value='$HAK'>
			  	<input type=submit value=Simpan></form></TABLE>


<tr>";
$no++;		
?>
          </table>