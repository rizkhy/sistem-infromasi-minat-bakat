<?php

    $koneksi = new mysqli ("localhost", "root", "", "minat");
    $id_mb = $_POST ['id_mb'];
    $nama_mb = $_POST ['nama_mb'];
    $jenis = $_POST ['jenis'];
    $tanggal =  $tanggal = date("l, d-m-Y h:i:sa");
    $foto = $_POST ['foto'];
    $ket = $_POST ['ket'];
    $member = $_POST ['member'];
    

        include "koneksi.php";
        $sql = "update mb set nama_mb='$nama_mb', id_jenis_mb='$jenis', tanggal='$tanggal', foto='$foto', ket='$ket', id_member='$member' where id_mb=$id_mb";
        // echo $sql;
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
            alert('Anda Berhasil Mengubah Data');
            window.location='index.php?act=minat_bakat_per_member';
        </script>
        <?php
    }
    ?>