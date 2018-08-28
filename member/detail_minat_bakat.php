<?php
include "koneksi.php";
// $username = $_SESSION['username'];
$id_mb = $_GET['id_mb'];
$sql="select * from mb where id_mb = $id_mb";
$result=mysqli_query($kon,$sql) or die('Error');
 while($data = mysqli_fetch_assoc($result)){ 
?>
<div id="page-content" class="single-page container">
	<div class="gutter-7px">
		<div id="main-content" class="col-md-8">
			<article class="single-post">
				<div class="entry-header">
					<h1 class="entry-title"><?php echo $data['nama_mb']; ?></h1>
					<span><i class="fa fa-calendar"></i> <?=$data['tanggal'];?> / <i class="fa fa-comment-o"></i> 
						<?php 
							$sql1="SELECT COUNT(id) as id FROM komentar WHERE id_mb = $id_mb";
							$query=mysqli_query($kon,$sql1) or die('Error'); 
							$data1 = mysqli_fetch_assoc($query);
							echo $data1['id']; 
						?>
					</span>
				</div>
				<div class="post-thumbnail-wrap"><img src="../adm/upload/<?=$data['foto'];?>" /></div>
				<!-- <div class="l-share" style="padding: 20px 0;">
					<ul class="list-inline center">
						<li><a href="#" class="btn btn-facebook"><i class="fa fa-facebook"></i> Share</a></li>
						<li><a href="#" class="btn btn-twitter"><i class="fa fa-twitter"></i> Tweet</a></li>
						<li><a href="#" class="btn btn-pinterest"><i class="fa fa-pinterest"></i> Tweet</a></li>
						<li><a href="#" class="btn btn-google"><i class="fa fa-google-plus-square"></i> Google+</a></li>
						<li><a href="#" class="btn btn-mail"><i class="fa fa-envelope-o"></i> E-mail</a></li>
					</ul>
				</div> -->
				<hr class="line">
				<div class="entry-content">
					<p><?php echo $data['ket']; ?></p>
					
<?php } ?>

					<!-- <div class="vid-tags">
						<a href="#">Animal</a>
						<a href="#">Aenean</a>
						<a href="#">Feugiat</a>
						<a href="#">Risus</a>
						<a href="#">Magna</a>
					</div> -->
					<div class="line"></div>
					<div>
						<?php include "tampil.php"; ?>
					</div>
					<div class="comment">
						<h3>Tinggalkan Komentar</h3>
						<form name="form1" method="post" action="proses.php">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
									<input type="hidden" class="form-control input-lg" name="nama" id="nama" value="<?php echo "".$username; ?>" required="required" readonly />
									</div>
								</div>
							</div>
							<!-- <div class="row">
								<div class="col-md-6">
									<div class="form-group">
									<input type="hidden" class="form-control input-lg" name="email" id="email" placeholder="Enter email" required="required" />
									</div>
								</div>
							</div> -->
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
									<input type="hidden" class="form-control input-lg" name="tanggal" id="tanggal" required="required" />
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
									<input type="hidden" class="form-control input-lg" name="id_mb" id="id_mb" value="<?php echo "".$id_mb; ?>" required="required" readonly/>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<textarea name="komen" id="komen" class="form-control" rows="4" cols="25" required="required" placeholder="Message"></textarea>
									</div>						
									<button type="submit" class="btn btn-4 btn-block" name="btnBooking" id="btnBbooking">Send</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</article>
		</div>
	</div>
</div>