<?php 

require_once '../koneksi/koneksiswa.php';

class DataKonseling {
	var $NamaPengirim;
	var $konseling;
}

class DataRiwayatKonseling {
	var $Id;
	var $Nip;
	var $Nis;
}

Function PanggilDataRiwayatConseling($sql){
	$hasil = mysqli_query(koneksiPhp(),$sql);
	if (!$hasil){
		echo "error inser detail conseling".mysqli_connect_error();
	}
	$DataRiwayatKonselingArray = array();
	while ($OneData =  mysqli_fetch_assoc($hasil)){
		$DataRiwayatKonselingObj = new DataRiwayatKonseling();
		$DataRiwayatKonselingObj->Id = $OneData['id_cons'];
		$DataRiwayatKonselingObj->Nip = $OneData['nip'];
		$DataRiwayatKonselingObj->NamaGuru = $OneData['nama_guru'];
		$DataRiwayatKonselingObj->Nis = $OneData['nis'];
		$DataRiwayatKonselingObj->Nama = $OneData['nama'];
		array_push($DataRiwayatKonselingArray, $DataRiwayatKonselingObj);
	}

	return $DataRiwayatKonselingArray;
}

Function PanggilDataDetailConseling($nip,$nis){
	$dataKonseling = array();
	$sql = "select konseling,pengirim,nip,nis from detailcons where nip = '$nip' and nis = $nis order by waktu desc";
	$hasil = mysqli_query(koneksiPhp(),$sql);
	if (!$hasil) {
		echo "error inser detail conseling".mysqli_connect_error();
	}
	while ($OneData = mysqli_fetch_assoc($hasil)){
		$DataKonselingObj = new DataKonseling;
		$DataKonselingObj->konseling = $OneData['konseling'];
		if ($OneData['pengirim'] == $OneData['nip']){
			$DataKonselingObj->NamaPengirim = CheckDataPengirimGuru($OneData['pengirim']);
		}else if ($OneData['pengirim'] == $OneData['nis']) {
			$DataKonselingObj->NamaPengirim = CheckDataPengirimSiswa($OneData['pengirim']);
		}
		
		array_push($dataKonseling, $DataKonselingObj);
	}
	return $dataKonseling;
}

Function CheckDataPengirimGuru($id){
	$nama = "";

	$sqlGuru = "select * from guru where nip = '$id'";
    $dataGuru = bacaGuru($sqlGuru);
    foreach ($dataGuru as $baris) {
        $nama = $baris['nama_guru'];
    } 
       return $nama;
    }

    Function CheckDataPengirimSiswa($id){
    $nama = "";
    $sqlSiswa = "select * from siswa where nis = '$id'";
    $dataSiswa = bacaSiswa($sqlSiswa);
    foreach ($dataSiswa as $baris) {
            $nama = $baris['nama'];
        }
        return $nama;
    }

?>