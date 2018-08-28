<br><br>
<div class="row">
<div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
    <div class="card card-statistics">
      <div class="card-body">
        <div class="clearfix">
          <div class="float-left">
            <i class="mdi mdi-cube text-danger icon-lg"></i>
          </div>
          <div class="float-right">
            <p class="mb-0 text-right">Member</p>
            <div class="fluid-container">
              <h3 class="font-weight-medium text-right mb-0">
              
                <?php
                include "koneksi.php";

                $query = "SELECT *, COUNT(id_member) AS total FROM `member`";
                $sql = mysqli_query($kon, $query);
                while($data = mysqli_fetch_assoc($sql)){ 
                  echo $data['total'];
                }
                ?>
              </h3>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
    <div class="card card-statistics">
      <div class="card-body">
        <div class="clearfix">
          <div class="float-left">
            <i class="mdi mdi-receipt text-warning icon-lg"></i>
          </div>
          <div class="float-right">
            <p class="mb-0 text-right">Minat Bakat</p>
            <div class="fluid-container">
              <h3 class="font-weight-medium text-right mb-0">
                <?php
                include "koneksi.php";

                $query1 = "SELECT *, COUNT(id_mb) AS total FROM `mb`";
                $sql1 = mysqli_query($kon, $query1);
                while($data1 = mysqli_fetch_assoc($sql1)){ 
                  echo $data1['total'];
                }
                ?>
              </h3>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
    <div class="card card-statistics">
      <div class="card-body">
        <div class="clearfix">
          <div class="float-left">
            <i class="mdi mdi-account-location text-info icon-lg"></i>
          </div>
          <div class="float-right">
            <p class="mb-0 text-right">Komentar</p>
            <div class="fluid-container">
              <h3 class="font-weight-medium text-right mb-0">
                <?php
                include "koneksi.php";

                $query = "SELECT *, COUNT(id) AS total FROM `komentar`";
                $sql = mysqli_query($kon, $query);
                while($data = mysqli_fetch_assoc($sql)){ 
                  echo $data['total'];
                }
                ?>
              </h3>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<hr>
<div class="row">
  <div class="col-lg-12 grid-margin">
              <div class="card">
<br><br>
  <h2><center> Selamat Datang, Anda Login Sebagai Admin </center></h2>
<br><br><br>
</div></div></div>