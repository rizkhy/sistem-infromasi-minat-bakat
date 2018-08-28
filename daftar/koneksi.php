<?php
error_reporting (E_ALL ^ E_DEPRECATED);
$host = "den1.mysql2.gear.host";
$user = "minat";
$pass = "Ea5snP1W88_!";
$dbName = "minat";

 $kon = mysqli_connect($host, $user, $pass);
 if (!$kon)
	die ("Gagal Koneksi...");

 $hasil = mysqli_select_db($kon, $dbName);
		if (!$hasil) die ("Gagal Konek Database");
?>