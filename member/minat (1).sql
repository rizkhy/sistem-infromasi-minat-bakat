-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 29, 2018 at 08:48 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(8) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `ha` enum('Super Admin','Manager') NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`, `foto`, `ha`) VALUES
(1, 'admin', '1234', 'Admin Pusat', 'none.jpg', 'Super Admin');

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE IF NOT EXISTS `akun` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `hka` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`username`, `password`, `hka`) VALUES
('kiki', 'kiki', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `comment_member`
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
-- Table structure for table `comment_tamu`
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
-- Table structure for table `foto`
--

CREATE TABLE IF NOT EXISTS `foto` (
  `id_foto` int(11) NOT NULL,
  `id_mb` int(11) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`id_foto`, `id_mb`, `ket`) VALUES
(1, 1, 'Sejak kecil saya termasuk golongan cewek tomboy yang tidak suka masak. Di saat anak-anak cewek yang lain pada main masak-masakan, saya malah sebaliknya, main sepeda keliling komplek bersama anak-anak cowok. Hal ini terus saya alami sampai saya mau masuk kuliah.\r\n\r\nPada masa kuliah, saya tinggal di rumah sendiri dan di sediakan pembantu oleh orang tua saya, sehingga saya mempunyai alasan yang tepat untuk tidak perlu masak. Makanan saya sehari-hari sudah disiapkan oleh pembantu saya. Namun, ada rasa penasaran juga untuk ingin belajar. Pelan-pelan saya mulai membuat mie rebus sendiri tanpa bantuan si mbak. Hasilnya siy okay meskipun mienya selalu blenyek. Mau masak dimanapun atau pakai kompor baguspun, akan tampak sama saja. Sampai saya sudah punya dua anakpun, hasilnya tetap selalu blenyek.\r\n\r\nSaya sampai di ejek-ejek oleh teman-teman saya karena apapun yang saya masak pasti hasilnya blenyek atau rasanya aneh. Sejak saat itu, saya berhenti belajar masak. Semua saya serahkan ke pembantu saya. Awalnya dia memang tidak bisa masak. Saya yang mengajarinya masak, berbekal dari buku resep dan feeling takaran bumbu-bumbu. Sampai akhirnya dia jadi jago membuat masakan Indonesia, Chinese, Italian, Japanese dan Korean. Kata suami saya, “Lucu ya, kamu gak bisa masak tapi bisa mengajarkan orang jadi jago masak?”\r\n\r\nLalu tibalah saat yang paling saya takutkan, si mbak yang jago masak dan sudah bekerja selama sepuluh tahun sama saya, akhirnya minta ijin untuk kembali pulang ke kampung. Kemudian saya panik memikirkan bagaimana masakan untuk sehari-hari. Karena saya termasuk orang yang tidak biasa makan menggunakan msg.\r\n\r\nRasanya campur aduk antara sok cuek tapi deg-degan. Saya sampai membujuk dia untuk tetap tinggal dengan menawarkan naik gaji 2 kali lipat. Tetapi si mbak memang harus pulang karena orang tuanya sakit. Akhirnya saya harus merelakannya.\r\n\r\nSetelah itu, saya beberapa kali dapat pembantu masa kini yang kebanyakan tidak ada yang bisa atau tidak mau masak tepatnya. Di saat yang bersamaan pula, suami saya harus menjalankan program diet untuk livernya. Dengan terpaksa, akhirnya saya harus mulai masuk dapur. Saya memulai browsing di internet, mencari menu mudah dan sehat untuk program diet suami, anak-anak saya yang alergi dan tentunya buat si mbak baru yang tidak bisa masak juga. Untungnya saya bisa makan apa saja.\r\n\r\nDalam mencari menu termasuk mudah, tetapi dalam mencari makanan yang bisa di makan sesuai dengan kondisi seisi rumahlah yang bikin semrawut. Apalagi kalau semuanya harus di masak sendiri. Anyway, a mom’s gotta do, what a mom’s gotta do, right?');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_mb`
--

CREATE TABLE IF NOT EXISTS `jenis_mb` (
  `id_jenis_mb` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  PRIMARY KEY (`id_jenis_mb`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jenis_mb`
--

INSERT INTO `jenis_mb` (`id_jenis_mb`, `nama`) VALUES
(1, 'Seni'),
(2, 'Makanan'),
(3, 'Otomotif'),
(4, 'Olahraga');

-- --------------------------------------------------------

--
-- Table structure for table `jumlah_mb`
--

CREATE TABLE IF NOT EXISTS `jumlah_mb` (
  `id_jumlah_mb` int(11) NOT NULL AUTO_INCREMENT,
  `id_mb` int(11) NOT NULL,
  `jumlah_mb` int(11) NOT NULL,
  PRIMARY KEY (`id_jumlah_mb`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jumlah_mb`
--

INSERT INTO `jumlah_mb` (`id_jumlah_mb`, `id_mb`, `jumlah_mb`) VALUES
(1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mb`
--

CREATE TABLE IF NOT EXISTS `mb` (
  `id_mb` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mb` varchar(30) NOT NULL,
  `id_jenis_mb` int(11) NOT NULL,
  `ket` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_video` int(11) NOT NULL,
  PRIMARY KEY (`id_mb`),
  KEY `id_jenis_mb` (`id_jenis_mb`),
  KEY `id_video` (`id_video`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `mb`
--

INSERT INTO `mb` (`id_mb`, `nama_mb`, `id_jenis_mb`, `ket`, `tanggal`, `id_video`) VALUES
(1, 'Memasak Dan Berkreasi', 2, 'Sejak kecil saya termasuk golongan cewek tomboy yang tidak suka masak. Di saat anak-anak cewek yang lain pada main masak-masakan, saya malah sebaliknya, main sepeda keliling komplek bersama anak-anak cowok. Hal ini terus saya alami sampai saya mau masuk kuliah.\n\nPada masa kuliah, saya tinggal di rumah sendiri dan di sediakan pembantu oleh orang tua saya, sehingga saya mempunyai alasan yang tepat untuk tidak perlu masak. Makanan saya sehari-hari sudah disiapkan oleh pembantu saya. Namun, ada rasa penasaran juga untuk ingin belajar. Pelan-pelan saya mulai membuat mie rebus sendiri tanpa bantuan si mbak. Hasilnya siy okay meskipun mienya selalu blenyek. Mau masak dimanapun atau pakai kompor baguspun, akan tampak sama saja. Sampai saya sudah punya dua anakpun, hasilnya tetap selalu blenyek.\n\nSaya sampai di ejek-ejek oleh teman-teman saya karena apapun yang saya masak pasti hasilnya blenyek atau rasanya aneh. Sejak saat itu, saya berhenti belajar masak. Semua saya serahkan ke pembantu saya. Awalnya dia memang tidak bisa masak. Saya yang mengajarinya masak, berbekal dari buku resep dan feeling takaran bumbu-bumbu. Sampai akhirnya dia jadi jago membuat masakan Indonesia, Chinese, Italian, Japanese dan Korean. Kata suami saya, “Lucu ya, kamu gak bisa masak tapi bisa mengajarkan orang jadi jago masak?”\n\nLalu tibalah saat yang paling saya takutkan, si mbak yang jago masak dan sudah bekerja selama sepuluh tahun sama saya, akhirnya minta ijin untuk kembali pulang ke kampung. Kemudian saya panik memikirkan bagaimana masakan untuk sehari-hari. Karena saya termasuk orang yang tidak biasa makan menggunakan msg.\n\nRasanya campur aduk antara sok cuek tapi deg-degan. Saya sampai membujuk dia untuk tetap tinggal dengan menawarkan naik gaji 2 kali lipat. Tetapi si mbak memang harus pulang karena orang tuanya sakit. Akhirnya saya harus merelakannya.\n\nSetelah itu, saya beberapa kali dapat pembantu masa kini yang kebanyakan tidak ada yang bisa atau tidak mau masak tepatnya. Di saat yang bersamaan pula, suami saya harus menjalankan program diet untuk livernya. Dengan terpaksa, akhirnya saya harus mulai masuk dapur. Saya memulai browsing di internet, mencari menu mudah dan sehat untuk program diet suami, anak-anak saya yang alergi dan tentunya buat si mbak baru yang tidak bisa masak juga. Untungnya saya bisa makan apa saja.\n\nDalam mencari menu termasuk mudah, tetapi dalam mencari makanan yang bisa di makan sesuai dengan kondisi seisi rumahlah yang bikin semrawut. Apalagi kalau semuanya harus di masak sendiri. Anyway, a mom’s gotta do, what a mom’s gotta do, right?', '2018-07-29 04:03:03', 2),
(2, 'Menggambar Dan Fotografi', 1, 'Menggambar merupakan suatu kegiatan yang menyenangkan buat anak. Dengan menggambar anak dapat menghabiskan waktu luangnya dengan sesuatu yang positif dan menyenangkan. Ada banyak rahasia di balik kegiatan menggambar yang dilakukan anak. Selain menjadi sebuah hiburan, ternyata menggambar juga memiliki berbagai manfaat dan keuntungan.\r\n\r\nMeningkatkan fokus\r\n\r\nSaat menggambar, anak terdorong untuk fokus dan berkonsentrasi menyelesaikan gambar yang hendak dibuat, ia akan terbiasa fokus saat sedang mengerjakan sesuatu. Hal tersebut tentu akan memudahkannya saat menerima instruksi atau perintah dari guru di sekolah maupun dari orangtuanya.\r\n\r\nCepat membaca\r\n\r\nKemampuan menggambar bisa menjadi indikator terhadap berkembangnya kemampuan anak dalam membaca. Jadi bila anak diajarkan menggambar sejak dini, maka ia akan mudah untuk belajar membaca.\r\n\r\nMelatih kreativitas anak\r\n\r\nDengan menggambar, anak akan menggunakan daya imajinasinya untuk menciptakan suatu bentuk yang ia inginkan. Mereka akan terus berpikir kreatif menciptakan berbagai macam gambar sesuai imajinasinya. Jika ini dilakukan terus-menerus, kreativitas anak akan semakin terasah.\r\n\r\nSebagai media berekspresi\r\n\r\nGambar bisa menjadi sebuah media untuk anak mengekspresikan perasaannya. Melalui gambar yang dibuatnya dapat terlihat apa yang sedang dirasakannya, baik perasaan gembira maupun perasaan sedih. Hal ini akan sangat membantu terutama untuk anak yang karakternya tertutup. Sebagai orangtua pun Anda harus terus memelajari makna dari setiap gambar yang anak buat.\r\n\r\nLatihan menggenggam\r\n\r\nSaat anak menggambar, maka saat itulah ia akan belajar menggenggam dan mengontrol pensil. Bila terus dibiasakan, hal tersebut akan memudahkannya saat kelak masuk sekolah.\r\n\r\nMeningkatkan kemampuan motorik anak\r\n\r\nMenggambar merupakan kegiatan yang dapat meningkatkan kinerja otot tangan sekaligus mengembangkan kemampuan motorik anak. Kemampuan tersebut sangat penting dalam perkembangan aktivitasnya kelak, seperti menulis, mengangkat benda, dan kegiatan lain yang membutuhkan kinerja otot lengan dan tangan dalam prosesnya.', '2018-07-29 04:03:18', 3),
(3, 'Melukis dengan pasir', 1, 'Saya sudah lama memiliki bakat melukis, namaun dahulu saya hanya bisa melukis dengan kertas biasa, namaun sekarang saya melukis dengan pasir, hobby saya melukis ini sangat saya sukai', '2018-07-29 04:03:30', 2),
(6, 'mancing', 4, 'memancing itu seru lohhh, harus sabar', '2018-07-29 04:01:36', 1),
(7, 'bernyanyi', 1, 'Ada yang bilang jika musik atau nyanyian adalah makanannya jiwa. Kamu mungkin punya selera musik tersendiri. Ada jazz, pop, rock, hingga dangdut. Hampir semua orang suka mendengarkan musik. Banyak di antara mereka yang jago menyanyi, melantunkan suara yang merdu dan begitu menggugah jiwa siapaun yang mendengarnya. Meski banyak yang dianugerahi kemampuan vokal yang mumpuni, tapi tidak semuanya memiliki jiwa penyanyi yang sesungguhnya.\r\n\r\nJiwa penyanyi ada juga tidak lepas dari yang namanya suara lagu dan musik. Jika kamu memilikinya, maka otomatis kamu punya jiwa penyanyi. Kamu suka menyanyi untuk diri sendiri. Entah orang-orang di sekitar kamu menyukai dan mendengarkan atau tidak. Selalu ada dorongan dan perasaan untuk bersenandung. Sehari saja kamu tidak melakukannya, kamu ada perasaan aneh. Bahkan tak jarang kamu sampai frustasi. Terlepas dari apa kata orang tentang kemampuanmu, kamu suka dengan suaramu sendiri lebih dari orang lain.', '2018-07-29 04:39:00', 2),
(8, 'mendaki gunung', 4, 'â€œItâ€™s the way you ride the trail that counts.â€ â€“ Dale Evans\r\n\r\nMendaki gunung memang tidak semudah wisata pantai. Banyak hal yang harus kita persiapkan sebelum mendaki gunung. Hal ini berbeda dengan wisata pantai yang tinggal bawa ransel, berangkat ke pantai, beres. Mendaki gunung tidak segampang itu, banyak hal yang harus diketahui dan dipersiapkan secara matang agar semua berjalan sesuai dengan harapan. Kalau begitu, mending wisata ke pantai dong karena lebih praktis? Belum tentu, baca di sini dulu supaya tahu nikmatnya naik gunung itu seperti apa. Berikut ini adalah beberapa tips mendaki gunung dari pemula untuk pemula.\r\n\r\n\r\n1. Latih kaki dan badanmu paling tidak sebulan sebelum pendakian\r\n\r\nDua kali mendaki gunung, dua kali pula kaki saya cedera. Pendakian pertama adalah pendakian Gunung Lawu. Sesampainya di puncak Lawu, kaki saya masih sehat walafiat. Sewaktu turun otot betis saya cedera karena tidak kuat menahan beban. Bayangkan saja dari puncak gunung sampai dengan pos penjagaan pertama, saya harus berjalan berjam-jam terseok-seok menahan sakit yang luar biasa. Waktu itu saya memang kurang persiapan sama sekali. Saya tidak pernah melatih kaki untuk dengan berlari/jogging, atau bahkan sekedar berjalan kaki lebih sering. Kemudian nekat naik gunung begitu saja. Akibatnya, otot betis saya kaget dan cedera. Beberapa hari saya tak sanggup beranjak dari tempat tidur. Kaki akooh sakidh beut!\r\n\r\nPendakian kedua adalah beberapa hari lalu di Gunung Gede. Banyak orang yang menyebut Gunung Gede cocok untuk pendaki pemula. Memang benar. Ketinggian Gunung Gede â€œhanyaâ€ sekitar 2958 mdpl (meter di atas permukaan laut). Tidak â€œterlalu tinggiâ€ jika dibandingkan dengan gunung-gunung lainnya. Jalurnya pun sangat gampang karena tak banyak percabangan. Namun, jangan pernah menyepelekan kemampuan kaki kamu. Tanpa persiapan yang cukup, mendaki gunung di sini pun dapat membuat kaki saya cedera. Kejadiannya hampir sama dengan pendakian pertama. Saya memang mampu mendaki sampai puncak Gunung Gede. Namun, saat hendak turun, sendi lutut saya cedera. Dan kejadian serupa terulang lagi, saya harus terseok-seok berjalan dari puncak sampai ke kaki gunung. Teman saya yang sehat mampu turun dari Puncak Gunung Gede ke bawah hanya dalam waktu 3 jam. Karena cedera, saya membutuhkan waktu 7 jam! Kesalahan yang saya lakukan pun sama: Tidak melatih kaki sebelum melakukan pendakian. Di pendakian kedua, saya juga berangkat bersama 2 orang yang baru pertama kali mendaki gunung. Keduanya mengalami cedera engkel dan cedera otot paha. Kesalahan mereka juga sama: tak pernah berolahraga sebelum naik gunung. See, â€œsemudah-mudahnyaâ€ Gunung Gede juga dapat menyebabkan cedera kaki kalau tidak melakukan persiapan yang cukup. Nah, sebelum kejadian ini menimpa kamu, cobalah melatih kakimu sebelum naik gunung. Sering-sering jalan kaki, naik sepeda, lari/jogging, atau apapun terserah. Yang penting kakimu HARUS dilatih.\r\n\r\nBaca juga:  Pulau Sempu (Lagi?)\r\n2. Never hike alone\r\n\r\nDalam dunia diving/freediving, ada istilah populer â€œNever dive aloneâ€, jangan pernah menyelam sendirian. Begitu juga dengan mendaki, jangan pernah mendaki sendirian. Selain sebagai teman perjalanan, buddy kita saat mendaki gunung juga menjadi teman berbagi barang bawaan dan berbagi suka duka. Jika kamu tiba-tiba cedera kaki, siapa yang mau membantumu? Orang lain? Ngerepotin banget yaâ€¦ Lebih baik merepotkan teman kamu. Di situ kamu akan sangat bersyukur memiliki teman seperti dia. Dia pun pastinya sangat senang membantu sohibnya. Begitu juga sebaliknya, dampingi selalu rekanmu dalam suka dan duka. Jangan pernah tinggalkan dia sendirian hanya karena langkah kakimu secepat rusa. Di gunung, teman adalah teman, bukan pembantu atau sumber masalah. Persahabatan dijamin makin erat dan langgeng jika saling membantu saat mendaki gunung.\r\n\r\n3. Ajak pendaki yang sudah berpengalaman\r\n\r\nSebagai pemula, apalagi yang baru pertama kali naik gunung, mendaki bersama orang yang sudah berpengalaman is a must! Kamu akan banyak belajar dari dia, seperti bagaimana cara memasang tenda yang benar, cara mengemas tas gunung yang benar, etika mendaki gunung yang benar, jalur mendaki yang benar, dan lain sebagainya. Plus, dia akan membantumu banyak hal mulai dari persiapan naik gunung sampai pulang ke rumah.\r\n\r\n4. Minimalkan membawa makanan yang harus dimasak\r\n\r\nSebenarnya ini masalah preferensi. Sebagai penganut Lazy Travelerâ€™s Paradigm, saya sih malas masak makanan di gunung. Bayangkan saja kita harus membawa kompor, bahan bakar, bahan makanan mentah, beras, dan lain sebagainya. Kecuali pendakian butuh berhari-hari, bahan mentah tersebut memang wajib dibawa. Jika hanya semalam di puncak gunung sih, saya ogah rempong membawa barang-barang seperti itu. Yah, sekali-kali puasa semalam makan makanan yang â€œnormalâ€. Untuk mengakalinya, bawa makanan yang mengenyangkan, berkalori/karbohidrat tinggi, dan berprotein tinggi. Daftar makanan matang dan siap santap tersebut dapat dilihat di sini.\r\n\r\nMasukkan makanan tersebut dalam kaleng/tempat makanan, kecuali coklat/coki-coki yang ditaruh di tempat yang mudah di ambil saat mendaki. Atur seringkas mungkin sehingga tidak memakan tempat dan tidak membawa banyak sampah. Seriously, males banget saat turun gunung harus membawa banyak sampah. Kalau begitu tinggalkan saja sampahnya di gunung, repot amat sih. Hmm, kalau meninggalkan sampah di gunung berarti kamu belum siap naik gunung, mendingan main ke mall saja, mau buang sampah gampang karena sudah disediakan tempat sampahnya. Lebih tidak repot kan? Konsekuensi naik gunung itu harus mau repot. Yang kita bisa lakukan adalah meminimalisasi kerepotan tersebut.\r\n\r\n5. Jangan pup dan pipis di sungai!\r\n\r\nSaya bisa pastikan bahwa kebutuhan air minum saat mendaki gunung itu luar biasa banyak. Selain memang cepat haus karena energi kita terkuras cepat saat mendaki, minum air yang cukup juga dapat menghindarkan kita dari bahaya dehidrasi. Padahal, kita hanya mampu membawa maksimal 4 botol air mineral ukuran 1 liter, sedangkan kebutuhan air minum lebih dari itu. Tidak mungkin bukan membawa segalon air mineral naik gunung? Mustahil bukan di atas gunung ada minimart? Tahukah kamu air sungai di gunung menjadi satu-satunya harapan terakhir saat air minummu habis? Bagaimana jika orang lain pup dan kencing di air sungai tersebut, sedangkan air tersebut menjadi penyelamat hidupmu? Pilih mati tapi tidak minum air yang jorok, atau bertahan hidup dengan meminum air yang terkontaminasi pup/kencing? Maka dari itu, berak dan kencing di gunung pun juga ada etikanya.\r\n\r\n\r\nPup/kencing di alam liar saat mendaki gunung memang wajar. Semua makhluk hidup butuh buang air besar/kecil. Begitu juga manusia. Sangat manusiawi jika di gunung kita kebelet boker. Jika memang sudah saatnya membuang tangki kotoran di perutmu, carilah tempat yang lumayan rimbun untuk bersembunyi, agak jauh dari jalan setapak dan sumber air. Gali lubang secukupnya agar pup kamu tidak nyundul ke pantatmu. Cebok dengan tisu basah, kemudian tutup kembali lubang yang penuh pup tadi dengan tanah supaya segera terurai menjadi pupuk kandang dan tidak menjadi polusi udara heheheâ€¦ Lakukan hal yang sama jika kamu kebelet kencing, namun tidak perlu sampai menggali tanah.\r\n\r\n6. Jangan jadi anak alay sampah as*hole motherf*cker\r\n\r\nKamu kira dengan mencoret-coret di gunung begini membuat kamu keren? Salah besar! Kamu memang punya bakat besar dalam coret-mencoret, tapi kamu bakal keren banget kalau bakat mencoret-coret tersebut dituangkan ke kanvas lukis.\r\n\r\nSampah Gunung\r\nGrafiti norak dan sampah menjijikkan di gunung seperti ini masih ada lho di zaman orang sudah melek internet seperti sekarang.\r\nMiris rasanya gunung kita bertaburan bungkus plastik dan segala macam sampah. Gunung yang indah menjadi tempat yang kotor dan menjijikkan. Mau tahu apa yang dilakukan oleh teman saya seorang bule dari Amrik saat mendaki ke Gunung Rinjani? Dia memunguti sampah sebisanya dan itupun lumayan banyak sampai berkantong-kantong plastik besar, berat, dan bukan sampah milik dia! Sampah tersebut berasal dari anak alay yang buang sampah sembarangan di gunung. Jika tak sanggup membawa sampah kembali saat turun gunung, jangan membawa sampah. Seriously, saya juga malas membawa sampah saat turun gunung. Berat-beratin bawaan. Jika bisa menghindari membawa plastik, hindari. Maka dari itu, siasati dengan mengemas makanan dengan membuang plastiknya terlebih dahulu di rumah. (baca bagian nomer 2)\r\n\r\n7. Perhatikan cuaca\r\n\r\nHindari bulan-bulan saat musim penghujan. Sebagai pendaki pemula tentu saja kita menginginkan kesan pertama yang begitu menggoda. Hujan membuat perjuangan saat mendaki menjadi berkali-kali lipat. Jalanan becek dan licin, barang bawaan menjadi berat, sepatu basah, dan semua menjadi serba tidak asyik. Jangan hanya karena hujan, kita menjadi kapok mendaki gunung. Jangan! Kesan pertama mendaki gunung itu benar-benar tak terlupakan. Maka dari itu, sebaiknya mendaki gunung dilakukan saat musim kemarau.\r\n\r\nBaca juga:  Inilah 5 Jenis Traveler yang Asyik Jadi Teman Perjalanan\r\n8. Bawa Barang-barang yang Penting\r\n\r\nGunung yang terkenal sebagai tempat mendaki untuk pemula saja membutuhkan waktu paling tidak 5-7 jam perjalanan dari kaki gunung hingga ke puncak. Bayangkan saja kamu harus berjalan kaki menanjak selama itu dan membawa tas gunung yang superberat. Sudah membayangkannya? Berat bukan? Memang berat jika dibayangkan, tapi setelah dilakukan ternyata tidak seberat yang dikhawatirkan. Maka dari situ, kita harus bisa mensiasatinya dengan membawa barang-barang yang penting dan secukupnya saja. (Baca lebih lengkap di 15 daftar barang yang sebaiknya dibawa saat mendaki gunung).\r\n\r\n9. Safety first\r\n\r\nMendaki gunung merupakan kegiatan yang berisiko tinggi. Tak usah kawatir, semua hal pasti mengandung risiko. Sebagai makhluk hidup, kita tidak bisa menghindari risiko. Yang kita bisa lakukan adalah meminimalisasi risiko berat yang terjadi pada kita. Bagaimana dengan risiko mendaki gunung? Hal yang paling utama adalah ketahui kondisi kesehatanmu sendiri. Jika terdapat penyakit kronis yang tidak memperbolehkanmu untuk beraktivitas berat, lebih baik jangan dipaksakan mendaki gunung. Bawa peralatan-peralatan penting yang sekiranya mendukung kesehatanmu. Baju hangat sangat mutlak dibawa untuk menghindari hipotermia (tubuh membeku karena kedinginan), karena di puncak gunung biasanya hawanya sangat dingin. Jika kamu merasa aman melakukan sesuatu, just do it. Jika kamu merasa ragu untuk melakukannya, just donâ€™t. Jangan lupa melapor ke pos jaga sebelum mendaki dan melapor lagi ke pos penjaga setelah kembali.\r\n\r\nAda beberapa prosedur yang wajib diketahui sebelum mendaki gunung, yaitu:\r\n\r\n1. Prosedur logistik, yaitu makanan minuman yang dibawa. Bawa dalam jumlah yang cukup.\r\n\r\n2. Prosedur perlengkapan dan peralatan yang dibawa. Bawa perlengkapan wajib naik gunung, seperti senter, jaket yang hangat dan nyaman, baju dan celana yang hangat dan nyaman, sepatu, kupluk/balaclava/syal, dan lain sebagainya.\r\n\r\n3. Prosedur perjalanan dan prosedur darurat. Ambil risiko boleh-boleh saja, namun selalu utamakan keselamatan.\r\n\r\nJika memang belum siap mendaki gunung, jangan dipaksakan. Seriously, mendaki gunung itu bukan sesuatu yang mudah. Petugas di pos jaga di gunung pun selalu mewanti-wanti bahwa naik gunung itu sesuatu yang berisiko besar. Jika dalam pendakian terjadi masalah, lebih baik turun lagi. Jangan dipaksakan mendaki. Safety first, itu yang harus selalu ditanamkan di manapun juga, baik itu di gunung maupun di laut. Namun demikian, jika tidak mau naik gunung karena kekhawatiran yang enggak-enggak, hal tersebut juga sesuatu yang nonsense. Worry gets you nowhere. Cari informasi sebanyak-banyaknya terlebih dahulu sebelum naik gunung. Ikuti tip-tip naik gunung yang benar. Jika kamu sudah merasa siap, segera berangkat selagi raga masih kuat. Sekali kamu naik gunung dan tidak ada masalah yang berarti, dijamin bakal ketagihan naik gunung lagi! Saya saja yang dua kali naik gunung dan cedera lumayan berat masih ketagihan kok. Yukâ€¦ naik gunung yukâ€¦\r\n\r\n', '2018-07-29 06:03:09', 3),
(9, 'bermain gitar', 1, 'Sebagai manusia tentunya saya memiliki bakat dan potensi. Namun, tidak semua bakat yang saya miliki ingin saya kembangkan. Saya adalah jenis orang yang tidak bisa melakukan banyak pekerjaan dalam waktu yang bersamaan. Begitu juga dengan perkembangan bakat dan potensi saya.\r\n\r\nSaya pernah dikisahkan oleh orang tua saya, ketika saya dan kakak saya masih kecil, hampir setiap malam kami tidak mau tidur sebelum ayah saya menyetel lagu Stairway To Heaven oleh Deep Purple. Ketika lagu tersebut dimainkan, kami mulai tenang dan segera tertidur.\r\n\r\n\r\nSeiring berjalannya waktu, genre musik saya dengan kakak saya mulai terlihat. Saya suka dengan musik rock sedangkan kakak saya menyukai musik klasik. Benar saja, ketika kakak saya kuliah, dia menjadi pemain biola di sebuah orkestra yang terdiri dari mahasiswa di kampusnya. Sedangkan saya sudah mulai menjadi pemain band sejak kelas 2 SMP hingga sekarang.\r\n \r\n\r\nPassion saya yang pertama kali saya temukan adalah bermain gitar. Berawal dari kekaguman saya pada teman dekat saya, Audi Rahmadani yang dapat memainkan gitar dengan sangat piawai. Ini dia orangnya.\r\n\r\n\r\nSejak saat itu saya mulai belajar memainkan gitar dan mengikuti kursus gitar klasik. Sebenarnya saya tidak terlalu suka dengan musik klasik. Tapi ayah saya mengatakan bahwa lebih baik mengikuti kursus gitar klasik dari pada kursus gitar pop. Walaupun dengan agak berat hati, saya tetap mengikuti kursus gitar klasik. Tapi, memang selalu ada hikmah di balik hal yang tidak kita harapkan. Dengan mengikuti kursus gitar klasik, saya sekarang memiliki dasar kemampuan untuk memetik senar gitar dengan lebih piawai dan bisa lebih mudah untuk menentukan nada bass dan nada pasangannya tanpa perlu melihat tab (maaf ya teman-teman, saya memakai istilah yang mungkin apabila kamu tidak bermain gitar, tidak mengerti). Mungkin orang lain yang tidak memiliki dasar klasik tidak bisa semudah itu memiliki kemampuan tersebut. Maaf ya, bukannya sombong, saya hanya ingin menunjukkan pada kamu bahwa jangan sedih apabila kamu mengalami hal-hal yang tidak kamu harapkan karena selalu ada hikmah di baliknya kok :).\r\n\r\n \r\n\r\nTidak lama setelah saya belajar gitar, saya menemukan passion saya yang lain, yaitu bernyanyi. Tidak disangka, ternyata untuk bisa bernyanyi tidak segampang yang saya kira. Saat kelas 3 SMP saya mulai menjadi vokalis sekaligus gitaris. Tetapi, setelah saya mendengar rekaman permainan band saya, saya sadar bahwa suara saya sering tidak kuat untuk mencapai nada tinggi dan akhirnya nadanya menyimpang tidak karuan.\r\n\r\n \r\n\r\nSeringkali saya ditertawakan penonton ketika tampil di atas panggung, bahkan anggota band saya mulai komplain dengan suara saya. Saya sadar saya tidak menyanyi dengan bagus, tapi saya percaya saya bisa memerbaikinya. Big sacrifice, big victory itulah motto hidup saya yang saya juga lupa dapat dari mana.\r\n\r\n \r\n\r\nSaya terus berlatih sendiri di rumah setiap pulang sekolah. Saya hanya bermodalkan telinga untuk mendengar nyanyian vokalis-vokalis band yang saya sukai. Saya cari tahu dari mana asal suara mereka sehingga mereka kuat mencapai nada tinggi. Saya pelajari teknik-teknik bernyanyi, tak henti-hentinya saya berlatih dan terus berlatih. Akhirnya kerja keras saya mulai terasa manisnya. Lambat laun, suara saya semakin kuat dan berhasil mencapai nada-nada yang cukup tinggi. Saya menguasai teknik pernapasan perut dan pecah suara. Tetapi, saya tahu, saya masih sangat jauh dari sempurna.\r\n\r\n \r\n\r\nSaat kuliah akhir semester dua, saya mengikuti kursus vokal untuk memperdalam teknik vokal saya. Ternyata, teknik vokal yang sesungguhnya cukup membuat saya agak kewalahan untuk mempelajarinya pada awalnya. Namun, lambat laun saya mulai bisa menyesuaikan dan mengejar ketertinggalan saya. Hingga sekarang, saya masih terus mengikuti kursus vokal dan tidak akan pernah menyerah dalam menggapai apa yang saya impikan.', '2018-07-29 06:13:06', 3),
(10, 'Merakit Motor', 3, 'Note: saya tidak bertanggung jawab jika anda akhirnya kecanduan roda dua akibat membaca artikel ini.\r\n\r\nKita semua pastinya punya kesibukan sehari-hari. Nah, disela waktu kesibukan itu, seharusnya kita harus ada sesuatu yang disebut dengan refresing.\r\n\r\nRefresing itu tidak selalu dalam bentuk liburan. Apapun yang membuat kita nyaman, itu adalah refresing. Arti refresing kan sesuatu yang kembali membuat kita segar.\r\n\r\nMembuka facebook juga refresing, asalkan dibukanya setelah anda menyelesaikan pekerjaan anda. Kalau kerjaannya buka facebook dari pagi sampai sore, ya itu bukan refresing lagi namanya.\r\n\r\nSaya keingat dengan perkataan Mas Zaky (CEO BukaLapak), main koding saja bisa jadi refresing buat dia. Kebayang kan? Makna refresing itu ternyata sangat luas. Meski bagi saya Mas Zaky refresing dengan cara yang gila.\r\n\r\nApakah benda bisa jadi objek refresing? Tentu bisa. Kembali lagi makna refresing, apapun yang bisa membuat otak dan pikiran terhibur.\r\n\r\nContohnya saya, motor adalah bentuk objek refresing bagi saya. Bukan saja saat mengendarainya, tapi ketika saya merakit motor dari nol, dari rongsokan hingga dapat dikendarai dan berseni tinggi.\r\n\r\nSeorang lelaki memang begitu, punya cara refresingnya sendiri-sendiri. Membangun sesuatu yang di-idamkan, menikmati prosesnya, itu adalah refresing bagi laki-laki.\r\n\r\nLelaki harus memiliki sesuatu yang dibangun, di-idamkan, dan disayang.\r\n-Monza Aulia-\r\n\r\nZero to Hero\r\n\r\nEnam bulan lalu, ketika saya kembali ke Sawang. Saya menemukan satu rongsokan motor thunder 125 cc yang sudah 5 tahun berkarat di gudang.\r\n\r\nAwalnya tidak berniat untuk mengakuisisi motor sampah itu, karena itu bukan planning awal saya.\r\n\r\nJujur saja, awalnya saya memang sedang berniat mencari motor CB untuk dimodifikasi kembali dengan mengembalikan konsep orisinil nya. Cuma sayangnya tidak ketemu, padahal sudah dicari sampai ke desa tentangga.\r\n\r\nKarena sudah sangat lama ingin mengendarai roda dua lagi, saya pikir yasudah kenapa tidak dicoba saja hidupkan kembali thunder itu dan saya costum dengan konsep klasik.\r\n\r\nSaya putuskan untuk bicara ke Om Johan, dia pemilik thunder itu, nah Om Johan mau melepas rongsokan itu dengan harga 500 ribu rupiah.\r\n\r\nDi hari yang sama, kebetulan sekali tetangga saya yang punya pick-up ingin ke Krueng Geurukuh untuk belanja sembako. Ya, saya tawari untuk sekalian angkut rongsokan saya ke bengkel yang ada disana untuk dihidupkan mesinnya. Tawaran tersebut diterima dengan harga 100 ribu.\r\n\r\nDi Krueng Geurukuh memang ada satu bengkel saya sudah melegenda, bapak itu memang paling jago kalau soal mesin, makanya saya titipkan motor saya supaya bisa dihidupkan kembali.\r\n\r\nTiap tiga hari saya telepon karyawan bapak itu, untuk menanyakan keadaan motor saya. Cukup lama juga pengerjaannya, butuh waktu tiga minggu untuk kembali menghidupkan itu mesin. Apalagi suku cadang thunder 125 cc sangat sulit didapat, perlu di order terlebih dahulu di medan. Total 700 ribu yang saya keluarkan untuk kembali menghidupkan mesin tersebut.\r\n\r\nSampai saat ini, saya sudah menghabiskan uang sebesar 1,3 juta. Benar-benar saya nikmati prosesnya.', '2018-07-29 06:17:28', 2),
(11, 'modifikasi motor', 3, 'CafÃ© racer\r\nCafÃ© racer adalah aliran motor dengan konsep bergaya motor balap zaman dulu. Ciri khas yang paling menonjol dari aliran ini adalah stang jepit yang otomatis membuat posisi badan lebih menunduk ketika berkendara layaknya motor balap. Ciri lainnya adalah jok yang rendah, dengan bentuk bagian belakang yang melengkung ke belakang dan ke atas seperti ekor tawon. Desain jok dan lampu depan biasanya juga khas. Sangat retro.\r\n\r\nSekilas, cafÃ© racer memiliki bentuk yang mirip dengan aliran Scramble, yang membedakan adalah bentuk stang dan jenis ban yang digunakan. Motor cafe racer menggunakan setang underyoke atau di bawah segitiga (fork) yang membuat pengemudinya agak sedikut menunduk ketika berkendara seperti menggunakan motor balap. Sedangkan scramble menggunakan setang model biasa seperti motor sport pada umumnya.\r\n\r\nUntuk urusan ban, CafÃ© racer tidak harus menggunakan ban dual purpose seperti aliran Scramble, cukup menggunakan ban klasik atau ban sport.', '2018-07-29 06:33:25', 3),
(12, 'masak rawon', 2, 'Resep rawon enak dan mudah dibuat. Jenis jenis dari rawon memang sangatlah banyak. anda bisa memilihnya mulai dari-Resep rawon jawa timur dan cara pembuatan mudah- sampai ada juga jenis rawon berbahan dasar dari daging. Mulai dari resep rawon surabaya dan masih sangat banyak lagi. saya akan menyimpulkan sebagaimana resep yang paling populer saja.\r\n\r\nMembuat suatu makanan, sewajibnya anda bisa mengerti apa saja jenis bumbu yang digunakan. Dan juga pastinya anda bisa memastikan sebagaimana citarasa yang di tuju dalam makanan. Mengolah atau membuat suatu makanan memang sangatlah mudah. memastikan rasa adalah hal yang tersulit dalam hal memasak begi seorang pemula. Termasuk membuat rawon yang satu ini. akan tetapi jika anda terbiasa, maka semua akan muda.\r\n\r\nResep lengkap makanan rawon dan cara pembuatan yang mudah dipahami. Membuat anda semakin tertarik dengan membuat suatu makanan makanan baru. Belajar memasak adalah suatu seni tangan loh. Dan itu juga termasuk kesengan tersendiri dari kaum hawa.\r\n\r\nSebelum anda membuat suatu adonan. Persiapkan perlengkapan apa saja alat dapur yang diperlukan dan bahan bahan yang disiapkan.\r\n\r\nResep rawon\r\nPerlatan dapur :\r\npanci\r\nWajan\r\nSpatula\r\npisau\r\nKompor\r\nWadah\r\nBlender atau alat penghalus tradisional.\r\nBahan bumbu yang dihaluskan :\r\n8 butir bawang merah\r\n1 cm kunyit (dibakar)\r\n4 siung bawang putih\r\n4 keluak seduh.\r\nBahan bahan dasar :\r\n400 gr daging (potong potong dan tetel)\r\n1.500 ml air. 1 lembar serai (ambil putihnya)\r\n1 batang daun bawang (potong potong kecil)\r\n5 lembar daun salam\r\n4 sendok minyak\r\nÂ½ sendok merica\r\n1 Â½ sendok garam\r\nÂ¼ sendok gula pasir\r\n\r\nStep by step cara pembuatan :\r\nAmbil panci dan daging\r\nMasukan daging kedalam panci dan tuangkan air\r\nNyalakan kompor dengan api besar\r\nSaring daging dan ambil kadunya perkirakan 1.200 ml\r\nAmbil semua bumbu bumbu dan haluskan\r\nTumis dengan api kecil dan tambahkan daun jeruk dan serai\r\nTeruk aduk dengan spatula sampai tercium bau harum dan sisihkan\r\nAmbil kaldu yang anda saring tadi kemudian masukan kedalam panci dan nyalakan kompor.\r\nMasukan lagi bahan bumbu dan daging yang telah anda tumis kedalam panci\r\nTambahkan dengan bahan bahan yang tersisa\r\nTunggu kurang lebih 30 menit\r\nAngkat dan selesai ^_^', '2018-07-29 06:36:15', 2);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id_member` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(8) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tmpt_lahir` varchar(20) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `foto` varchar(100) NOT NULL DEFAULT 'none.jpg',
  `kategori` varchar(20) NOT NULL,
  `id_jenis_mb` int(11) NOT NULL,
  PRIMARY KEY (`id_member`),
  KEY `id_jenis_mb` (`id_jenis_mb`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nama_lengkap`, `username`, `password`, `alamat`, `tgl_lahir`, `tmpt_lahir`, `no_telp`, `foto`, `kategori`, `id_jenis_mb`) VALUES
(1, 'Fazal Said Wicaksono', 'fazallsaid', '12345678', 'Yogyakarta', '1996-04-16', 'Pacitan', '082233439041', 'none.jpg', 'masyarakat', 1),
(2, 'Andi Purbo Setiawan', 'andi', '123456', 'kulon progo', '1995-06-14', 'Lampung', '085637486273', 'none.jpg', 'masyarakat', 2),
(3, 'Bima Wibowo', 'bimawb', '12345', 'blok o yogyakarta', '1995-12-18', 'medan', '082223078747', 'none.jpg', 'masyarakat', 3),
(4, 'risma kiki', 'kiki', '123', 'jl. kaliurang km10 no.23', '1996-09-28', 'temanggung', '081234567165', 'none.jpg', 'masyarakat', 4),
(5, 'ali binarto', 'ali', '12345', 'jl karangbendo', '1965-11-15', 'madiun', '081362077345', 'none.jpg', 'masyarakat', 1),
(6, 'rizky kurniawan', 'kiki', '123', 'prangtritis', '1996-09-27', 'Yogyakarta', '089878684568', 'none.jpg', 'Mahasiswa', 2),
(7, 'Elang Putra Gumilang', 'elang', 'okeaja', 'karangjambe no 18', '1998-05-07', 'Yogyakarta', '089876896578', 'none.jpg', 'Mahasiswa', 3),
(8, 'syamsiah', 'syam', 'syam1', 'jl kaliurang km 9', '1939-09-28', 'kaliurang', '08767676541', 'none.jpg', 'Masyarakat', 4),
(9, 'joko tingkir', 'joko', '12300', 'jlan jogokariyan, yogyakarta', '1995-12-10', 'medan', '08126324858', 'none.jpg', 'Mahasiswa', 1),
(10, 'muhammad toha', 'ahmadtoha', 'toha', 'jalan bantul no 19, yogyakarta', '1998-10-27', 'jakarta', '08987868477', 'none.jpg', 'Mahasiswa', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pict_depan`
--

CREATE TABLE IF NOT EXISTS `pict_depan` (
  `id_pic` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pict` varchar(50) NOT NULL,
  `nama_file` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pic`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `pict_depan`
--

INSERT INTO `pict_depan` (`id_pic`, `nama_pict`, `nama_file`) VALUES
(1, 'Wisata Tugu Jogja', 'jogja.jpg'),
(2, 'Wisata Siang Malam Malioboro', 'malioboro.jpg'),
(3, 'Gamelan Jawa', 'gamelan.jpg'),
(4, 'Tarian Yogyakarta', 'tari.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `id_video` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(60) NOT NULL,
  `ket` text NOT NULL,
  `file` varchar(100) NOT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `judul`, `ket`, `file`) VALUES
(1, 'Memancing', 'ini adalah teks', 'blank.mp4'),
(2, 'Memasak', 'Ini adalah teks', ''),
(3, 'Membaca', 'Ini adalah teks', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mb`
--
ALTER TABLE `mb`
  ADD CONSTRAINT `mb_ibfk_1` FOREIGN KEY (`id_jenis_mb`) REFERENCES `jenis_mb` (`id_jenis_mb`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mb_ibfk_2` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`) ON UPDATE CASCADE;

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`id_jenis_mb`) REFERENCES `jenis_mb` (`id_jenis_mb`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
