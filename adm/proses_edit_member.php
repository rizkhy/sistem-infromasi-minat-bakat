<?php

    $koneksi = new mysqli ("localhost", "root", "", "minat");

    $id_member = $_POST ['id_member'];
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
        $sql = "update member set 
                    nama_lengkap='$nama_lengkap', 
                    username='$username', 
                    password='$password', 
                    alamat='$alamat', 
                    tgl_lahir='$tgl_lahir', 
                    tmpt_lahir='$tmpt_lahir', 
                    no_telp='$telp', 
                    kategori='$kategori', 
                    id_jenis_mb='$jenis', 
                    email='$email' 
                where id_member='$id_member'";
                
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
            window.location='index.php?act=data_member';
        </script>
        <?php
    }
    ?>