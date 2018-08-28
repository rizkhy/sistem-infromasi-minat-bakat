<?php 
include('koneksi.php');

$id = $_GET['id'];

$query = mysqli_query($kon, "delete from komentar where id='$id'") or die(mysqli_error());

if ($query) {
	?>
	<script language="JavaScript">
		alert('Anda Berhasil Menghapus Data');
	 	window.location='index.php?act=komentar';
	</script>
	<?php }
?>