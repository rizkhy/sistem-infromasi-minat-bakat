<h4 class="card-title">Tambah Data Minat Bakat</h4>
<form class="forms-sample" enctype="multipart/form-data"  action="proses_tambah_minat_bakat.php" method="POST">
  <div class="form-group">
    <label for="exampleInputName1">Nama Minat Bakat</label>
    <input type="text" name="nama_mb" class="form-control" id="exampleInputName1" placeholder="Name">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">Jenis Minat Bakat</label>
    <select class="form-control" name="jenis">
        <option value="">-Pilih Jenis Minat Bakat-</option>
           <?php
              include 'koneksi.php';
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
    <input type="file" name="foto" class="form-control" id="exampleInputName1" placeholder="Video">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">Member</label>
    <select class="form-control" name="member">
        <option value="">-Pilih Member-</option>
           <?php
              include 'koneksi.php';
              $sql  = "SELECT * FROM member";
              $mapel  = mysqli_query($kon, $sql);
              while($mapel2 = mysqli_fetch_assoc($mapel))
                { 
                    echo "<option value=$mapel2[id_member]>$mapel2[nama_lengkap]</option>"; 
                }
             ?>
    </select>
  </div>
  <div class="form-group">
    <label for="exampleTextarea1">Keterangan</label>
    <textarea class="form-control" name="ket" id="exampleTextarea1" rows="2"></textarea>
  </div>
  <button type="submit" class="btn btn-success mr-2">Submit</button>
  <button class="btn btn-light">Cancel</button>
</form>