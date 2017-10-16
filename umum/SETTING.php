          <?php
//include_once "../koneksi/koneksi.php";
// 			echo "<TR>
// 			<Th VALIGN=TOP><TABLE WIDTH=><td>
//             	<form action=umum/mulai.php method=GET name=form1 target=_self>
				
// 				Nama:
//                             <input name=NAMA type=password size=15 maxlength=50>
//                             <input name=HAK type=hidden value='BP2HP'>
// 				Password:
// 				<input name='PHPL' size=20 type=password>
// 				<input type='hidden' name=GO value='$GO'>
// 				<input type='hidden' name=ES value='$ES'>
// 				<input type='hidden' name=PWD value='$PWD'>
// 			  	<input type=submit value=NEXT></form></TABLE>

// <tr>";
// $no++;

?>
<div class="jumbotron">
	<div class="container">
		<form role="form" action="umum/mulai.php" method="GET" name="form1" target="_self">
					<div class="form-group">
						<div class="input-group">
							<input type="text" class="form-control" name="NAMA" id="NAMA" placeholder="Nama">
							<label for="NAMA" class="input-group-addon glyphicon glyphicon-user"></label>
						</div>
					</div> <!-- /.form-group -->

					<div class="form-group">
						<div class="input-group">
							<input type="password" class="form-control" id="PHPL" name="PHPL" placeholder="Password">
							<label for="PHPL" class="input-group-addon glyphicon glyphicon-lock"></label>
						</div> <!-- /.input-group -->
					</div> <!-- /.form-group -->
 <!-- /.checkbox -->
 					<input type="submit" class="btn btn-info" value="NEXT">
				</form>
	</div>
</div>