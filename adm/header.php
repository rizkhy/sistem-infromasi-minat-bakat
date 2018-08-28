<nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
  <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
    <a class="navbar-brand brand-logo" href="index.php">
      <img src="images/logo.svg" alt="logo" />
    </a>
  </div>
  <div class="navbar-menu-wrapper d-flex align-items-center">
    <ul class="navbar-nav navbar-nav-right">          
      <li class="nav-item dropdown d-none d-xl-inline-block">
        <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
          <span class="profile-text"><strong><?php echo $_SESSION['username'] ?></strong></span>
        </a>
        <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
         <!--  <a class="dropdown-item">
            Change Password
          </a> -->
          <a class="dropdown-item" href="logout.php">
            Sign Out
          </a>
        </div>
      </li>
    </ul>
  </div>
</nav>