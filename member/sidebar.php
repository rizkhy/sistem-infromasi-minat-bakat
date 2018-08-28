				<?php 
				include 'koneksi.php';
				?>
				<div class="widget wid-vid">
					<div class="heading">
						<h4>Populer</h4>
					</div>
					<div class="content">
						<div class="tab-content">
							<?php 
								$sql  = "select count(mb.id_jenis_mb) as popular, jenis_mb.nama from mb, jenis_mb WHERE mb.id_jenis_mb=jenis_mb.id_jenis_mb group by mb.id_jenis_mb order by count(mb.id_jenis_mb) desc limit 3";
								$popular  = mysqli_query($kon, $sql);
				              	while($data = mysqli_fetch_assoc($popular)){
				            ?>
							<div id="most" class="tab-pane fade in active">
								<div class="post wrap-vid">
									<div class="zoom-container">
										<div class="zoom-caption">
											<a href="single.html"></a>
										</div>
									</div>
					              	<div class="wrapper">
										<h5 class="vid-name" style="color: red;"><?php echo $data['nama'] ?></h5>
										<div class="info">
											<h6>Jumlah Peminat &nbsp;&nbsp;<?php echo $data['popular'] ?></h6>
											<!-- <span><i class="fa fa-calendar"></i>25/3/2016</span> 
											<span><i class="fa fa-heart"></i>1,200</span> -->
										</div>
									</div>
								</div>
							</div>
							<?php	
					            }
							?>
						</div>
					</div>
				</div>
				<!---- Start Widget ---->
				<!---- Start Widget ---->
				<!---- Start Widget ---->
				<div class="widget wid-tags">
					<div class="heading"><h4>Kategori</h4></div>
					<div class="content">
					<?php
						 $query = mysqli_query($kon, "SELECT * FROM jenis_mb") or die("Gagal query");
						 while($r = mysqli_fetch_assoc($query)){ ?>
						<a href="?act=kategori&id_jenis_mb=<?=$r['id_jenis_mb'];?>"><?=$r['nama'];?></a>
					<?php } ?>
					</div>
				</div>
				<!---- Start Widget ---->
				<div class="widget wid-calendar">
					<div class="heading"><h4>Calendar</h4></div>
					<div class="content">
						<center><form action="" role="form">        
							<div class="">
								<div class="input-group date form_date" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">                </div>
								<input type="hidden" id="dtp_input2" value="" /><br/>
							</div>
						</form></center>
					</div>
				</div>
				<!---- Start Widget ---->
			</div>