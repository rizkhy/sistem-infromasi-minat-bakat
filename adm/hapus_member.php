<?php 
include('koneksi.php');

$id_member = $_GET['id_member'];

$query = mysqli_query($kon, "delete member.*, mb.* from member, mb where member.id_member='$id_member' and  mb.id_member='$id_member'") or die(mysqli_error());

if ($query) {
	?>
	<script language="JavaScript">
		alert('Anda Berhasil Menghapus Data');
	 	window.location='index.php?act=data_member';
	</script>
	<?php }
?>