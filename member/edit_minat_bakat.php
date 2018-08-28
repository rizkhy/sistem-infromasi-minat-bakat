<?php
include('koneksi.php');

$id_mb = $_GET['id_mb'];

$query = mysqli_query($kon, "select * from mb where id_mb='$id_mb'") or die(mysqli_error());

$data = mysqli_fetch_array($query);
?>
<h4 class="card-title">Edit Data Minat Bakat</h4>
<form class="forms-sample" action="proses_edit_minat_bakat.php" method="POST">
  <div class="form-group">
    <label for="exampleInputName1">ID Minat Bakat</label>
    <input type="text" class="form-control" name="id_mb" value="<?php echo $data['id_mb']; ?>" id="exampleInputName1">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">Nama Minat Bakat</label>
    <input type="text" class="form-control" name="nama_mb" value="<?php echo $data['nama_mb']; ?>" id="exampleInputName1">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">Jenis Minat Bakat</label>
    <select class="form-control" name="jenis">
           <?php 
              $sql  = "SELECT * FROM jenis_mb";
              $kelas  = mysqli_query($kon, $sql);
              $kelas2 = mysqli_fetch_assoc($kelas);
                    echo "<option value=$data[id_jenis_mb]>$kelas2[nama]</option>"; 
             ?>
           <?php
              $sql  = "SELECT * FROM jenis_mb";
              $mapel  = mysqli_query($kon, $sql);
              while($mapel2 = mysqli_fetch_assoc($mapel))
                { 
                    echo "<option value=$mapel2[id_jenis_mb]>$mapel2[nama]</option>"; 
                }
             ?>
    </select>
  </div>
  <!-- <div class="form-group">
    <label>File upload</label>
    <input type="file" name="img[]" class="file-upload-default">
    <div class="input-group col-xs-12">
      <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image">
      <span class="input-group-append">
        <button class="file-upload-browse btn btn-info" type="button">Upload</button>
      </span>
    </div>
  </div> -->
  <div class="form-group">
    <label for="exampleInputName1">Foto</label>
    <img src="../adm/upload/<?php echo $data['foto']; ?>">
    <input type="file" class="form-control" name="foto" value="<?php echo $data['foto']; ?>" id="exampleInputName1">
  </div>
  <div class="form-group">
    <input type="hidden" class="form-control" name="member" value="<?php echo $data['id_member']; ?>" id="exampleInputName1">
  </div>
  <div class="form-group">
    <label for="exampleTextarea1">Keterangan</label>
    <textarea class="form-control" name="ket" id="exampleTextarea1" rows="10"><?php echo $data['ket']; ?></textarea>
  </div>
  <button type="submit" class="btn btn-success mr-2">Submit</button>
  <button class="btn btn-light">Cancel</button>
  <a class="btn btn-danger btn-sm" href="hapus_minat_bakat.php?id_mb=<?php echo $data['id_mb'] ?>">Hapus</a></font>
</form>