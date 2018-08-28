<?php

    $koneksi = new mysqli ("localhost", "root", "", "minat");

    $nama_lengkap = $_POST ['nama_lengkap'];
    $username = $_POST ['username'];
    $password = $_POST ['password'];
    $alamat = $_POST ['alamat'];
    $tgl_lahir = $_POST ['tgl_lahir'];
    $tmpt_lahir = $_POST ['tmpt_lahir'];
    $telp = $_POST ['telp'];
    $kategori = $_POST ['kategori'];
    $jenis = $_POST ['jenis'];
    $email = $_POST ['email'];
    

        include "koneksi.php";
        $sql = "insert into member (nama_lengkap, username, password, alamat, tgl_lahir, tmpt_lahir, no_telp, kategori, id_jenis_mb, email) 
                values
                ('$nama_lengkap', '$username', '$password', '$alamat', '$tgl_lahir', '$tmpt_lahir', '$telp', '$kategori', 0, '$email')";
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
            window.location='index.php?act=data_member';
        </script>
        <?php
    }
    ?>