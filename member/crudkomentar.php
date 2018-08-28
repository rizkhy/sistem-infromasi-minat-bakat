<?php
include 'koneksikomen.php';
//$idKonseling = generateRandomString(10);

$id_comment_member = $_POST['id_comment_member'];
$pengirim = $_POST['pengirim'];
$penerima = $_POST['penerima'];
$komentar = $_POST['komentar'];
$tanggal  = $_POST['tanggal'];

InputKomentar($id_comment_member,$pengirim,$penerima,$komentar,$tanggal);
if ($pengirim == $nip){
header('Location: ../guru/room.php?nis='.$nis);
}else {
header('Location: ../siswa/room.php?nip='.$nip);
}


Function InputDetailKonseling($idKonseling,$nis,$nip,$pengirim,$konseling,$waktu){
	$sql = "insert into detailcons (id_cons,nis,nip,pengirim,konseling,waktu) values ('$idKonseling','$nis','$nip','$pengirim','$konseling','$waktu')";
    
	$hasil = mysqli_query(koneksiPhp(),$sql);
	if (!$hasil) {
		echo "error inser detail conseling".mysqli_connect_error();
	}
}


?>