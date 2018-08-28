<?php
include "koneksi.php";

$nama_lengkap = $_POST["nama_lengkap"];
$username = $_POST["username"];
$password = $_POST["password"];
$alamat = $_POST["alamat"];
$tgl_lahir = $_POST["tgl_lahir"];
$tmpt_lahir = $_POST["tmpt_lahir"];
$no_telp = $_POST["no_telp"];
$kategori = $_POST["kategori"];
$mb = $_POST["mb"];

$sql = "insert into member (nama_lengkap,username,password,alamat,tgl_lahir,tmpt_lahir,no_telp, kategori, id_jenis_mb) values ('$nama_lengkap','$username','$password','$alamat','$tgl_lahir','$tmpt_lahir','$no_telp','$kategori', '$mb')";

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
            alert('Anda Berhasil Mendaftar');
            window.location='../masuk/';
        </script>
        <?php
    }
    ?>

<!-- mysqli_query($kon, $sql);
echo "<script>alert('Pendaftaran Berhasil! Silahkan Login.')</script>";
echo "<meta http-equiv='refresh' content='0;url=../masuk/'>"; -->