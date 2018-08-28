				<center><h1>Daftar Minat Bakat</h1></center><br/><br/>
				<div class="gutter-7px">
				<?php
	include "koneksi.php";
	$res = mysqli_query($kon, "select * from mb join jenis_mb on mb.id_jenis_mb=jenis_mb.id_jenis_mb order by nama_mb") or die("Gagal query");
	while($r = mysqli_fetch_assoc($res)){ ?>
					<div class="col-sm-5">
						<article>
							<div class="entry-header">
								<div class="grid-cat"><a href="#"><?=$r['nama'];?></a></div>
								<h3 class="entry-title"><a href="#"><?=$r['nama_mb'];?></a></h3>
								<span><i class="fa fa-calendar"></i> <?=$r['tanggal'];?></i></span>
							</div>
							<div class="post-thumbnail-wrap"><a href="single.html"><img src="../adm/upload/<?=$r['foto'];?>" /></a></div>
							<div class="entry-content">
								<p><?=substr($r['ket'],0,100);?></p>
								<a href="?act=detail_minat_bakat&id_mb=<?php echo $r['id_mb'] ?>">Selengkapnya</a>
							</div>
						</article>
					</div>
				<?php } ?>
				</div>