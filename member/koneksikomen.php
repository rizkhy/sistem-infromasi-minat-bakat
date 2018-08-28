<?php
Function koneksiPhp(){
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "minat";
// menciptakankoneksi
$koneksi = mysqli_connect($servername, $username, $password, $dbname);
// Cekkoneksi
if (!$koneksi) {
die("Koneksigagal: " . mysqli_connect_error());
}
return $koneksi;
}
?>