<?php 

include "koneksi.php";
$query = mysqli_query($kon,"SELECT * FROM member");


?>
<h4 class="card-title">Daftar Member</h4>
<div class="table-responsive">
  <table class="table table-striped">
    <thead>
      <tr>
        <th>#</th>
        <th>Nama Lengkap</th>
        <th>E-mail</th>
        <th>Aksi</th>
      </tr>
    </thead>
    <tbody>
                        <?php
                        $no = 1;
                        while($data = mysqli_fetch_assoc($query)){
                        ?>
		<tr>
			<td><font face="trebuchet MS"><?php echo $no ?></font></td>
			<!-- <td><a href="<?php echo $data["foto"];?>"><img src="../images/faces/<?php echo $data["foto"];?>" width="100" height="80"></a></td> -->
			<td><font face="trebuchet MS"><?php echo $data["nama_lengkap"];?></font></td>
      <td><font face="trebuchet MS"><?php echo $data["email"];?></font></td>
      <td><font face="trebuchet MS"><a href="?act=lihat_member&&id_member=<?php echo $data['id_member'] ?>"> Lihat </a></font></td>
			</font>
		</tr>
                        <?php $no++; } ?>
    </tbody>
  </table>
</div>