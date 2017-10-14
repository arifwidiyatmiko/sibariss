<?php
$server ="localhost";
$user ="jimat";
$passwd ="jimat.db";
$dbs ="jimat_spot"; 
$konek=mysql_connect($server, $user, $passwd)
or die ("Gagal konek ke server MySQL".mysql_error());
$bukadb=mysql_select_db($dbs)
or die ("Gagal membuka database $dbs".mysql_error());
//error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
?>
