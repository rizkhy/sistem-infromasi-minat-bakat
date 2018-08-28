<h4 class="card-title">Tambah Data Member</h4>
<form class="forms-sample" action="proses_tambah_member.php" method="POST">
  <div class="form-group">
    <label for="exampleInputName1">Nama Lengkap</label>
    <input type="text" name="nama_lengkap" class="form-control" id="exampleInputName1" placeholder="Nama">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">Username</label>
    <input type="text" name="username" class="form-control" id="exampleInputName1" placeholder="Username">
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
    <label for="exampleInputName1">Password</label>
    <input type="text" name="password" class="form-control" id="exampleInputName1" placeholder="Password" required="on">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">Alamat</label>
    <input type="text" name="alamat" class="form-control" id="exampleInputName1" placeholder="Alamat">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">E-Mail</label>
    <input type="text" name="email" class="form-control" id="exampleInputName1" placeholder="E-Mail">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">Tanggal Lahir</label>
    <input type="date" name="tgl_lahir" class="form-control" id="exampleInputName1" placeholder="Tanggal Lahir">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">Tempat Lahir</label>
    <input type="text" name="tmpt_lahir" class="form-control" id="exampleInputName1" placeholder="Tempat Lahir">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">No Telp</label>
    <input type="text" name="telp" class="form-control" id="exampleInputName1" placeholder="No Telp">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">Kategori</label>
    <select name="kategori" class="form-control">
      <option value = "">Pilih Kategori</option>
      <option value = "Mahasiswa">Mahasiswa</option>
      <option value = "Masyarakat">Masyarakat</option>
    </select>
  </div>
  <button type="submit" class="btn btn-success mr-2">Submit</button>
  <button class="btn btn-light">Cancel</button>
</form>