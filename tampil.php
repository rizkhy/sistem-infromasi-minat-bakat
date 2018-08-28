<html>
<head>
<title>Halaman Komentar</title>
<?php

include "koneksi.php";
$penerima = $_GET['id_mb'];
$result=mysqli_query($kon, "SELECT * from komentar where id_mb = '$penerima' order by tanggal");
while($data=mysqli_fetch_assoc($result))
{
	echo "<hr/>";
	echo "$data[tanggal]<br>";
	echo "$data[nama] : $data[komen]<br> ";
	//echo "penerima : $data[id_mb]<br>";
	//echo "komentar : $data[komen]<br>";
} 
?>
</body>
</html>