<?php

    include "koneksi.php";

    $nama_mb = $_POST ['nama_mb'];
    $jenis = $_POST ['jenis'];
    $tanggal = $tanggal = date("l, d-m-Y h:i:sa");
    $member = $_POST ['member'];
    // $foto = $_POST ['foto'];
    $ket = $_POST ['ket'];

    $lokasi_file = $_FILES['foto']['tmp_name'];
    $nama_file   = $_FILES['foto']['name'];
    // Tentukan folder untuk menyimpan file
    $folder = "upload/";
    // Apabila file berhasil di upload
    move_uploaded_file($lokasi_file, $folder.$nama_file);
    
    
        $sql = "insert into mb (nama_mb, id_jenis_mb, tanggal, ket, foto, id_member) 
                values
                ('$nama_mb', '$jenis', '$tanggal', '$ket', '$nama_file', '$member')";
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
            alert('Anda Berhasil Menambah Data');
            window.location='index.php?act=data_minat_bakat';
        </script>
        <?php
    }
 ?>