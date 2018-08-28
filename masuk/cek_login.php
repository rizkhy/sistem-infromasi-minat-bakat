<?php
include "koneksi.php";
$username = $_POST['username'];
$password = $_POST['password'];

session_start();
$login = mysqli_query($kon, "select * from member where username='$username' and password='$password'");
if (mysqli_num_rows($login) > 0){
$ambil = mysqli_fetch_array($login);
$_SESSION['username'] = $ambil['username'];
if (empty($username)){
            echo "<script>alert('Username belum diisi')</script>";
            echo "<meta http-equiv='refresh' content='1 url=index.php'>";
        }
else if (empty($password)){
            echo "<script>alert('Password belum diisi')</script>";
            echo "<meta http-equiv='refresh' content='1 url=index.php'>";
        }
else{
			echo "<script>alert('Username atau Password salah')</script>";
			echo "<meta http-equiv='refresh' content='0 url=index.php'>";
			}
}
?>