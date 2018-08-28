<?php 

include "koneksi.php";
$query = mysqli_query($kon,"select mb.id_mb, mb.nama_mb, mb.ket, mb.tanggal, mb.foto, SUBSTRING(ket, 1, 20) as ket, jenis_mb.nama, member.nama_lengkap 
                            from mb join jenis_mb on mb.id_jenis_mb=jenis_mb.id_jenis_mb
                            join member on mb.id_member=member.id_member");
?>
<h4 class="card-title">Data Minat Bakat</h4>
  <a class="btn btn-success btn-sm" href="?act=tambah_minat_bakat">Tambah Data</a>
<div class="table-responsive">
  <table class="table table-striped">
    <thead>
      <tr>
        <th>#</th>
        <th>Nama Minat Bakat</th>
        <th>Minat Bakat</th>
        <th>Keterangan</th>
        <th>Tanggal</th>
        <th>Foto</th>
        <th>Member</th>
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
			<td><font face="trebuchet MS"><?php echo $data["nama_mb"];?></font></td>
			<td><font face="trebuchet MS"><?php echo $data["nama"];?></font></td>
      <td><font face="trebuchet MS"><?php echo $data["ket"];?>...</font></td>
      <td><font face="trebuchet MS"><?php echo $data["tanggal"];?></font></td>
      <td><font face="trebuchet MS"><?php echo $data["foto"];?></font></td>
      <td><font face="trebuchet MS"><?php echo $data["nama_lengkap"];?></font></td>
      <td><font face="trebuchet MS"><a class="btn btn-primary btn-sm" href="?act=edit_minat_bakat&id_mb=<?php echo $data['id_mb'] ?>">Ubah</a> <!-- index.php?id_user=<?php echo $data["id_user"]; ?>&aksi=edit -->
       <a class="btn btn-danger btn-sm" href="hapus_minat_bakat.php?id_mb=<?php echo $data['id_mb'] ?>">Hapus</a></font></td> <!-- proses.php?id_user=<?php echo $data["id_user"]; ?>&aksi=hapus -->
			</font>
		</tr>
                        <?php $no++; } ?>
    </tbody>
  </table>
</div>