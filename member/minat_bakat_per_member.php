				<center><h1>Daftar Minat Bakat</h1></center><br/><br/>
					<a class="btn btn-success btn-sm" href="?act=tambah_minat_bakat">Tambah Minat Bakat</a>
				<div class="gutter-7px">
				<?php
	include "koneksi.php";
              $sql  = "SELECT * FROM member where username = '$_SESSION[username]'";
              $mapel  = mysqli_query($kon, $sql);
              while($mapel2 = mysqli_fetch_assoc($mapel)){
              	$id_member = $mapel2['id_member'];
 

	$res = mysqli_query($kon, "select * from mb join jenis_mb on mb.id_jenis_mb=jenis_mb.id_jenis_mb where mb.id_member = $id_member order by nama_mb") or die("Gagal query");
	while($r = mysqli_fetch_assoc($res)){ ?>
					<div class="col-sm-5">
						<article>
							<div class="entry-header">
								<div class="grid-cat"><a href="#"><?=$r['nama'];?></a></div>
								<h3 class="entry-title"><a href="#"><?=$r['nama_mb'];?></a></h3>
								
								<span><i class="fa fa-calendar"></i> <?=$r['tanggal'];?> </i></span>
								<br/>
							</div>
							<div class="post-thumbnail-wrap"><a href="single.html"><img src="../adm/upload/<?=$r['foto'];?>" /></a></div>
							<div class="entry-content">
								<p><?=substr($r['ket'],0,100);?></p>
								<a href="?act=detail_minat_bakat&id_mb=<?php echo $r['id_mb'] ?>">Selengkapnya</a>
								||
								<a href="?act=edit_minat_bakat&id_mb=<?php echo $r['id_mb'] ?>" style="color:red">Edit</a>
							</div>
						</article>
					</div>
				<?php } }

				 ?>
				</div>