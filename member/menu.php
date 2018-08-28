    <nav id="menu" class="navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
			<a class="navbar-brand" href="#">
				<div class="logo"><span>Minat Bakat</span></div>
			</a>
		</div>

	<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav">
				<li><a href="index.php">Home</a></li>
				<!-- <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Member</a>
				</li> -->
				<li><a href="?act=minat_bakat">Daftar Minat Bakat</a>
				</li>
				<li><a href="?act=about">About</a></li>
				<li><a href="?act=minat_bakat_per_member">Galeri <?php echo $_SESSION['username'] ?></a></li>
				<li><a href="?act=daftar_member">Daftar Member</a></li>
			</ul>
			<div class="col-sm-3 col-md-3 navbar-right">
			</div>
		</div><!-- /.navbar-collapse -->
	</nav>