<?php 
include('koneksi.php');

$id_mb = $_GET['id_mb'];

$query = mysqli_query($kon, "delete from mb where id_mb='$id_mb'") or die(mysqli_error());

if ($query) {
	?>
	<script language="JavaScript">
		alert('Anda Berhasil Menghapus Data');
	 	window.location='index.php?act=minat_bakat_per_member';
	</script>
	<?php }
?>