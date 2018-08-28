      <?php
        include "koneksi.php";
        $query = mysqli_query($kon,"select * from admin where username = '$_SESSION[username]'");
        while($data = mysqli_fetch_array($query)){
      ?> 

      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item nav-profile">
            <div class="nav-link">
              <div class="user-wrapper">
                <div class="profile-image">
                  <img src="upload/<?php echo $data['foto'];?>">
                </div>
                <div class="text-wrapper">
                  <p class="profile-name"><?php echo $data['nama'];?></p>
                  <div>
                    <small class="designation text-muted"><?php echo $data['ha'];?></small>
                    <span class="status-indicator online"></span>
                  </div>
                </div>
              </div>
            </div>
          </li>

                  <?php
                    }
                  ?>
          <li class="nav-item">
            <a class="nav-link" href="index.php">
              <i class="menu-icon mdi mdi-television"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
   
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <i class="menu-icon mdi mdi-content-copy"></i>
              <span class="menu-title">Data</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="?act=data_minat_bakat">Data Minat Bakat</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="?act=data_member">Data Member</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="?act=komentar">
              <i class="menu-icon mdi mdi-backup-restore"></i>
              <span class="menu-title">Komentar</span>
            </a>
          </li>
        </ul>
      </nav>