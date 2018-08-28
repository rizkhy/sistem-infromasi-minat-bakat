<html>
<head>
<title>Form Komentar</title>
<h3><center>Tuliskan Komentar</center></h3>
<hr>
<body>
<form action="proses.php" method="post">
Nama   :<br> <input type="text" name="nama"><br>
E-Mail :<br> <input type="text" name="email"><br>
Tanggal :<br> <input type="date" name="tanggal" readonly=""><br>
Isi    : <br>
<textarea name="komen" cols="45" rows="10"> </textarea><br>
<input type="submit" value="Kirim">
<input type="reset" value="Batal">
</body>
</html>