<?php
include('koneksi.php');

$id_member = $_GET['id_member'];

$query = mysqli_query($kon, "select * from member where id_member='$id_member'") or die(mysqli_error());

$data = mysqli_fetch_array($query);
?>
<h4 class="card-title">Tambah Data Member</h4>
<form class="forms-sample" action="proses_edit_member.php" method="POST">
  <div class="form-group">
    <label for="exampleInputName1">ID Member</label>
    <input type="text" class="form-control" name="id_member" value="<?php echo $data['id_member']; ?>" id="exampleInputName1" placeholder="Name">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">Nama Lengkap</label>
    <input type="text" name="nama_lengkap" class="form-control" value="<?php echo $data['nama_lengkap']; ?>" id="exampleInputName1" placeholder="Nama">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">Username</label>
    <input type="text" name="username" class="form-control" value="<?php echo $data['username']; ?>" id="exampleInputName1" placeholder="Username">
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
    <input type="text" name="password" class="form-control" value="<?php echo $data['password']; ?>" id="exampleInputName1" placeholder="Password">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">Alamat</label>
    <input type="text" name="alamat" class="form-control" value="<?php echo $data['alamat']; ?>" id="exampleInputName1" placeholder="Alamat">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">Tanggal Lahir</label>
    <input type="text" name="tgl_lahir" class="form-control" value="<?php echo $data['tgl_lahir']; ?>" id="exampleInputName1" placeholder="Tanggal Lahir">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">Tempat Lahir</label>
    <input type="text" name="tmpt_lahir" class="form-control" value="<?php echo $data['tmpt_lahir']; ?>" id="exampleInputName1" placeholder="Tempat Lahir">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">No Telp</label>
    <input type="text" name="telp" class="form-control" value="<?php echo $data['no_telp']; ?>" id="exampleInputName1" placeholder="No Telp">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">E-Mail</label>
    <input type="text" name="email" class="form-control" value="<?php echo $data['email']; ?>" id="exampleInputName1" placeholder="Foto">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">Kategori</label>
    <input type="text" name="kategori" class="form-control" value="<?php echo $data['kategori']; ?>" id="exampleInputName1" placeholder="Kategori">
  </div>
  <div class="form-group">
    <label for="exampleInputName1">Jenis Minat Bakat</label>
    <input type="text" name="jenis" class="form-control" value="<?php echo $data['id_jenis_mb']; ?>" id="exampleInputName1" placeholder="Jenis">
  </div>
  <button type="submit" class="btn btn-success mr-2">Submit</button>
  <button class="btn btn-light">Cancel</button>
</form>