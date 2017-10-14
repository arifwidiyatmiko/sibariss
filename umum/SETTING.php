          <?php
//include_once "../koneksi/koneksi.php";
			echo "<TR>
			<Th VALIGN=TOP><TABLE WIDTH=><td>
            	<form action=umum/mulai.php method=GET name=form1 target=_self>
				
				Nama:
                            <input name=NAMA type=password size=15 maxlength=50>
                            <input name=HAK type=hidden value='BP2HP'>
				Password:
				<input name='PHPL' size=20 type=password>
				<input type='hidden' name=GO value='$GO'>
				<input type='hidden' name=ES value='$ES'>
				<input type='hidden' name=PWD value='$PWD'>
			  	<input type=submit value=NEXT></form></TABLE>

<tr>";
$no++;

?>
