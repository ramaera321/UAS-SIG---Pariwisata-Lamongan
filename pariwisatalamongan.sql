-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2021 at 06:19 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pariwisatalamongan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_tempat` int(11) NOT NULL,
  `nama_galeri` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `ket_galeri` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_galeri`
--

INSERT INTO `tb_galeri` (`id_galeri`, `id_tempat`, `nama_galeri`, `gambar`, `ket_galeri`) VALUES
(37, 16, 'Wahana', '1723wbl-7.jpg', ''),
(38, 16, 'Wahana', '2858wbl-3.png', ''),
(39, 18, 'Goa Maharani', '3855goa-maharani-2.jpg', ''),
(40, 18, 'Maharani Zoo', '4817maharani-zoo.jpg', ''),
(41, 16, 'Wahana', '6896wbl-6-(1).jpg', ''),
(42, 16, 'Wahana', '9989wbl-5.jpg', ''),
(43, 17, '', '4145alun-alun-1.jpg', ''),
(44, 17, '', '8327alun-alun-2.jpg', ''),
(46, 17, '', '7665alun-alun-lamongan-3.jpg', ''),
(48, 17, '', '3860alun-alun-lamongan-4.jpg', ''),
(49, 19, '', '2969museum-sunan-2.jpg', ''),
(50, 19, '', '2288museum-sunan-3.jpg', ''),
(51, 20, '', '8510trinil2.jpg', ''),
(52, 20, '', '2912trinil3.jpg', ''),
(53, 20, '', '8825trinil4.jpg', ''),
(54, 21, '', '1245andong-sari-1.jpg', ''),
(55, 21, '', '3844andong-sari-2.jpg', ''),
(56, 21, '', '9997andong-sari-3.jpg', ''),
(57, 16, '', '7529andong-sari-4.jpg', ''),
(58, 22, '', '9426nasi-boranan-1.jpg', ''),
(59, 22, '', '4555nasi-boranan-3.jpg', ''),
(60, 23, '', '7310wisata-gunung-mas-4.jpg', ''),
(61, 23, '', '8182wisata-gunung-mas-2.jpg', ''),
(62, 23, '', '1194gunung-mas-mantup.jpg', ''),
(63, 24, '', '8875img-20200122-wa0009-3.jpg', ''),
(64, 24, '', '8645pantai-kutang.jpg', ''),
(65, 24, '', '7572pantai-kutang-lamongan-2.jpg', ''),
(66, 25, '', '8877air-panas-brumbun-1.jpg', ''),
(67, 25, '', '7586brumbun-lomba.jpg', ''),
(68, 26, '', '6342soto-ayam-1-(1).jpg', ''),
(69, 26, '', '6939soto-ayam-3.jpg', ''),
(70, 27, '', '1273masjid1.jpeg', ''),
(71, 16, '', '6114masjid2.jpeg', ''),
(72, 16, '', '1408masjid3.jpeg', ''),
(74, 16, '', '6643masjid2.jpeg', ''),
(75, 27, '', '2013masjid2.jpeg', ''),
(76, 27, '', '5269masjid3.jpeg', ''),
(77, 28, '', '7624gunug.jpeg', ''),
(78, 16, '', '3822gunung2.jpeg', ''),
(79, 16, '', '2114gunung3.jpg', ''),
(80, 28, '', '5017gunung2.jpeg', ''),
(81, 28, '', '5396gunung3.jpg', ''),
(82, 29, '', '8257kampung-inspirasi-2.jpeg', ''),
(83, 29, '', '1927kampung-inspirasi.jpg', ''),
(84, 29, '', '4746kampung_inspirasi.png', ''),
(85, 30, '', '17721.-wego.jpg', ''),
(86, 30, '', '7294wego-3.jpg', ''),
(87, 30, '', '3376wego-4.jpg', ''),
(88, 30, '', '4984wego-1.jpg', ''),
(89, 30, '', '5077wego-air.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_options`
--

CREATE TABLE `tb_options` (
  `option_name` varchar(16) NOT NULL,
  `option_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_options`
--

INSERT INTO `tb_options` (`option_name`, `option_value`) VALUES
('default_lat', '-8.251889'),
('default_lng', '115.076818'),
('default_zoom', '10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tempat`
--

CREATE TABLE `tb_tempat` (
  `id_tempat` int(11) NOT NULL,
  `nama_tempat` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tempat`
--

INSERT INTO `tb_tempat` (`id_tempat`, `nama_tempat`, `gambar`, `lat`, `lng`, `lokasi`, `keterangan`, `deskripsi`) VALUES
(16, 'Wisata Bahari Lamongan', '7248wbl-1.jpg', -6.8663907, 112.3574593, 'Jl. Raya Paciran, Kec. Paciran, Kabupaten Lamongan, Jawa Timur 62264', '<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/9989wbl-5.jpg\" alt=\"\" width=\"550\" height=\"414\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Wisata Bahari Lamongan merupakan wisata yang terpopuler di Lamongan. Letaknya adalah di Jl. Raya Paciran, Paciran, Kec. Paciran, Kabupaten Lamongan, Jawa Timur. Wisata Bahari Lamongan ini diresmikan pada tanggal 14 November 2004 oleh H. Masyfuk yang ketika itu menjabat sebagai Bupati Lamongan.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/6896wbl-6-(1).jpg\" alt=\"\" width=\"550\" height=\"365\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/2858wbl-3.png\" alt=\"\" width=\"550\" height=\"297\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Wisatawan sangat direkomendasikan mengunjungi WBL. Sarana hiburan yang cocok bagi pasangan maupun keluarga dengan berbagai fasilitas, wahana, dan pemandangan pantai yang ditawarkan menambah nilai plus wisata ini. WBL selalu meng<em>update</em>&nbsp;wahana, fasilitas, dan system yang ada guna memanjakan dan mempermuda wisatawan.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/1723wbl-7.jpg\" alt=\"\" width=\"550\" height=\"367\" /></p>', 'Wisata Bahari Lamongan merupakan wisata yang terpopuler di Lamongan. Letaknya adalah di Jl. Raya Paciran, Paciran, Kec. Paciran, Kabupaten Lamongan, Jawa Timur. Wisata Bahari Lamongan ini diresmikan pada tanggal 14 November 2004 oleh H. Masyfuk yang ketika itu menjabat sebagai Bupati Lamongan. Wisatawan sangat direkomendasikan mengunjungi WBL. Sarana hiburan yang cocok bagi pasangan maupun keluarga dengan berbagai fasilitas, wahana, dan pemandangan pantai yang ditawarkan menambah nilai plus wisata ini.'),
(17, 'Alun-Alun Lamongan', '1534alun-alun-lamongan-4.jpg', -7.1203513, 112.4134561, 'Alun-alun lamongan, Jl. Lamongrejo, Tumenggungan, Kec. Lamongan, Kabupaten Lamongan, Jawa Timur 62214', '<p><img src=\"assets/images/galeri/7665alun-alun-lamongan-3.jpg\" alt=\"\" width=\"550\" height=\"413\" /></p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\">Sebuah public space seluas sekitar 4.900 meter persegi ini disediakan pemerintah Lamongan untuk masyarakat umum dengan beberapa fasilitas.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/4145alun-alun-1.jpg\" alt=\"\" width=\"550\" height=\"367\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Di lokasi ini juga terdapat sebuah pesawat patroli udara yang dijadikan monumen. Pesawat dengan nomor lambung P. 086 N 2255 ini biasanya digunakan masyarat untuk berfoto &ndash; foto sebagai background. Pesawat yang sudah tidak beroperasi itu sengaja di jadikan sebagai monumen di Alun Alun Lamongan agar menarik perhatian.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/8327alun-alun-2.jpg\" alt=\"\" width=\"550\" height=\"367\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/3860alun-alun-lamongan-4.jpg\" alt=\"\" width=\"550\" height=\"313\" /></p>', 'Sebuah public space seluas sekitar 4.900 meter persegi ini disediakan pemerintah Lamongan untuk masyarakat umum dengan beberapa fasilitas. Di lokasi ini juga terdapat sebuah pesawat patroli udara yang dijadikan monumen. Pesawat dengan nomor lambung P. 086 N 2255 ini biasanya digunakan masyarat untuk berfoto &ndash; foto sebagai background. Pesawat yang sudah tidak beroperasi itu sengaja di jadikan sebagai monumen di Alun Alun Lamongan agar menarik perhatian.'),
(18, 'Maharani Zoo & Goa', '4636goa-maharani-1.jpg', -6.8678965, 112.3600124, 'Jl. Raya Daendels – Paciran, Lamongan 62264, Indonesia', '<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/3855goa-maharani-2.jpg\" alt=\"\" width=\"500\" height=\"334\" /></p>\r\n<p style=\"text-align: justify;\">Wisata Gua Maharani berada di Jl. Raya Paciran, Paciran, Kabupaten Lamongan, Jawa Timur. Awalnya, Gua Maharani ditemukan tanpa sengaja oleh Bupati Lamongan saat itu, yaitu Muhammad Faried pada tanggal 6 Agustus 1992. Gua ini terletak di dalam tanah dengan kedalaman 25 meter dari permukaan tanah dan luas rongga sekitar 2500 &nbsp;Karena memiliki keindahan berupa stalaktit dan stalakmit aktif yang menarik, maka gua tersebut dibuat sebagai tempat wisata dan telah resmi dibuka pada tanggal 10 Maret 1994.</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/4817maharani-zoo.jpg\" alt=\"\" width=\"500\" height=\"334\" /></p>\r\n<p style=\"text-align: justify;\">Selain itu, Mazoogo juga berisikan kebun binatang mini yang letaknya satu kompleks dengan Wisata Bahari Lamongan (WBL), tepatnya berada bersebrangan. Mazoogo menyediakan kebun binatang dengan berbagai fasilitas yang cocok dikunjungi sebagai sarana edukasi bagi anak-anak. Binatang-binatang yang ada tidak hanya dapat dilihat dari jauh, beberapa jenis binatang dapat diajak berfoto dengan pantauan pawangnya. Pengunjung juga dapat merasakan sensasi memberi makan binatang tertentu. Selain itu, terdapat museum satwa dan pertunjukan binatang yang akan menambah pengetahuan.</p>', 'Wisata Gua Maharani berada di Jl. Raya Paciran, Paciran, Kabupaten Lamongan, Jawa Timur. Awalnya, Gua Maharani ditemukan tanpa sengaja oleh Bupati Lamongan saat itu, yaitu Muhammad Faried pada tanggal 6 Agustus 1992. Gua ini terletak di dalam tanah dengan kedalaman 25 meter dari permukaan tanah dan luas rongga sekitar 2500 &nbsp;Karena memiliki keindahan berupa stalaktit dan stalakmit aktif yang menarik, maka gua tersebut dibuat sebagai tempat wisata dan telah resmi dibuka pada tanggal 10 Maret 1994.'),
(19, 'Museum Sunan Drajat', '4915museum-sunan-1.jpg', -6.884398, 112.3877377, 'Ds. Drajat, Kec. Paciran, Kab. Lamongan', '<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/2288museum-sunan-3.jpg\" alt=\"\" width=\"550\" height=\"367\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Museum Sunan Drajat adalah Museum Khusus yang menyimpan benda peninggalan Sunan Drajat yang digunakan sebagai sarana agama Islam, serta benda bersejarah lainnya. Museum ini terletak diatas lahan seluas 4 hektar. Anda dapat menemukan museum ini di area makam Sunan Drajat. Difungsikan pada 30 Maret 1992, dikelola oleh Pemerintah Kabupaten Lamongan</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;<img src=\"assets/images/galeri/2969museum-sunan-2.jpg\" alt=\"\" width=\"550\" height=\"367\" /></p>', 'Museum Sunan Drajat adalah Museum Khusus yang menyimpan benda peninggalan Sunan Drajat yang digunakan sebagai sarana agama Islam, serta benda bersejarah lainnya. Museum ini terletak diatas lahan seluas 4 hektar. Anda dapat menemukan museum ini di area makam Sunan Drajat. Difungsikan pada 30 Maret 1992, dikelola oleh Pemerintah Kabupaten Lamongan'),
(20, 'Wisata Akar Langit Trinil', '4204trinil.jpg', -6.9269258, 112.2389684, 'Lembor, Sendangharjo, Kec. Brondong, Kabupaten Lamongan, Jawa Timur 62263', '<p class=\"lead\" style=\"text-align: justify;\">\"karya seni yang dibentuk oleh alam karena bentuk unik pohon trinil bukan dibentuk secara sengaja oleh tangan manusia\"</p>\r\n<div class=\"entry-content\">\r\n<p style=\"text-align: justify;\">yup&hellip;kali ini mimin akan explore pohon unik akar langit trinil tepatnya di Dusun Wide, Desa Sendangharjo, Kecamatan Brondong, Lamongan.</p>\r\n<p style=\"text-align: justify;\">Pengunjung yang akan menuju lokasi dapat menempuh melalui jalur Jalan Daendels antara Gresik-Paciran-Brondong-Tuban atau 39 km dari pusat kota lamongan</p>\r\n<p style=\"text-align: justify;\">Sekitar 4 km usai melewati Kecamatan Brondong, pengunjung belok kiri tepat di perempatan Pambon, Desa Brengkok. Begitupun dari Tuban, harus menempuh sekitar 25 Km. Tepat di perempatan Pambon ditemukan petunjuk arah ke lokasi yang hanya sekitar 3 km</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;<img src=\"assets/images/galeri/8510trinil2.jpg\" alt=\"\" width=\"550\" height=\"366\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Pengunjung yang datang dikenakan tarif Rp 5 ribu, ditambah ongkos parkir sepeda motor Rp 2 ribu dan mobil Rp 5 ribu</p>\r\n<p style=\"text-align: justify;\">Pohon dedalu perkasa atau yang lebih dikenal dengan nama pohon trinil raksasa ini merupakan pohon yang terbilang cukup unik dan tidak lazim karena bentuknya yang tidak seperti pohon kebanyakan. Biasanya sebuah pohon memiliki akar yang berada di bawah tanah, sedangkan pohon trinil raksasa ini memiliki akar yang justru meliuk ke bagian atas pohon alias tidak berada di dalam tanah. Akar-akar yang berukuran cukup besar dan kokoh ini saling melilit secara alami sehingga menghasilkan karya seni yang dibentuk oleh alam karena bentuk unik pohon trinil bukan dibentuk secara sengaja oleh tangan manusia.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;<img src=\"assets/images/galeri/2912trinil3.jpg\" alt=\"\" width=\"275\" height=\"413\" /></p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/8825trinil4.jpg\" alt=\"\" width=\"275\" height=\"413\" /></p>\r\n</div>', 'kali ini mimin akan explore pohon unik akar langit trinil tepatnya di Dusun Wide, Desa Sendangharjo, Kecamatan Brondong, Lamongan. Pengunjung yang akan menuju lokasi dapat menempuh melalui jalur Jalan Daendels antara Gresik-Paciran-Brondong-Tuban atau 39 km dari pusat kota lamongan. Sekitar 4 km usai melewati Kecamatan Brondong, pengunjung belok kiri tepat di perempatan Pambon, Desa Brengkok. Begitupun dari Tuban, harus menempuh sekitar 25 Km. Tepat di perempatan Pambon ditemukan petunjuk arah ke lokasi yang hanya sekitar 3 km'),
(21, 'Makam Nyi Andong Sari', '8723andong-sari-1.jpg', -7.2642726, 112.2348624, 'Lokasi: Ds. Cancing, Kec. Ngimbang, Kab. Lamongan', '<p style=\"text-align: justify;\">Nyi Andong Sari adalah ibunda dari Maha Patih Gadjah Mada, yang sangat mempunyai peran penting saat Kerajaan Majapahit berdiri. Makam Nyi Andong Sari terdapat di atas bukit setinggi 100 meter. Makam dari Nyi Andong Sari terdapat di puncak bukit Gunung Ratu. Untuk menuju ke sana kita harus menaiki sudut yang curam.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/1245andong-sari-1.jpg\" alt=\"\" width=\"550\" height=\"367\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Namun tak perlu khawatir, karena terdapat beberapa anak tangga untuk mencapai puncak. Sepanjang perjalanan, Anda akan ditemani monyet-monyet yang berkeliaran di area perbukitan tersebut.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;<img src=\"assets/images/galeri/3844andong-sari-2.jpg\" alt=\"\" width=\"550\" height=\"367\" /></p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/9997andong-sari-3.jpg\" alt=\"\" width=\"550\" height=\"367\" /></p>', 'Nyi Andong Sari adalah ibunda dari Maha Patih Gadjah Mada, yang sangat mempunyai peran penting saat Kerajaan Majapahit berdiri. Makam Nyi Andong Sari terdapat di atas bukit setinggi 100 meter. Makam dari Nyi Andong Sari terdapat di puncak bukit Gunung Ratu. Untuk menuju ke sana kita harus menaiki sudut yang curam.'),
(22, 'Nasi Boranan', '6741nasi-boranan-1.jpg', -7.1220682, 112.4127239, 'Sepanjang Jalanan KH. Ahmad Dahlan, Kauman, Sidoharjo, Kec. Lamongan, Kabupaten Lamongan, Jawa Timur 62214', '<p style=\"text-align: justify;\">Nasi Boranan merupakan salah satu makanan khas Lamongan yang wajib Anda coba. Makanan khas ini terdiri dari nasi, lauk, bumbu dan rempeyek. Para penjual nasi boranan biasanya berjualan secara lesehan. Kita dapat menemukan kuliner khas ini di sekitar pasar-pasar kota dan beberapa pinggir jalanan kabupaten Lamongan.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;<img src=\"assets/images/galeri/9426nasi-boranan-1.jpg\" alt=\"\" width=\"550\" height=\"367\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Nasi Boranan merupakan salah satu makanan khas Lamongan yang wajib Anda coba. Makanan khas ini terdiri dari nasi, lauk, bumbu dan rempeyek. Para penjual nasi boranan biasanya berjualan secara lesehan. Kita dapat menemukan kuliner khas ini di sekitar pasar-pasar kota dan beberapa pinggir jalanan kabupaten Lamongan.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/4555nasi-boranan-3.jpg\" alt=\"\" width=\"550\" height=\"367\" /></p>', 'Nasi Boranan merupakan salah satu makanan khas Lamongan yang wajib Anda coba. Makanan khas ini terdiri dari nasi, lauk, bumbu dan rempeyek. Para penjual nasi boranan biasanya berjualan secara lesehan. Kita dapat menemukan kuliner khas ini di sekitar pasar-pasar kota dan beberapa pinggir jalanan kabupaten Lamongan.'),
(23, 'Gunung Mas Mantup', '3998gunung-mas-mantup.jpg', -7.264269, 112.3541252, 'Lokasi : Ds. Tugu, Kec. Mantup, Kab. Lamongan', '<p class=\"lead\" style=\"text-align: justify;\">Awalnya tempat ini adalah bekas tambang kapur yang di sulap menjadi lokasi wisata alternatif yang dikenal dengan sebutan Gunung Mas</p>\r\n<div class=\"entry-content\">\r\n<p style=\"text-align: justify;\">Wisata ini terletak Desa Tugu, Kecamatan Mantup, Kabupaten Lamongan. Jika anda berada di Alun-Alun kota Lamongan anda setidaknya akan menempuh jarak sekitar 20 km ke arah selatan. Awalnya tempat ini adalah&nbsp;bekas tambang kapur yang di sulap menjadi lokasi wisata alternatif yang dikenal dengan sebutan Gunung Mas.&nbsp;Gunung Mas sendiri sebenarnya berupa rumah tinggal dari kayu yang dipercantik dengan nuansa Jawa dan China. Warna merah menjadi ciri khas setiap bangunan yang ada di kawasan ini.</p>\r\n<p style=\"text-align: justify;\">&nbsp;<img src=\"assets/images/galeri/1194gunung-mas-mantup.jpg\" alt=\"\" width=\"550\" height=\"413\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Wisata yang terletak di Jl. Raya Mantup, Tugu, Mantup, Kabupaten Lamongan memiliki sejarah yang cukup menarik dilihat dari penamaanya. Nama Gunung Mas konon karena dulu pernah ditemukan bongkahan emas dibukit ini, tetapi cerita ini kurang dapat dipercaya mengingat bukit ini adalah bukit kapur. Adapun cerita versi lainya mengatakan penamaan Gunung Mas karena bebatuan kapur bekas tambang yang ada berwarna kekuningan seperti emas.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/7310wisata-gunung-mas-4.jpg\" alt=\"\" width=\"550\" height=\"294\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Di wisata ini pengunjung akan dibuat seolah-olah berada di Cina dengan arsitektur bangunannya. Pengunjung juga dapat menikmati suasana dan nyaman dengan kolam yang berada di depan bangunan utama. Wisata ini dapat menjadi latar untuk berfoto yang&nbsp;instagramable&nbsp;yang hits bila diungga ke sosial media.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/8182wisata-gunung-mas-2.jpg\" alt=\"\" width=\"550\" height=\"413\" /></p>\r\n</div>', 'Awalnya tempat ini adalah bekas tambang kapur yang di sulap menjadi lokasi wisata alternatif yang dikenal dengan sebutan Gunung Mas. Wisata ini terletak Desa Tugu, Kecamatan Mantup, Kabupaten Lamongan. Jika anda berada di Alun-Alun kota Lamongan anda setidaknya akan menempuh jarak sekitar 20 km ke arah selatan. Awalnya tempat ini adalah&nbsp;bekas tambang kapur yang di sulap menjadi lokasi wisata alternatif yang dikenal dengan sebutan Gunung Mas.&nbsp;Gunung Mas sendiri sebenarnya berupa rumah tinggal dari kayu yang dipercantik dengan nuansa Jawa dan China. Warna merah menjadi ciri khas setiap bangunan yang ada di kawasan ini.'),
(24, 'Pantai Kutang', '6615pantai-kutang-4.jpg', -6.8859977, 112.1944471, 'Ds. Labuhan, Kec. Labuhan, Kab. Lamongan', '<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/8875img-20200122-wa0009-3.jpg\" alt=\"\" width=\"550\" height=\"498\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Salah satu jenis wisata yang sedang naik daun di kabupaten Lamongan adalah wisata pantai. Pantai Kutang yang terletak desa Labuhan ini sedang banyak dikunjungi warga Lamongan dan sekitarnya. Pesona yang disajikan bila mengunjungi pantai dengan nama unik ini adalah hamparan pasir putih dan deburan ombak yang mampu membuat suasana menjadi tenang.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/7572pantai-kutang-lamongan-2.jpg\" alt=\"\" width=\"550\" height=\"310\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Berbagai fasilitas yang ada juga disediakan guna membuat pengunjung semakin betah, seperti tersedianya parkir yang mudah, karcis pintu masuk yang pas dikantong, berbagai penjual makanan juga tersedia. Tidak hanya pantai yang menjadi daya tarik wisatawan, melainkan berbagai spot foto dan jembatan panjang yang&nbsp;<em>instagramable</em>&nbsp;dihadirkan untuk pengunjung guna menciptakan dan mengabadikan momen terbaiknya.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/8645pantai-kutang.jpg\" alt=\"\" width=\"550\" height=\"418\" /></p>', 'Salah satu jenis wisata yang sedang naik daun di kabupaten Lamongan adalah wisata pantai. Pantai Kutang yang terletak desa Labuhan ini sedang banyak dikunjungi warga Lamongan dan sekitarnya. Pesona yang disajikan bila mengunjungi pantai dengan nama unik ini adalah hamparan pasir putih dan deburan ombak yang mampu membuat suasana menjadi tenang.'),
(25, 'Wisata Air Hangat Brumbun', '7282brumbun-2.jpg', -6.9113637, 112.3967577, 'Kranji, Kec. Paciran, Kab. Lamongan', '<p class=\"lead\" style=\"text-align: justify;\">\"Sumber Air Panas dari Alam yang konon bisa untuk penyembuhan penyakit kulit\"</p>\r\n<div class=\"entry-content\">\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/8877air-panas-brumbun-1.jpg\" alt=\"\" width=\"550\" height=\"367\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Sejak tahun 2006, pemandian ini telah dijadikan sebagai tempat wisata. Air dialirkan dari kolam kecil tempat sumber air panas yang keluar dari bawah tanah, tepat di bawah sebuah pohon besar. Sebelumnya tempat ini hanya berupa dua kolam kecil dengan dinding yang sebagian besar dari batu &ndash; batuan. Sekarang meski tidak banyak perubahan, dua kolamnya telah direnovasi menjadi kolam yang lebih besar dan terbuat dari semen.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/7586brumbun-lomba.jpg\" alt=\"\" width=\"550\" height=\"413\" /></p>\r\n</div>', 'Sumber Air Panas dari Alam yang konon bisa untuk penyembuhan penyakit kulit. Sejak tahun 2006, pemandian ini telah dijadikan sebagai tempat wisata. Air dialirkan dari kolam kecil tempat sumber air panas yang keluar dari bawah tanah, tepat di bawah sebuah pohon besar. Sebelumnya tempat ini hanya berupa dua kolam kecil dengan dinding yang sebagian besar dari batu &ndash; batuan. Sekarang meski tidak banyak perubahan, dua kolamnya telah direnovasi menjadi kolam yang lebih besar dan terbuat dari semen.'),
(26, 'Soto Ayam Lamongan', '6041soto-ayam-1.jpg', -7.115353, 112.4199328, 'Ruko \"Permata, Jl. Panglima Sudirman No.18, Dapur Utara, Sidokumpul, Kec. Lamongan, Kabupaten Lamongan, Jawa Timur 62213', '<p style=\"text-align: justify;\">Jika Anda mampir ke Kabupaten Lamongan jangan lupa mencicipi Soto Khas Lamongan yang lezatnya sudah tak perlu diragukan lagi. Ciri khas dari Soto Lamongan ini adalah kuahnya yang berwarna kuning. Rasanya semakin lezat karena adanya berbagai rempah di dalamnya.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;<img src=\"assets/images/galeri/6939soto-ayam-3.jpg\" alt=\"\" width=\"550\" height=\"367\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Kuah soto yang berwarna kuning bening dengan rasa gurih dan khas terbuat dari bumbu halus, seperti bawang putih, ketumbar sangria, merica, kemiri sangrai dan kunyit. Biasanya didalam soto ini terdapat suwiran daging ayam, irisan kol, tomat, daun bawang, mie bihun, dan irisan telur telur ayam. Tapi yang paling menjadikan Soto Lamongan ini mempunyai cita rasa khas adalah dengan ditambahkannya serbuk koya yang gurih yang terbuat dari kerupuk udang yang dihaluskan kemudian ditambah dengan udang kering yang dibuburkan di atas kuah soto. Serbuk inilah yang menjadi ciri khas Soto Lamongan.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/6342soto-ayam-1-(1).jpg\" alt=\"\" width=\"550\" height=\"367\" /></p>', 'Jika Anda mampir ke Kabupaten Lamongan jangan lupa mencicipi Soto Khas Lamongan yang lezatnya sudah tak perlu diragukan lagi. Ciri khas dari Soto Lamongan ini adalah kuahnya yang berwarna kuning. Rasanya semakin lezat karena adanya berbagai rempah di dalamnya. Kuah soto yang berwarna kuning bening dengan rasa gurih dan khas terbuat dari bumbu halus, seperti bawang putih, ketumbar sangria, merica, kemiri sangrai dan kunyit. Biasanya didalam soto ini terdapat suwiran daging ayam, irisan kol, tomat, daun bawang, mie bihun, dan irisan telur telur ayam. Tapi yang paling menjadikan Soto Lamongan ini mempunyai cita rasa khas adalah dengan ditambahkannya serbuk koya yang gurih yang terbuat dari kerupuk udang yang dihaluskan kemudian ditambah dengan udang kering yang dibuburkan di atas kuah soto. Serbuk inilah yang menjadi ciri khas Soto Lamongan.'),
(27, 'Masjid Agung Lamongan', '9081masjid.jpeg', -7.1201746, 112.4122193, 'Jl. Kyai H. Hasyim Ashari No.16, Tumenggungan, Kec. Lamongan, Kabupaten Lamongan, Jawa Timur 62214', '<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/1273masjid1.jpeg\" alt=\"\" width=\"399\" height=\"600\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Masjid ini sudah dibangun sejak 1908 dan memiliki arsitektur gaya Jawa dipadukan dengan corak Islam. Bangunan masjid yang sekarang sedikit berbeda dengan bangunan asli masjid yang dulu namun secara keseluruhan tidak mengubah bentuk dan bagian-bagian di dalamnya.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/2013masjid2.jpeg\" alt=\"\" width=\"550\" height=\"413\" /></p>\r\n<p style=\"text-align: justify;\"><br />Keunikan masjid ini terletak pada model arsitekturnya. Masjid Jati dengan halaman bergapura China, dua genuk (tempat air) dan dua batu pasujudan. Ciri khas ini dikaitkan dengan sejarah Kedaton Giri tahun 1569, yang diduga ada keterkaitan di antara keduanya.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/5269masjid3.jpeg\" alt=\"\" width=\"550\" height=\"245\" /></p>', 'Masjid ini sudah dibangun sejak 1908 dan memiliki arsitektur gaya Jawa dipadukan dengan corak Islam. Bangunan masjid yang sekarang sedikit berbeda dengan bangunan asli masjid yang dulu namun secara keseluruhan tidak mengubah bentuk dan bagian-bagian di dalamnya. Keunikan masjid ini terletak pada model arsitekturnya. Masjid Jati dengan halaman bergapura China, dua genuk (tempat air) dan dua batu pasujudan. Ciri khas ini dikaitkan dengan sejarah Kedaton Giri tahun 1569, yang diduga ada keterkaitan di antara keduanya.'),
(28, 'Wisata Gunung Pegat', '6686gunug.jpeg', -7.1314742, 112.1594687, 'dsn.prambutan, Prambutan, Kawedusan, Kec. Ponggok, Kabupaten Blitar, Jawa Timur 66153', '<p style=\"text-align: justify;\">Bagi warga Lamongan, nama gunung pegat sudah tidak asing lagi. Kisah yang melatar belakangi gunung pegat sudah sangat mashur sejak era kolonial hingga era modern saat ini.</p>\r\n<p style=\"text-align: justify;\">Kisah yang begitu diyakini oleh masyarakat sekitar sudah terjadi secara turun temurun secara bergenerasi.Gunung Pegat terletak di&nbsp;<strong>Desa Karang Kembang</strong>&nbsp;yang juga merupakan wilayah dari Kecamatan&nbsp;<strong>Babat</strong>&nbsp;Kabupaten Lamongan.</p>\r\n<p style=\"text-align: justify;\">Jika anda sedang melakukan perjalanan dari arah Babat menuju Jombang, atau dari arah Jombang menuju Babat. Anda akan melewati gunung ini, yang melintasi jalan raya Babat-Jombang dari timur-barat.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/7624gunug.jpeg\" alt=\"\" width=\"550\" height=\"310\" />&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>Sejarah Gunung Pegat Lamongan</strong><br />Seperti halnya kisah&nbsp;<strong>mistis&nbsp;</strong>di tempat lain, gunung Pegat yang sudah menjadi kisah legenda bagi masyarakat sekitar khususnya, tentu juga memiliki cerita sejarah asal usulnya.</p>\r\n<p style=\"text-align: justify;\">Bagaimana asal muasal dari gunung Pegat ini?</p>\r\n<p style=\"text-align: justify;\">Dari kabar yang beredar di sekitar lokasi, penamaan gunung pegat konon dimulai pada saat&nbsp;<strong>kolonial Belanda</strong>&nbsp;sedang berkuasa di wilayah tersebut.</p>\r\n<p style=\"text-align: justify;\">Guna melancarkan arus ekonomi pemerintah kolonial, mereka melaksanakan tahap pembangunan jalan yang menjadi titik perdagangan, yaitu Babat-Jombang. Selain itu, konon pemerintah kolonial juga membangun lintasan kereta api di area tersebut.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/5017gunung2.jpeg\" alt=\"\" width=\"550\" height=\"309\" />&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Namun, di kawasan tersebut terdapat gunung kapur yang menghalangi jalan, sehingga pemerintah kolonial terpaksa harus melakukan sebuah pekerjaan berat, yaitu membelah gunung tersebut.</p>\r\n<p style=\"text-align: justify;\">Salah satu kekejaman kolonial seperti yang telah kita dengar dari kakek-nenek kita adalah penerapan&nbsp;<strong>kerja rodi/kerja paksa</strong>.</p>\r\n<p style=\"text-align: justify;\">Nah, di wilayah sekitar gunung Pegat ini, juga tidak luput dari kekejaman kerja paksa. Dimana masyarakat sekitar dipaksa untuk melakukan pekerjaan membelah gunung tanpa digaji, bahkan tanpa di beri makan dan minum! Konon dari kerja paksa ini, juga banyak memakan korban jiwa akibat dari kerja paksa.</p>\r\n<p style=\"text-align: justify;\">Berawal dari sinilah, warga yang menjadi pelaku kerja paksa dengan perasaan sakit, emosi dan penuh keterpaksaan ini mengucapkan&nbsp;<strong>sumpah</strong>. Bahwa, siapapun yang melewati gunung ini, maka tidak akan menemukan&nbsp;<strong>kebahagiaan</strong>, jika sudah berkeluarga.</p>\r\n<p style=\"text-align: justify;\">Dan bagi yang belum berkeluarga, niscaya keluarga tersebut tidaklah menjadi keluarga yang bahagia. Akan tetapi menjadi keluarga yang selalu dihinggapi&nbsp;<strong>kesulitan hidup</strong>.&nbsp;Terutama mengalami&nbsp;<strong>perpisahan/pegat</strong>&nbsp;(Jawa; Perpisahan).</p>\r\n<p style=\"text-align: justify;\">Begitulah kisah yang menjadi titik awal penamaan dari gunung Pegat. Kisah tersebut hingga kini pun masih banyak dihapal, terutama warga setempat di Desa&nbsp;<strong>Karang Kembang Babat</strong>.</p>\r\n<p style=\"text-align: justify;\">Lalu, bagaimana kisah gunung Pegat hingga kini menjadi sebuah cerita mitos namun masih tetap dipegang kepercayaannya oleh warga setempat?</p>\r\n<p style=\"text-align: justify;\">Bahkan tidak jarang warga yang berada jauh dari Desa Karang Kembang pun ikut mempercayai adanya mitos tersebut.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/5396gunung3.jpg\" alt=\"\" width=\"550\" height=\"308\" /></p>', 'Bagi warga Lamongan, nama gunung pegat sudah tidak asing lagi. Kisah yang melatar belakangi gunung pegat sudah sangat mashur sejak era kolonial hingga era modern saat ini. Kisah yang begitu diyakini oleh masyarakat sekitar sudah terjadi secara turun temurun secara bergenerasi.'),
(29, 'Kampung Inspirasi', '5018kampung-inspirasi-2.jpeg', -7.1319077, 112.4192829, 'Tlogoanyar, Kec. Lamongan, Kabupaten Lamongan, Jawa Timur 62218', '<p style=\"text-align: justify;\">&nbsp;<img src=\"assets/images/galeri/8257kampung-inspirasi-2.jpeg\" alt=\"\" width=\"550\" height=\"309\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Sejak diresmikan oleh beberapa pemangku kepentingan di Lamongan dan mulai dibuka 1 April 2018, Kampung Inspirasi Lamongan semakin berkembang dan menjadi pusat wisata edukasi unggulan.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/1927kampung-inspirasi.jpg\" alt=\"\" width=\"550\" height=\"364\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Fasilitas yang ditawarkan antara lain; bidang wisata edukasi, outbound alam,&nbsp;<em>entrepreneurship camp in holiday</em>,&nbsp; event sosial budaya, dan&nbsp;<em>social impact movement</em>. Kampung Inspirasi memiliki lokasi yang cukup strategis yaitu di pusat Kota Lamongan tepatnya Jl. Sumargo Gang Flamboyan no. 29, Lamongan.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/4746kampung_inspirasi.png\" alt=\"\" width=\"550\" height=\"285\" />&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Kampung Inspirasi Lamongan ini dirintis oleh pasangan muda yang baru menikah pada bulan Agustus 2018. Mereka adalah Sulthan Alfathir dan Anik Haryanti. Keduanya adalah alumni Fakultas Teknologi Pertanian Universitas Brawijaya Malang angkatan 2013.</p>', 'Sejak diresmikan oleh beberapa pemangku kepentingan di Lamongan dan mulai dibuka 1 April 2018, Kampung Inspirasi Lamongan semakin berkembang dan menjadi pusat wisata edukasi unggulan. Fasilitas yang ditawarkan antara lain; bidang wisata edukasi, outbound alam,&nbsp;<em>entrepreneurship camp in holiday</em>,&nbsp; event sosial budaya, dan&nbsp;<em>social impact movement</em>. Kampung Inspirasi memiliki lokasi yang cukup strategis yaitu di pusat Kota Lamongan tepatnya Jl. Sumargo Gang Flamboyan no. 29, Lamongan.'),
(30, 'Wisata Edukasi Gondang Outbond (WEGO)', '52701.-wego.jpg', -7.2044727, 112.2787815, 'Jl. Raya Deketagung, Kec. Sugio, Kab. Lamongan.', '<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/17721.-wego.jpg\" alt=\"\" width=\"550\" height=\"309\" />&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Spot wisata ini berada sekitar 15 KM arah selatan Lamongan Kota, yang bisa anda dan keluarga kunjungi. Terdapat juga beberapa spot menarik yang bisa dijadikan jujugan ketika berkunjung ke sini.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/7294wego-3.jpg\" alt=\"\" width=\"550\" height=\"309\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Terdapat spot seperti Kebun Binatang Mini, Pulau Cinta, 2 pesawat tempur dan boeing, waterpark dan flyingfox yang ada di lahan seluas 36 Ha yang bisa anda explore dari ujung ke ujung. Banyak spot &ndash; spot untuk berfoto yang bisa anda gunakan dengan background-background yang sangat menarik.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/3376wego-4.jpg\" alt=\"\" width=\"550\" height=\"309\" /></p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Bahkan anda bisa masuk dan melihat keindahan dalam pesawat boeing yang ada di spot ini yang sudah dilengkapi lighting sehingga terlihat begitu menarik.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><img src=\"assets/images/galeri/5077wego-air.jpg\" alt=\"\" width=\"550\" height=\"310\" /></p>', 'Spot wisata ini berada sekitar 15 KM arah selatan Lamongan Kota, yang bisa anda dan keluarga kunjungi. Terdapat juga beberapa spot menarik yang bisa dijadikan jujugan ketika berkunjung ke sini. Terdapat spot seperti Kebun Binatang Mini, Pulau Cinta, 2 pesawat tempur dan boeing, waterpark dan flyingfox yang ada di lahan seluas 36 Ha yang bisa anda explore dari ujung ke ujung. Banyak spot &ndash; spot untuk berfoto yang bisa anda gunakan dengan background-background yang sangat menarik.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `user`, `pass`) VALUES
(1, 'admin', 'admin'),
(3, 'aditya', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`option_name`);

--
-- Indexes for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  ADD PRIMARY KEY (`id_tempat`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  MODIFY `id_tempat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
