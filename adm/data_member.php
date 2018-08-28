<?php 

include "koneksi.php";
$query = mysqli_query($kon,"select *, jenis_mb.nama
          from member 
          join jenis_mb on jenis_mb.id_jenis_mb=member.id_jenis_mb");


?>
<h4 class="card-title">Data Member</h4>
  <a class="btn btn-success btn-sm" href="?act=tambah_member">Tambah Data</a>
<p class="card-description">
  Data Member Minat Bakat
</p>
<div class="table-responsive">
  <table class="table table-striped">
    <thead>
      <tr>
        <th>#</th>
        <th>Nama Lengkap</th>
        <th>Minat Bakat Yang Diambil</th>
        <th>Alamat</th>
        <th>Tanggal Lahir</th>
        <th>Tempat Lahir</th>
        <th>E-Mail</th>
        <th>Aksi</th>
      </tr>
    </thead>
    <tbody>
                        <?php
                        $no = 1;
                        while($data = mysqli_fetch_array($query)){
                        ?>
		<tr>
			<td><font face="trebuchet MS"><?php echo $no ?></font></td>
			<!-- <td><a href="<?php echo $data["foto"];?>"><img src="../images/faces/<?php echo $data["foto"];?>" width="100" height="80"></a></td> -->
			<td><font face="trebuchet MS"><?php echo $data["nama_lengkap"];?></font></td>
			<td><font face="trebuchet MS"><?php echo $data["nama"];?></font></td>
      <td><font face="trebuchet MS"><?php echo $data["alamat"];?></font></td>
      <td><font face="trebuchet MS"><?php echo $data["tgl_lahir"];?></font></td>
      <td><font face="trebuchet MS"><?php echo $data["tmpt_lahir"];?></font></td>
      <td><font face="trebuchet MS"><?php echo $data["email"];?></font></td>
      <td><font face="trebuchet MS"><a class="btn btn-primary btn-sm" href="?act=edit_member&id_member=<?php echo $data['id_member'] ?>">Ubah</a> <!-- index.php?id_user=<?php echo $data["id_user"]; ?>&aksi=edit -->
       <a class="btn btn-danger btn-sm" href="hapus_member.php?id_member=<?php echo $data['id_member'] ?>">Hapus</a></font></td> <!-- proses.php?id_user=<?php echo $data["id_user"]; ?>&aksi=hapus -->
			</font>
		</tr>
                        <?php $no++; } ?>
    </tbody>
  </table>
</div>