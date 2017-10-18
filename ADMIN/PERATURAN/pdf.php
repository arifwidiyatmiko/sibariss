
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
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/scrolling-nav.css" rel="stylesheet">

    <!-- Bootstrap core JavaScript -->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/popper/popper.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom JavaScript for this theme -->
    <script src="../js/scrolling-nav.js"></script>
  </head>
  <?php
// include_once "koneksi/koneksi.php";
?>
  <body id="page-top">
<?PHP
// include_once "../koneksi/koneksi.php";
// $G='<hr noshade color=#000000 size=3>';
$MENU=$_GET['MENU'];
$UNIT=$_GET['UNIT'];
// $HAK=$_GET['HAK'];
// $ID=$_GET['ID'];
?>
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
              <a class="nav-link js-scroll-trigger" href="../../index.php">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="../index.php?MENU=<?php echo $MENU;?>&UNIT=<?php echo $UNIT; ?>">ESC</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="../index.php?SET=TARUNG&MENU=<?php echo $MENU;?>&UNIT=<?php echo $UNIT; ?>">Tata Ruang Kantor</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="../index.php?SET=PERATURAN&MENU=<?php echo $MENU;?>&UNIT=<?php echo $UNIT; ?>">Koleksi Peraturan</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="../index.php?SET=STATISTIK&MENU=<?php echo $MENU;?>&UNIT=<?php echo $UNIT; ?>">Statistik</a>
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
      <div class="container" style="margin-top: -100px;">
        <div class="row">
          <!-- <div class="col-lg-12"> -->
            <table class="table table-bordered">
              <tr>
                <th>Nama File</th>
                <th>Download</th>
              </tr>
              <tr>
                <td colspan="2" style="text-align: center;"><b>Peraturan Umum</b></td>
              </tr>
                  <tr>
                    <td>KMK-No.-137-KM.06-2014-Tentang-Perubahan-Ketiga-Atas-Peraturan-Menteri-Keuangan-Nomor-29-PMK.06-2010-Tentang-Penggolongan-dan-Kodefikasi-Barang-Milik-Negara</td>
                    <td><a href="../ADMIN/PERATURAN/PERATURAN UMUM/247_PMK.06_2016-Tentang-Pengasuransian-Barang-Milik-Negara.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>KMK-059-2013-Tabel_Masa_Manfaat</td>
                    <td><a href="PERATURAN UMUM/KMK-059-2013-Tabel_Masa_Manfaat.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>KMK-403_KM.6_2013_Pedoman Pelaksanaan Tindak Lanjut Penertiban BMN [ada Kementerian atau Lembaga</td>
                    <td><a href="PERATURAN UMUM/KMK-403_KM.6_2013_Pedoman Pelaksanaan Tindak Lanjut Penertiban BMN [ada Kementerian atau Lembaga.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>Peraturan-Menteri-Keuangan-Nomor-66-PMK.06-2016-Tentang-Penilaian-Kekayaan-Yang-Dikuasai-Negara-Berupa-Sumber-Daya-Alam</td>
                    <td><a href="PERATURAN UMUM/Peraturan-Menteri-Keuangan-Nomor-66-PMK.06-2016-Tentang-Penilaian-Kekayaan-Yang-Dikuasai-Negara-Berupa-Sumber-Daya-Alam.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>Peraturan-Menteri-Keuangan-Nomor-218-PMK.-06-2015-Tentang-Tata-Cara-Penyimpanan-Dokumen-Kepemilikan-Barang-Milik-Negara</td>
                    <td><a href="PERATURAN UMUM/Peraturan-Menteri-Keuangan-Nomor-218-PMK.-06-2015-Tentang-Tata-Cara-Penyimpanan-Dokumen-Kepemilikan-Barang-Milik-Negara.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>PERMENKEU-71-PMK.06-2016-Tentang-Tata-Cara-Pengelolaan-Barang-Milik-Negara-Yang-Tidak-Digunakan-Untuk-Menyelenggarakan-Tugas-Dan-Fungsi-Kementerian-Negara-Lembaga</td>
                    <td><a href="PERATURAN UMUM/PERMENKEU-71-PMK.06-2016-Tentang-Tata-Cara-Pengelolaan-Barang-Milik-Negara-Yang-Tidak-Digunakan-Untuk-Menyelenggarakan-Tugas-Dan-Fungsi-Kementerian-Negara-Lembaga.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>PERMENKEU-111PMK062016 TATA CARA PEMINDAHTANGANAN BMN.html</td>
                    <td><a href="PERATURAN UMUM/PERMENKEU-111PMK062016 TATA CARA PEMINDAHTANGANAN BMN.html.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>PMK-90-2014-perubahan-pmk-1-2013-penyusutan-BMN-pada-entitas-pemerintah-pusat</td>
                    <td><a href="PERATURAN UMUM/PMK-90-2014-perubahan-pmk-1-2013-penyusutan-BMN-pada-entitas-pemerintah-pusat.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>PMK-No.-246-PMK.06-th-2014-tentang-Tata-Cara-Pelaksanaan-Penggunaan-BMN</td>
                    <td><a href="PERATURAN UMUM/PMK-No.-246-PMK.06-th-2014-tentang-Tata-Cara-Pelaksanaan-Penggunaan-BMN.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>UU-1-2004 PERBENDAHARAAN NEGARA</td>
                    <td><a href="PERATURAN UMUM/UU-1-2004 PERBENDAHARAAN NEGARA.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>UU-No.-17-Tahun-2003-tentang-Keuangan-Negara</td>
                    <td><a href="PERATURAN UMUM/UU-No.-17-Tahun-2003-tentang-Keuangan-Negara.pdf">Download</a></td>
                  </tr>
              <tr>
                <td colspan="2" style="text-align: center;"><b>Peraturan Tentang Tanah dan Rumah Negara</b></td>
              </tr>
                  <tr>
                    <td>Keputusan-Menteri-Permukiman-Dan-Prasarana-Wilayah-Nomor-373-KPTS-2001-Tentang-Sewa-Rumah-Negara</td>
                    <td><a href="PERATURAN TENTANG TANAH DAN RUMAH NEGARA/Keputusan-Menteri-Permukiman-Dan-Prasarana-Wilayah-Nomor-373-KPTS-2001-Tentang-Sewa-Rumah-Negara.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>NOMOR-186-PMK-06-2009-Tentang-Pensertipikatan-Barang-Milik-Negara-Berupa-Tanah</td>
                    <td><a href="PERATURAN TENTANG TANAH DAN RUMAH NEGARA/NOMOR-186-PMK-06-2009-Tentang-Pensertipikatan-Barang-Milik-Negara-Berupa-Tanah.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>Peraturan-Bersama-Empat-Menteri-Tentang-Tata-Cara-Penyelesaian-Penguasaan-Tanah-Yang-Berada-Di-Dalam-Kawasan-Hutan</td>
                    <td><a href="PERATURAN TENTANG TANAH DAN RUMAH NEGARA/Peraturan-Bersama-Empat-Menteri-Tentang-Tata-Cara-Penyelesaian-Penguasaan-Tanah-Yang-Berada-Di-Dalam-Kawasan-Hutan.pdf">Download</a></td>
                  </tr>
              <tr>
                <td colspan="2" style="text-align: center;"><b>Peraturan tentang Kodefikasi</b></td>
              </tr>
                  <tr>
                    <td>KMK-No.-137-KM.06-2014-Tentang-Perubahan-Ketiga-Atas-Peraturan-Menteri-Keuangan-Nomor-29-PMK.06-2010-Tentang-Penggolongan-dan-Kodefikasi-Barang-Milik-Negara</td>
                    <td><a href="Peraturan Tentang Kodefikasi/KMK-No.-137-KM.06-2014-Tentang-Perubahan-Ketiga-Atas-Peraturan-Menteri-Keuangan-Nomor-29-PMK.06-2010-Tentang-Penggolongan-dan-Kodefikasi-Barang-Milik-Negara.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>KKMK_Nomor_14km62015_Perubahan-Keempat-PMK-Nomor-29_2010-Tentang-Penggolongan-dan-Kodefikasi-BMN</td>
                    <td><a href="Peraturan Tentang Kodefikasi/KMK_Nomor_14km62015_Perubahan-Keempat-PMK-Nomor-29_2010-Tentang-Penggolongan-dan-Kodefikasi-BMN.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>PMK-No.-29-PMK.06-2010-Tentang-Penggolongan-dan-Kodefikasi-Barang-Milik-Negara</td>
                    <td><a href="Peraturan Tentang Kodefikasi/PMK-No.-29-PMK.06-2010-Tentang-Penggolongan-dan-Kodefikasi-Barang-Milik-Negara.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>PMK-No.-97-PMK.06-2007-Tentang-Penggolongan-dan-Kodefikasi-Barang-MIlik-Negara</td>
                    <td><a href="Peraturan Tentang Kodefikasi/PMK-No.-97-PMK.06-2007-Tentang-Penggolongan-dan-Kodefikasi-Barang-MIlik-Negara.pdf">Download</a></td>
                  </tr>
              <tr>
                <td colspan="2" style="text-align: center"><b>Peraturan tentang Pelimpahan Wewenang</b></td>
              </tr>
                   <tr>
                    <td>KMK-229-KM.6-2016-Tentang-Pelimpahan-Sebagian-Wewenang-Menteri-Keuangan-Yang-Telah-Dilimpahkan-Kepada-Direktur-Jenderal-Kekayaan-Negara</td>
                    <td><a href="Peraturan Tentang Pelimpahan Wewenang/KMK-229-KM.6-2016-Tentang-Pelimpahan-Sebagian-Wewenang-Menteri-Keuangan-Yang-Telah-Dilimpahkan-Kepada-Direktur-Jenderal-Kekayaan-Negara.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>PMK-4-Tahun-2015-Tentang-pendelegasian-sbagian-kewenangan-ke-pengguna-barang</td>
                    <td><a href="Peraturan Tentang Pelimpahan Wewenang/PMK-4-Tahun-2015-Tentang-pendelegasian-sbagian-kewenangan-ke-pengguna-barang.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>SK-KEP68KBIV2013-Pelimpahan-Wewenang-Pembentukan-Panitia-Penghapusan-Barang-Milik-Negara</td>
                    <td><a href="Peraturan Tentang Pelimpahan Wewenang/SK-KEP68KBIV2013-Pelimpahan-Wewenang-Pembentukan-Panitia-Penghapusan-Barang-Milik-Negara.pdf">Download</a></td>
                  </tr>
              <tr>
                <td colspan="2" style="text-align: center"><b>Peraturan tentang Pemanfaatan Barang Milik Negara</b></td>
              </tr>
                  <tr>
                    <td>NOMOR 33PMK.062012 Tentang Tata Cara Pelaksanaan Sewa Barang Milik Negara</td>
                    <td><a href="Peraturan Tentang Pemanfaatan barang Milik Negara/NOMOR 33PMK.062012 Tentang Tata Cara Pelaksanaan Sewa Barang Milik Negara.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>Peraturan-Menteri-Keuangan-Nomor-65-PMK.06-2016-Tentang-Perubahan-Atas-Peraturan-Menteri-Keuangan-Nomor-164-PMK.06-2014</td>
                    <td><a href="Peraturan Tentang Pemanfaatan barang Milik Negara/Peraturan-Menteri-Keuangan-Nomor-65-PMK.06-2016-Tentang-Perubahan-Atas-Peraturan-Menteri-Keuangan-Nomor-164-PMK.06-2014.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>PMK-78-Tahun-2014-Pemanfaatan-BMN</td>
                    <td><a href="Peraturan Tentang Pemanfaatan barang Milik Negara/PMK-78-Tahun-2014-Pemanfaatan-BMN.pdf">Download</a></td>
                  </tr>
              <tr>
                <td colspan="2" style="text-align: center"><b>Peraturan tentang Penatausahaan Barang Milik Negara</b></td>
              </tr>
                  <tr>
                    <td>PMK-109-PMK.06-2009-Pedoman-Pelaksanaan-Inventarisasi-BMN</td>
                    <td><a href="Peraturan Tentang Penatausahaan barang Milik Negara/PMK-109-PMK.06-2009-Pedoman-Pelaksanaan-Inventarisasi-BMN.pdf">Download</a></td>
                  </tr>
              <tr>
                <td colspan="2" style="text-align: center"><b>Peraturan Tentang Penetapan dan Pengalihan Status Barang Milik Negara</b></td>
              </tr>
                  <tr>
                    <td>PMK-246-2014-tentang-Penetapan-Status-penggunaan-BMN</td>
                    <td><a href="Peraturan Tentang Penetapan dan Pengalihan Status Barang Milik Negara/PMK-246-2014-tentang-Penetapan-Status-penggunaan-BMN.pdf">Download</a></td>
                  </tr>
              <tr>
                <td colspan="2" style="text-align: center"><b>Peraturan Tentang Pengelolaan dan Perencanaan Kebutuhan Barang Milik Negara</b></td>
              </tr>
                  <tr>
                    <td>NOMOR-244PMK.062012-Tentang-Tata-Cara-Pelaksanaan-Pengawasan-Dan-Pengendalian-Barang-Milik-Negara</td>
                    <td><a href="Peraturan Tentang Pengelolaan dan Perencanaan Kebutuhan Barang Milik Negara/NOMOR-244PMK.062012-Tentang-Tata-Cara-Pelaksanaan-Pengawasan-Dan-Pengendalian-Barang-Milik-Negara.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>NOMOR-244PMK.062012-Tentang-Tata-Cara-Pelaksanaan-Pengawasan-Dan-Pengendalian-Barang-Milik-Negara</td>
                    <td><a href="Peraturan Tentang Pengelolaan dan Perencanaan Kebutuhan Barang Milik Negara/PMK-96-06-TH-2007-TATA-CARA-PELAKSANAAN-PENGGUNAAN-PEMANFAATAN-PENGHAPUSAN-DAN-PEMINDAHTANGANAN-BMN.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>NOMOR-244PMK.062012-Tentang-Tata-Cara-Pelaksanaan-Pengawasan-Dan-Pengendalian-Barang-Milik-Negara</td>
                    <td><a href="Peraturan Tentang Pengelolaan dan Perencanaan Kebutuhan Barang Milik Negara/PMK-150-2014-Tentang-Perencanaan-Kebutuhan-BMN.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>NOMOR-244PMK.062012-Tentang-Tata-Cara-Pelaksanaan-Pengawasan-Dan-Pengendalian-Barang-Milik-Negara</td>
                    <td><a href="Peraturan Tentang Pengelolaan dan Perencanaan Kebutuhan Barang Milik Negara/PP NOMOR 27 TAHUN 2014 Tentang Pengelolaan Barang Milik NegaraDaerah.pdf">Download</a></td>
                  </tr>
              <tr>
                <td colspan="2" style="text-align: center"><b>Peraturan Tentang Penghapusan dan Lelang Bongkaran Barang Milik Negara</b></td>
              </tr>
                  <tr>
                    <td>Peraturan-Menteri-Keuangan-Nomor-83-PMK.06-2016-Tentang-Tata-Cara-Pelaksanaan-Pemusnahan-Dan-Penghapusan-Barang-Milik-Negara</td>
                    <td><a href="Peraturan Tentang Penghapusan dan Lelang Bongkaran Barang Milik Negara/Peraturan-Menteri-Keuangan-Nomor-83-PMK.06-2016-Tentang-Tata-Cara-Pelaksanaan-Pemusnahan-Dan-Penghapusan-Barang-Milik-Negara.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>Peraturan-Pemerintah-Nomor-84-Tahun-2014-Tentang-Penjualan-Barang-Milik-Negara-atau-Daerah-Berupa-Kendaraan-Perorangan-Dinas</td>
                    <td><a href="Peraturan Tentang Penghapusan dan Lelang Bongkaran Barang Milik Negara/Peraturan-Pemerintah-Nomor-84-Tahun-2014-Tentang-Penjualan-Barang-Milik-Negara-atau-Daerah-Berupa-Kendaraan-Perorangan-Dinas.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>PMK-50-2014-ttg-Tata-Cara-Pelaksanaan-Penghapusan-BMN</td>
                    <td><a href="Peraturan Tentang Penghapusan dan Lelang Bongkaran Barang Milik Negara/PMK-50-2014-ttg-Tata-Cara-Pelaksanaan-Penghapusan-BMN.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>SE-4-KN-2014-Petunjuk-Penyelesaian-Bongkaran-BMN-Karean-Perbaikan-Reovasi-Rehabilitasi-atau-Renovasi</td>
                    <td><a href="Peraturan Tentang Penghapusan dan Lelang Bongkaran Barang Milik Negara/SE-4-KN-2014-Petunjuk-Penyelesaian-Bongkaran-BMN-Karean-Perbaikan-Reovasi-Rehabilitasi-atau-Renovasi.pdf">Download</a></td>
                  </tr>
              <tr>
                <td colspan="2" style="text-align: center"><b>Peraturan Tentang Rekonsiliasi</b></td>
              </tr>
                  <tr>
                    <td>No-102-PMK-05-2009 Tentang Tata Cara Rekonsiliasi Barang Milik Negara Dalam Rangka Penyusunan Laporan Keuangan Pemerintah Pusat</td>
                    <td><a href="Peraturan Tentang Rekonsiliasi/No-102-PMK-05-2009 Tentang Tata Cara Rekonsiliasi Barang Milik Negara Dalam Rangka Penyusunan Laporan Keuangan Pemerintah Pusat.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>No-102-PMK-05-2009-Tentang-Tata-Cara-Rekonsiliasi-Barang-Milik-Negara-Dalam-Rangka-Penyusunan-Laporan-Keuangan-Pemerintah-Pusat</td>
                    <td><a href="Peraturan Tentang Rekonsiliasi/No-102-PMK-05-2009-Tentang-Tata-Cara-Rekonsiliasi-Barang-Milik-Negara-Dalam-Rangka-Penyusunan-Laporan-Keuangan-Pemerintah-Pusat.pdf">Download</a></td>
                  </tr>
                  <tr>
                    <td>Peraturan-Menteri-Keuangan-Nomor-69-PMK.06-2016-Tentang-Tata-Cara-Rekonsiliasi-Barang-Milik-Negara-Dalam-Rangka-Penyusunan-Laporan-Keuangan-Pemerintah-Pusat</td>
                    <td><a href="Peraturan Tentang Rekonsiliasi/Peraturan-Menteri-Keuangan-Nomor-69-PMK.06-2016-Tentang-Tata-Cara-Rekonsiliasi-Barang-Milik-Negara-Dalam-Rangka-Penyusunan-Laporan-Keuangan-Pemerintah-Pusat.pdf">Download</a></td>
                  </tr>
            </table>

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
