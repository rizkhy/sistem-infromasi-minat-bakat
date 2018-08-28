-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 20 Agu 2018 pada 22.16
-- Versi Server: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `minat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id_admin` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(8) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `ha` enum('Super Admin','Manager') NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`, `foto`, `ha`) VALUES
(1, 'admin', '1234', 'Admin Pusat', 'IMG_7608.jpg', 'Super Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE IF NOT EXISTS `akun` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `hka` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`username`, `password`, `hka`) VALUES
('kiki', 'kiki', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment_member`
--

CREATE TABLE IF NOT EXISTS `comment_member` (
  `id_comment_member` int(11) NOT NULL,
  `pengirim` int(11) NOT NULL,
  `penerima` int(11) NOT NULL,
  `komentar` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment_tamu`
--

CREATE TABLE IF NOT EXISTS `comment_tamu` (
  `id_comment_tamu` int(11) NOT NULL,
  `pengirim` int(11) NOT NULL,
  `penerima` int(11) NOT NULL,
  `komentar` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE IF NOT EXISTS `foto` (
  `id_foto` int(11) NOT NULL,
  `id_mb` int(11) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`id_foto`, `id_mb`, `ket`) VALUES
(1, 1, 'Sejak kecil saya termasuk golongan cewek tomboy yang tidak suka masak. Di saat anak-anak cewek yang lain pada main masak-masakan, saya malah sebaliknya, main sepeda keliling komplek bersama anak-anak cowok. Hal ini terus saya alami sampai saya mau masuk kuliah.\r\n\r\nPada masa kuliah, saya tinggal di rumah sendiri dan di sediakan pembantu oleh orang tua saya, sehingga saya mempunyai alasan yang tepat untuk tidak perlu masak. Makanan saya sehari-hari sudah disiapkan oleh pembantu saya. Namun, ada rasa penasaran juga untuk ingin belajar. Pelan-pelan saya mulai membuat mie rebus sendiri tanpa bantuan si mbak. Hasilnya siy okay meskipun mienya selalu blenyek. Mau masak dimanapun atau pakai kompor baguspun, akan tampak sama saja. Sampai saya sudah punya dua anakpun, hasilnya tetap selalu blenyek.\r\n\r\nSaya sampai di ejek-ejek oleh teman-teman saya karena apapun yang saya masak pasti hasilnya blenyek atau rasanya aneh. Sejak saat itu, saya berhenti belajar masak. Semua saya serahkan ke pembantu saya. Awalnya dia memang tidak bisa masak. Saya yang mengajarinya masak, berbekal dari buku resep dan feeling takaran bumbu-bumbu. Sampai akhirnya dia jadi jago membuat masakan Indonesia, Chinese, Italian, Japanese dan Korean. Kata suami saya, “Lucu ya, kamu gak bisa masak tapi bisa mengajarkan orang jadi jago masak?”\r\n\r\nLalu tibalah saat yang paling saya takutkan, si mbak yang jago masak dan sudah bekerja selama sepuluh tahun sama saya, akhirnya minta ijin untuk kembali pulang ke kampung. Kemudian saya panik memikirkan bagaimana masakan untuk sehari-hari. Karena saya termasuk orang yang tidak biasa makan menggunakan msg.\r\n\r\nRasanya campur aduk antara sok cuek tapi deg-degan. Saya sampai membujuk dia untuk tetap tinggal dengan menawarkan naik gaji 2 kali lipat. Tetapi si mbak memang harus pulang karena orang tuanya sakit. Akhirnya saya harus merelakannya.\r\n\r\nSetelah itu, saya beberapa kali dapat pembantu masa kini yang kebanyakan tidak ada yang bisa atau tidak mau masak tepatnya. Di saat yang bersamaan pula, suami saya harus menjalankan program diet untuk livernya. Dengan terpaksa, akhirnya saya harus mulai masuk dapur. Saya memulai browsing di internet, mencari menu mudah dan sehat untuk program diet suami, anak-anak saya yang alergi dan tentunya buat si mbak baru yang tidak bisa masak juga. Untungnya saya bisa makan apa saja.\r\n\r\nDalam mencari menu termasuk mudah, tetapi dalam mencari makanan yang bisa di makan sesuai dengan kondisi seisi rumahlah yang bikin semrawut. Apalagi kalau semuanya harus di masak sendiri. Anyway, a mom’s gotta do, what a mom’s gotta do, right?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_mb`
--

CREATE TABLE IF NOT EXISTS `jenis_mb` (
`id_jenis_mb` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `jenis_mb`
--

INSERT INTO `jenis_mb` (`id_jenis_mb`, `nama`) VALUES
(1, 'Seni'),
(2, 'Makanan'),
(3, 'Otomotif'),
(4, 'Olahraga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jumlah_mb`
--

CREATE TABLE IF NOT EXISTS `jumlah_mb` (
`id_jumlah_mb` int(11) NOT NULL,
  `id_mb` int(11) NOT NULL,
  `jumlah_mb` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `jumlah_mb`
--

INSERT INTO `jumlah_mb` (`id_jumlah_mb`, `id_mb`, `jumlah_mb`) VALUES
(1, 3, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
`id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `id_mb` int(11) NOT NULL,
  `komen` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id`, `nama`, `tanggal`, `id_mb`, `komen`) VALUES
(59, 'kiki', '11-08-2018', 12, 'nnn'),
(60, 'kiki', '11-08-2018', 12, 'mm');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mb`
--

CREATE TABLE IF NOT EXISTS `mb` (
`id_mb` int(11) NOT NULL,
  `nama_mb` varchar(30) NOT NULL,
  `id_jenis_mb` int(11) NOT NULL,
  `ket` text NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `id_member` int(5) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data untuk tabel `mb`
--

INSERT INTO `mb` (`id_mb`, `nama_mb`, `id_jenis_mb`, `ket`, `tanggal`, `foto`, `id_member`) VALUES
(1, 'motor clasic custom', 1, 'cara mengkustom motor adalah dengan menggunakan cat yang baik kualitasnya, sehingga motor ketika di kostom akan terlihat lebih bagus.\r\nlalu custom dan dadanilah motormu sesuai dengan seleramu sendiri sehingga kamu akan nyaman ketika mengendarai motor kastoman kamu.\r\ntambah lah asesoris menarik di motor kamu sehingga motor kamu terlihat lebih bagus dan keren', '2018-08-15 13:52:00', '12.png', 0),
(3, 'Desain Vector', 1, 'Menggambar adalah bakat saya, saya suka sekali menggambar, semenjak saya masuk di bangku perkuliahan jurusan komputer di kampus Stmik Akakom Yogyakarta, saya mulai belajar mendesain, mulai dari desin spanduk, banner sampai ke desain Vector, desain vector ini buatnya lumayan sulit sih, tapi kalo sudah biasa pasti tak akan sulit, saya menggunakan Aplikasi CorelDraw X7 sebagai aplikasi pembuat desain, tahapannya adalah dengan memasukkan dahulu foto atau gambar yang mau di vector ke dalam CorelDraw dan setelah itu di ikuti garis seluruh tubuh, sebaiknnya atu persatu, contohnya memvector wajah terlebih dahulu, wajah terbagi atas rambut hidung, mata, telinga bibir dan lain-lain, terserah mau mulaidari mana dulu untuk memvector, untuk info lebih lanjut silahkan hubungi wa saya yang ada di daftar member, okey.. makasih semuanya..', '0000-00-00 00:00:00', 'agung.jpg', 0),
(9, 'Menggambar', 3, 'mm', 'Monday, 20-08-2018 06:58:24pm', 'icon.png', 0),
(10, 'tes', 2, 'ddd', 'Monday, 20-08-2018 07:26:55pm', 'icon.png', 2),
(11, 'Menggambar', 3, 'zzzz', 'Monday, 20-08-2018 07:31:46pm', 'charging.jpg', 2),
(12, 'Menggambar', 1, 'ff', 'Monday, 20-08-2018 09:25:44pm', 'charging.jpg', 0),
(13, 'oioi', 2, 'qq', 'Monday, 20-08-2018 09:28:28pm', 'loading.gif', 2),
(14, 'Menggambar', 1, 'tes bima', 'Monday, 20-08-2018 10:04:50pm', 'icon.png', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE IF NOT EXISTS `member` (
`id_member` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(8) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmpt_lahir` varchar(20) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id_jenis_mb` int(5) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nama_lengkap`, `username`, `password`, `alamat`, `tgl_lahir`, `tmpt_lahir`, `no_telp`, `foto`, `kategori`, `email`, `id_jenis_mb`) VALUES
(1, 'Bima Wibowo', 'bimawb', '12345', 'blok o yogyakarta', '1995-12-18', 'medan', '082223078747', 'none.jpg', 'masyarakat', '', 1),
(2, 'rizky kurniawan', 'kiki', '123', 'prangtritis', '1996-09-27', 'Yogyakarta', '089878684568', 'none.jpg', 'Mahasiswa', '', 2),
(3, 'Elang Putra Gumilang', 'elang', 'okeaja', 'karangjambe no 18', '1998-05-07', 'Yogyakarta', '089876896578', 'none.jpg', 'Mahasiswa', '', 3),
(4, 'rizky ', 'admin', '123', 'kuwon', '2018-08-03', 'bandung', '098988', '', 'Mahasiswa', '', 4),
(5, 'ikhsan', 'ikhsan', '123', 'kuwon', '2018-08-01', 'bandung', '098988', '', 'Masyarakat', 'rizky1842@gmail.com', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pict_depan`
--

CREATE TABLE IF NOT EXISTS `pict_depan` (
`id_pic` int(11) NOT NULL,
  `nama_pict` varchar(50) NOT NULL,
  `nama_file` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `pict_depan`
--

INSERT INTO `pict_depan` (`id_pic`, `nama_pict`, `nama_file`) VALUES
(1, 'Wisata Tugu Jogja', 'jogja.jpg'),
(2, 'Wisata Siang Malam Malioboro', 'malioboro.jpg'),
(3, 'Gamelan Jawa', 'gamelan.jpg'),
(4, 'Tarian Yogyakarta', 'tari.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE IF NOT EXISTS `video` (
`id_video` int(11) NOT NULL,
  `judul` varchar(60) NOT NULL,
  `ket` text NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id_video`, `judul`, `ket`, `file`) VALUES
(1, 'Memancing', 'ini adalah teks', 'blank.mp4'),
(2, 'Memasak', 'Ini adalah teks', ''),
(3, 'Membaca', 'Ini adalah teks', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `jenis_mb`
--
ALTER TABLE `jenis_mb`
 ADD PRIMARY KEY (`id_jenis_mb`);

--
-- Indexes for table `jumlah_mb`
--
ALTER TABLE `jumlah_mb`
 ADD PRIMARY KEY (`id_jumlah_mb`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb`
--
ALTER TABLE `mb`
 ADD PRIMARY KEY (`id_mb`), ADD KEY `id_jenis_mb` (`id_jenis_mb`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
 ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `pict_depan`
--
ALTER TABLE `pict_depan`
 ADD PRIMARY KEY (`id_pic`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
 ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jenis_mb`
--
ALTER TABLE `jenis_mb`
MODIFY `id_jenis_mb` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jumlah_mb`
--
ALTER TABLE `jumlah_mb`
MODIFY `id_jumlah_mb` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `mb`
--
ALTER TABLE `mb`
MODIFY `id_mb` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pict_depan`
--
ALTER TABLE `pict_depan`
MODIFY `id_pic` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mb`
--
ALTER TABLE `mb`
ADD CONSTRAINT `mb_ibfk_1` FOREIGN KEY (`id_jenis_mb`) REFERENCES `jenis_mb` (`id_jenis_mb`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
