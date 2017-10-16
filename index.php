
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
include_once "koneksi/koneksi.php";
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
              <a class="nav-link js-scroll-trigger" href="index.php">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="index.php?SET=RUANG">Tata Ruang Kantor</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="index.php?SET=ATURAN">Koleksi Peraturan</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="index.php?SET=admin">Admin</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header class="bg-primary text-white">
      <div class="container text-center">
        <h1>Sibariss</h1>
        <!-- <img src=""> -->
        <p class="lead">Sistem Informasi Barang Inventaris berbasis spasial</p>
      </div>
    </header>

    <section id="about">
      <div class="container-fluid" style="margin-top: -100px;">
        <div class="row">
          <!-- <div class="col-lg-12"> -->
            <?php
              if($_GET['SET']==''){
                ?>
                <div class="col-sm-1">
              <div class="list-group">
                <a href="index.php?DENAH=&HAK=" class="list-group-item active">F-22</a>
                <a href="index.php?DENAH=&HAK=" class="list-group-item active">F-21</a>
                <a href="index.php?DENAH=&HAK=" class="list-group-item active ">F-20</a>
                <a href="index.php?DENAH=&HAK=" class="list-group-item active">F-18</a>
                <a href="index.php?DENAH=&HAK=" class="list-group-item active">F-17</a>
                <a href="index.php?DENAH=&HAK=" class="list-group-item active">F-16</a>
                <a href="index.php?DENAH=&HAK=" class="list-group-item active">F-15</a>
                <a href="index.php?DENAH=&HAK=" class="list-group-item active">F-14</a>
                <a href="index.php?DENAH=&HAK=" class="list-group-item active">F-13</a>
                <a href="index.php?DENAH=&HAK=" class="list-group-item active">F-12</a>
                <a href="index.php?DENAH=&HAK=" class="list-group-item active">F-11</a>
                <a href="index.php?DENAH=&HAK=" class="list-group-item active">F-10</a>
                <a href="index.php?DENAH=&HAK=" class="list-group-item active">F-09</a>
                <a href="index.php?DENAH=denah8&HAK=Deputi Bidang Koordinasi Sumber Daya Alam dan Jasa" class="list-group-item list-group-item-success">F-08</a>
                <a href="index.php?DENAH=&HAK=" class="list-group-item active ">F-07</a>
                <a href="index.php?DENAH=&HAK=Biro Umum" class="list-group-item active">F-06</a>
                <a href="index.php?DENAH=&HAK=" class="list-group-item active">F-05</a>
                <a href="index.php?DENAH=&HAK=" class="list-group-item active">F-04</a>

                <a href="index.php?DENAH=&HAK=" class="list-group-item active">F-03</a>
                <a href="index.php?DENAH=&HAK=" class="list-group-item active">F-02</a>
                <a href="index.php?DENAH=&HAK=" class="list-group-item active">F-01</a>
              </div> 
            </div>
            <?php
              }
            ?>
            
            <div class="col-sm-9">
              <?php
                $SET= $_GET['SET'];
                  if ($SET=='') {$JURNAL='tower.php';}else {;}
                  if ($DENAH<>'') {$JURNAL='tower.php';}else {;}
                  if ($SET=='admin') {$JURNAL='umum/SETTING.php';}else {;}
                  if ($SET=='RUANG') {$JURNAL='ADMIN/STATISTIK/index.php';}else {;}
                  if ($SET=='BOOK') {$JURNAL='book/SETTING.php';}else {;}
                  if ($SET=='ATURAN') {$JURNAL='ATURAN.php';}else {;}
                include_once "$JURNAL";
                ?>
              <!-- <img src="umum/tower.jpg" class="img-responsive" alt="Image"> -->
            </div>

          <!-- </div> -->
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
