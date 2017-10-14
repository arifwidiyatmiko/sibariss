<?php
$server ="localhost";
$user ="bdkbogor";
$passwd ="10575790756";
$dbs ="bdkbogor"; 
$konek=mysql_connect($server, $user, $passwd)
or die ("Gagal konek ke server MySQL".mysql_error());
$bukadb=mysql_select_db($dbs)
or die ("Gagal membuka database $dbs".mysql_error());

$TAHUN=date(Y);
$TAHUN_X=$TAHUN+1;
$TAHUN_1=$TAHUN-1;
$TAHUN_2=$TAHUN-2;
$TAHUN_3=$TAHUN-3;
$TAHUN_4=$TAHUN-4;
$TAHUN_5=$TAHUN-5;
$SASIH=date('M');

$TK=$hsl_address['MENTERI'];
$SD=$hsl_address['SETJEN'];
$SMP=$hsl_address['ITJEN'];
$SMA=$hsl_address['DITJEN1'];
$DITJEN2=$hsl_address['DITJEN2'];
$DITJEN3=$hsl_address['DITJEN3'];
$DITJEN4=$hsl_address['DITJEN4'];
$DITJEN5=$hsl_address['DITJEN5'];
$DITJEN6=$hsl_address['DITJEN6'];
$DITJEN7=$hsl_address['DITJEN7'];
$DITJEN8=$hsl_address['DITJEN8'];
$DITJEN9=$hsl_address['DITJEN9'];
$DITJEN10=$hsl_address['DITJEN10'];
$LOGO=$hsl_address['LOGO'];

                          $P1='Pusat';
                          $P2='NANGGROE ACEH DARUSSALAM';
                          $P3='Sumatera Utara';
                          $P4='Sumatera Barat';
                          $P5='Bengkulu';
                          $P6='Riau';
                          $P7='Kepulauan Riau';
                          $P8='Jambi';
                          $P9='Sumatera Selatan';
                          $P10='Lampung';
                          $P11='Kepulauan Bangka Belitung';
                          $P12='DKI Jakarta';
                          $P13='Jawa Barat';
                          $P14='Banten';
                          $P15='Jawa Tengah';
                          $P16='DI Yogyakarta';
                          $P17='Jawa Timur';
                          $P18='Kalimantan Barat';
                          $P19='Kalimantan Tengah';
                          $P20='Kalimantan Selatan';
                          $P21='Kalimantan Timur';
                          $P22='Bali';
                          $P23='Nusa Tenggara Barat';
                          $P24='Nusa Tenggara Timur';
                          $P25='Sulawesi Barat';
                          $P26='Sulawesi Utara';
                          $P27='Sulawesi Tengah';
                          $P28='Sulawesi Selatan';
                          $P29='Sulawesi Tenggara';
                          $P30='Gorontalo';
                          $P31='Maluku';
                          $P32='Maluku Utara';
                          $P33='Papua Barat';
                          $P34='Papua';
$J1='Calon Pengendali Ekosistem Hutan TRAMPIL';
$J2='Pengendali Ekosistem Hutan Pemula';
$J3='Pengendali Ekosistem Hutan Pelaksana';
$J4='Pengendali Ekosistem Hutan Pelaksana Lanjutan';
$J5='Pengendali Ekosistem Hutan Penyelia';
$J6='Calon Pengendali Ekosistem Hutan AHLI';
$J7='Pengendali Ekosistem Hutan Pertama';
$J8='Pengendali Ekosistem Hutan Muda';
$J9='Pengendali Ekosistem Hutan Madya';

$X1='Calon Pengendali Ekosistem Hutan TRAMPIL';
$X2='Pengendali Ekosistem Hutan Pemula';
$X3='Pengendali Ekosistem Hutan Pelaksana';
$X4='Pengendali Ekosistem Hutan Pelaksana Lanjutan';
$X5='Pengendali Ekosistem Hutan Penyelia';
$X6='Calon Pengendali Ekosistem Hutan AHLI';
$X7='Pengendali Ekosistem Hutan Pertama';
$X8='Pengendali Ekosistem Hutan Muda';
$X9='Pengendali Ekosistem Hutan Madya';


?>
