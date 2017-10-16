
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="http:d2.gif">

    <title>SIBARISS</title>

    <!-- Bootstrap core CSS -->
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
  </head>
  <?php
// include_once "koneksi/koneksi.php";

?>
  <!-- <div align="center"><font color="#FF0000" size="5" face="Verdana, Arial, Helvetica, sans-serif"><strong>  -->
<?php
include_once "../koneksi/koneksi.php";

$UNIT=$_GET['UNIT'];
$MENU=$_GET['MENU'];
$TAHUN=date("Y");
//  if ($UNIT<>'deputi4') {echo "SALAH COY "; exit;}
  if ($MENU=='') {echo "<p>Maaf data tidak ada</p><button onclick='goBack()''>Go Back</button>

<script>
function goBack() {
    window.history.back();
}
</script>";  exit;}
  if ($MENU<>'SETTING') {echo "<p>Maaf data tidak ada</p><button onclick='goBack()''>Go Back</button>

<script>
function goBack() {
    window.history.back();
}
</script>"; ; exit;}
?>
  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Sibariss</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="../index.php?">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="index.php?MENU=<?php echo $MENU;?>&UNIT=<?php echo $UNIT; ?>">ESC</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="index.php?SET=TARUNG&MENU=<?php echo $MENU;?>&UNIT=<?php echo $UNIT; ?>">Tata Ruang Kantor</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="index.php?SET=PERATURAN&MENU=<?php echo $MENU;?>&UNIT=<?php echo $UNIT; ?>">Koleksi Peraturan</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="index.php?SET=STATISTIK&MENU=<?php echo $MENU;?>&UNIT=<?php echo $UNIT; ?>">Statistik</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header class="bg-primary text-white">
      <div class="container text-center">
        <h1>Sibariss</h1>
        <p class="lead">Sistem Informasi Barang Inventaris berbasis spasial</p>
      </div>
    </header>

    <section id="about">
      <div class="container" style="margin-top: -100px">
        <div class="row">
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
        </div>
      </div>
    </section>

  
    <!-- Footer -->
<!--     <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
      </div>
    </footer>
 -->

  </body>

</html>
