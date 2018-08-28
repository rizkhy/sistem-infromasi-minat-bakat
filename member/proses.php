<?php
include "koneksi.php";
// $nama=$_POST['nama'];
// $email=$_POST['email'];
// $tanggal= $_POST['tanggal'];
// $id_mb=$_POST['id_mb'];
// $komentar=$_POST['komen'];
// $result=mysqli_query($kon, "insert into komentar values('null','$nama','$email','$tanggal','$id_mb','$komentar')");
// if ($result > 0)
// // echo "Data Berhasil Dikirim..<br>";
// 	header('Location : detail_minat_bakat.php');
// else{
// 	echo ("gagal menambah komen");
// }
//$id = $_POST["id"];
$nama = $_POST["nama"];
//$email = $_POST["email"];
$tanggal = date('d-m-Y');
$id_mb = $_POST["id_mb"];
$komen = $_POST["komen"];

$sql = "insert into komentar (id, nama, tanggal, id_mb, komen) values ('null','$nama','$tanggal','$id_mb','$komen')";

$hasil = mysqli_query($kon, $sql);

        if (!$hasil){
		    echo "Gagal Simpan, silahkan diulangi!<br />";
		    echo mysqli_error($kon);
		    echo "<br/><input type='button' value='Kembali'
		          onClick='self.history.back()'>";
		    exit;
		    } else {
		        ?>
		        <script language="JavaScript">
		            alert('Anda Berhasil mengirim komentar');
		            window.location='index.php?act=detail_minat_bakat&id_mb=<?php echo $id_mb ?>'; //ini kyaya perlu dibikin kya yg punya mas
		        </script>
		        <?php
    	}
    ?>