<?php
$server ="localhost";
$user ="root";
$passwd ="";
$dbs ="sesdep2"; 
$konek=mysql_connect($server, $user, $passwd)
or die ("Gagal konek ke server MySQL".mysql_error());
$bukadb=mysql_select_db($dbs)
or die ("Gagal membuka database $dbs".mysql_error());
error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));

date_default_timezone_set("Asia/Jakarta");
date("Y-m-d H:i:s", mktime(date("H")+1, date("i"), date("s"), date("m"), date("d"), date("Y")));
?>
