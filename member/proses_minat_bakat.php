<?php

    include "koneksi.php";

    $nama_mb = $_POST ['nama_mb'];
    $jenis_mb = $_POST ['jenis_mb'];
    $tanggal = date("l, d-m-Y h:i:sa");
    // $foto = $_POST ['foto'];
    $ket = $_POST ['ket'];
    $username = $_POST['username'];
    $lokasi_file = $_FILES['foto']['tmp_name'];
    $nama_file   = $_FILES['foto']['name'];
    // Tentukan folder untuk menyimpan file
    $folder = "../adm/upload/";
    // Apabila file berhasil di upload
    move_uploaded_file($lokasi_file, $folder.$nama_file);
    
    
        $sql = "insert into mb (nama_mb, id_jenis_mb, tanggal, ket, foto, id_member) 
                values
                ('$nama_mb', '$jenis_mb', '$tanggal', '$ket', '$nama_file',  '$username')";
                // echo $sql;
        $hasil = mysqli_query($kon, $sql);

        $sql2 = "update member set id_jenis_mb='$jenis_mb' where id_member='$username'";
        // echo $sql2;
        $hasil2 = mysqli_query($kon, $sql2);

        if (!$hasil || !$hasil2){
    echo "Gagal Simpan, silahkan diulangi!<br />";
    echo mysqli_error($kon);
    echo "<br/><input type='button' value='Kembali'
          onClick='self.history.back()'>";
    exit;
    } else {
        ?>
        <script language="JavaScript">
            alert('Anda Berhasil Menambah Data');
            window.location='index.php?act=minat_bakat';
        </script>
        <?php
    }
 ?>