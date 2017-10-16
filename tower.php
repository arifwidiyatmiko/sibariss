<table width="100%" border="1" align="center" cellpadding="5" cellspacing="5">
  <tbody>
    <tr> 
      <td valign="top" bgcolor="<?PHP ECHO"$WARNA"?>">
        <?php 
        if ($_GET['DENAH'] && !$_GET['KODE']) {
          ?>
          <script type="text/javascript">
  $(document).ready(function(){
    $('#awalan').show();
    $('#data').hide();
    
});
  function toData() {
      $('#awalan').hide();
      $('#data').show();
    }

</script>
          <?php
        }elseif($_GET['KODE'] && $_GET['DENAH'] ){
            ?>
           <script type="text/javascript">
  $(document).ready(function(){
    $('#awalan').hide();
    $('#data').show();
    
});
  function toData() {
      $('#awalan').hide();
      $('#data').show();
    }

</script>
          <?php
        }
        else{
          ?>
           <script type="text/javascript">
  $(document).ready(function(){
    $('#awalan').hide();
    $('#data').show();
    
});
  function toData() {
      $('#awalan').hide();
      $('#data').show();
    }

</script>
          <?php
        }
        ?>
        <div align="center"><font size="5" face="Geneva, Arial, Helvetica, sans-serif"><span class="style2"><em> 
          </em></span></font> <font size="5" face="Geneva, Arial, Helvetica, sans-serif"><span class="style2"><em> 
          </em></span></font>
          <font size="5" face="Geneva, Arial, Helvetica, sans-serif"><span class="style2"><em> 
          </em></span></font>
        </div>
        <td id="awalan" width="90%" valign="top" bgcolor="#CCCCCC">
          <!-- <button onclick="toData()" type="button" class="btn btn-default">button</button>  -->
          <img src="umum/tower.jpg" class="img-responsive" alt="Image" onclick="toData()">
        </td>
      <td id="data" width="90%" valign="top" bgcolor="#CCCCCC"> 
        <?php
$DENAH= $_GET['DENAH'];
	if ($DENAH=='') {ECHO'
    <div align=center valign=middle><img src="umum/tower.jpg" width=700 height=700>
    <p>Pada saat ini sebagian besar instansi belum memiliki sistem yang menyediakan informasi inventarisasi alat/barang yang berbasis spasial. Kemenko Bidang Kemaritiman, sebagai salah satu kementerian yang sangat baru dengan sumber daya yang juga terbatas harus mampu memanfaatkan teknologi informasi untuk mendukung sekaligus mengelola teknologi informasi untuk mendukung sekaligus mengelola berbagai tugas dan fungsinya. Salah satu fungsi Sekretariat adalah mengolah Barang Milik Negara (BMN). Sistem ini merupakan model sistem informasi barang yang dapat diintegrasikan data nummerik dan visual berdasarkan lokasi. SIBARISS dapat memberikan informasi dan membantu pengguna dalam melakukan pendataan barang secara lengkap dan pelacakan dimana posisi barang itu berada.</p>
    ';}else {;}
	if ($DENAH=='denah8') {$JURNAL='denah8.php';}else {;}
$KODE= $_GET['KODE'];
	if ($KODE<>'') {$JURNAL='AGENDA.php';}else {;}
include_once "$JURNAL"; //ECHO"$JURNAL";
?>
</td>
        <div align="center"> </div></TABLE>

</TABLE>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      
      <div class="modal-body">
            <img src="umum/tower.jpg" class="img-responsive" alt="Image">
      </div>
    </div>
  </div>
</div>

