<!DOCTYPE html>
<html lang="en">
<head>
<title>Login Minat Bakat</title>
<link href="css/font-awesome.css" rel="stylesheet"><!-- Font-awesome-CSS --> 
<link href="css/style.css" rel='stylesheet' type='text/css'/><!-- style.css --> 
<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Basic Login Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<script src="js/jquery.min.js"></script>
		<script>$(document).ready(function(c) {
		$('.alert-close').on('click', function(c){
			$('.main-agile').fadeOut('slow', function(c){
				$('.main-agile').remove();
			});
		});	  
	});
	</script>
</head>
<body>
	<h1>Login Minat Bakat Yogyakarta</h1>
	<div class="main-agile">
		<div class="content-wthree">
		<div class="circle-w3layouts"></div>
			<h2>Masuk</h2>
			<form role="form" method="post">
								<div class="inputs-w3ls">
									<i class="fa fa-user" aria-hidden="true"></i>
									<input type="text" name="username" placeholder="Nama Pengguna" required=""/>
								</div>
								<div class="inputs-w3ls">
									<i class="fa fa-key" aria-hidden="true"></i>
									<input type="password" name="password" placeholder="Kata Sandi" required=""/>
								</div>
									<input type="submit" name="login" value="MASUK"> 
									<div class="wthree-text"> 
										<ul> 
											<li> <a href="../daftar/daftar.php">Daftar</a> </li>
										</ul>
									</div>  
								</form>
		</div>
	</div>
	<div class="footer-w3l">
		<p class="agileinfo"> &copy; 2018. Minat Bakat Yogyakarta. Allright Reserved.</p>
	</div>
	<?php
        include "koneksi.php"; 
        if(isset($_POST['login'])){

        $username = $_POST['username'];
        $password = $_POST['password'];

        $query = mysqli_query($kon, "SELECT * FROM member 
                                     WHERE username='$username' 
                                     AND password='$password'");
        $row = mysqli_fetch_assoc($query);
        $_SESSION['username']=$row['username'];
        $_SESSION['password'] = $row['password'];
        
        if (empty($username)){
            echo "<script>alert('Username belum diisi')</script>";
            echo "<meta http-equiv='refresh' content='1 url=index.php'>";
        }else if (empty($password)){
            echo "<script>alert('Password belum diisi')</script>";
            echo "<meta http-equiv='refresh' content='1 url=index.php'>";
        }else{
            session_start();
            $login =$kon->query("select * from member where username='$username' and password='$password'");
            if ($login->fetch_assoc() > 0){
                $_SESSION['username'] = $username;

                $ambil_id =$kon->query("select username from member where username='$username' and password='$password'");
                $hasil = $ambil_id->fetch_assoc();
                $_SESSION['username'] = $hasil['username'];


                header("location:../member");
            }else{
                echo "<script>alert('Username atau Password salah')</script>";
                echo "<meta http-equiv='refresh' content='1 url=index.php'>";
            }
        }
    }
    ?>
</body>
</html>