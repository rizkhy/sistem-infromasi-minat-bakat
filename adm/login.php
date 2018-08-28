<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Star Admin Free Bootstrap Admin Dashboard Template</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/iconfonts/puse-icons-feather/feather.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.addons.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="images/favicon.png" />
</head>

<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper auth-page">
      <div class="content-wrapper d-flex align-items-center auth auth-bg-1 theme-one">
        <div class="row w-100">
          <div class="col-lg-4 mx-auto">
            <div class="auto-form-wrapper">
              <form role="form" method="post">
                <div class="form-group">
                  <label class="label">Username</label>
                  <div class="input-group">
                    <input type="text" class="form-control" name="username">
                    <div class="input-group-append">
                      <span class="input-group-text">
                        <i class="mdi mdi-check-circle-outline"></i>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="label">Password</label>
                  <div class="input-group">
                    <input type="password" class="form-control" name="password">
                    <div class="input-group-append">
                      <span class="input-group-text">
                        <i class="mdi mdi-check-circle-outline"></i>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <input type="submit" name="login" class="btn btn-primary submit-btn btn-block" value="Login">
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>

<?php
        include "koneksi.php"; 
        if(isset($_POST['login'])){

        $username = $_POST['username'];
        $password = $_POST['password'];

        $query = mysqli_query($kon, "SELECT * FROM admin 
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
            $login =$kon->query("select * from admin where username='$username' and password='$password'");
            if ($login->fetch_assoc() > 0){
                $_SESSION['username'] = $username;

                $ambil_id =$kon->query("select username from admin where username='$username' and password='$password'");
                $hasil = $ambil_id->fetch_assoc();
                $_SESSION['username'] = $hasil['username'];


                header("location:index.php");
            }else{
                echo "<script>alert('Username atau Password salah')</script>";
                echo "<meta http-equiv='refresh' content='1 url=login.php'>";
            }
        }
    }
    ?>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <script src="vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/misc.js"></script>
  <script src="js/settings.js"></script>
  <script src="js/todolist.js"></script>
  <!-- endinject -->
</body>

</html>