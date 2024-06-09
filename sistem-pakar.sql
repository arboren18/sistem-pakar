-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2024 at 02:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem-pakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `role`) VALUES
(2, 'admin1@gmail.com', '$2y$10$jysuC3aCCI0I4EBl6G7AY.tqancUcxEQII40/YJp5yEla3lbEbAf6', 'superadmin'),
(4, 'dokter@gmail.com', '$2y$10$V.MB0a2juHWJG4JLnRW.i.GKOXu49FVflDheFsIKavsQVm8yDx.WO', 'dokter');

-- --------------------------------------------------------

--
-- Table structure for table `aturan`
--

CREATE TABLE `aturan` (
  `id_penyakit` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aturan`
--

INSERT INTO `aturan` (`id_penyakit`, `id_gejala`) VALUES
(15, 53),
(15, 54),
(15, 55),
(15, 56),
(15, 57),
(15, 58),
(15, 59),
(15, 60),
(15, 61),
(15, 62),
(15, 64),
(15, 66),
(15, 68),
(15, 69),
(15, 70),
(15, 72),
(15, 73),
(15, 74),
(15, 75),
(15, 76),
(16, 53),
(16, 54),
(16, 55),
(16, 56),
(16, 58),
(16, 59),
(16, 60),
(16, 62),
(16, 63),
(16, 65),
(16, 66),
(16, 67),
(16, 68),
(16, 69),
(16, 71),
(16, 72),
(16, 73),
(16, 74),
(16, 75),
(16, 77),
(17, 53),
(17, 54),
(17, 56),
(17, 57),
(17, 58),
(17, 59),
(17, 61),
(17, 62),
(17, 63),
(17, 67),
(17, 65),
(17, 66),
(17, 69),
(17, 70),
(17, 71),
(17, 72),
(17, 73),
(17, 75),
(17, 76),
(17, 77),
(18, 53),
(18, 54),
(18, 55),
(18, 56),
(18, 57),
(18, 58),
(18, 59),
(18, 60),
(18, 61),
(18, 62),
(18, 63),
(18, 64),
(18, 65),
(18, 67),
(18, 68),
(18, 70),
(18, 71),
(18, 72),
(18, 73),
(18, 75),
(18, 76),
(18, 77),
(19, 55),
(19, 56),
(19, 58),
(19, 59),
(19, 60),
(19, 61),
(19, 63),
(19, 65),
(19, 66),
(19, 68),
(19, 69),
(19, 71),
(19, 74),
(19, 75),
(19, 76),
(19, 77),
(19, 72),
(19, 67),
(19, 70),
(19, 53),
(20, 53),
(20, 54),
(20, 56),
(20, 57),
(20, 59),
(20, 60),
(20, 61),
(20, 63),
(20, 64),
(20, 66),
(20, 67),
(20, 68),
(20, 69),
(20, 70),
(20, 72),
(20, 73),
(20, 74),
(20, 76),
(20, 77),
(21, 54),
(21, 55),
(21, 56),
(21, 57),
(21, 58),
(21, 59),
(21, 60),
(21, 61),
(21, 62),
(21, 63),
(21, 64),
(21, 65),
(21, 66),
(21, 68),
(21, 69),
(21, 71),
(21, 72),
(21, 73),
(21, 74),
(21, 75),
(21, 76),
(21, 77),
(22, 54),
(22, 56),
(22, 57),
(22, 58),
(22, 59),
(22, 60),
(22, 61),
(22, 62),
(22, 63),
(22, 64),
(22, 65),
(22, 66),
(22, 67),
(22, 68),
(22, 70),
(22, 71),
(22, 72),
(22, 73),
(22, 74),
(22, 75),
(22, 76),
(22, 77),
(23, 53),
(23, 54),
(23, 55),
(23, 56),
(23, 58),
(23, 59),
(23, 60),
(23, 61),
(23, 62),
(23, 64),
(23, 65),
(23, 66),
(23, 67),
(23, 68),
(23, 69),
(23, 70),
(23, 71),
(23, 72),
(23, 73),
(23, 74),
(23, 76),
(23, 77),
(24, 53),
(24, 56),
(24, 55),
(24, 57),
(24, 58),
(24, 59),
(24, 60),
(24, 61),
(24, 62),
(24, 63),
(24, 65),
(24, 67),
(24, 68),
(24, 69),
(24, 70),
(24, 71),
(24, 72),
(24, 73),
(24, 74),
(24, 75),
(24, 76),
(25, 53),
(25, 54),
(25, 55),
(25, 57),
(25, 58),
(25, 59),
(25, 60),
(25, 61),
(25, 62),
(25, 63),
(25, 64),
(25, 65),
(25, 66),
(25, 67),
(25, 69),
(25, 70),
(25, 71),
(25, 73),
(25, 74),
(25, 75),
(25, 76),
(25, 77);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `nama`) VALUES
(53, 'Demam'),
(54, 'Batuk Kering'),
(55, 'Sesak Nafas'),
(56, 'Kelelahan'),
(57, 'Nyeri Otot'),
(58, 'Sakit Kepala'),
(59, 'Kehilangan Rasa/Aroma'),
(60, 'Sakit Tenggorokan'),
(61, 'Hidung Tersumbat'),
(62, 'Mual atau Muntah'),
(63, 'Diare'),
(64, 'Ruam Kulit pada Jari'),
(65, 'Mata Merah'),
(66, 'Nyeri Dada'),
(67, 'Delirium (Kebingungan)'),
(68, 'Kehilangan Selera Makan'),
(69, 'Nyeri Perut'),
(70, 'Menggigil'),
(71, 'Sakit Punggung'),
(72, 'Peningkatan Detak Jantung'),
(73, 'Vertigo (Pusing)'),
(74, 'Insomnia (kesulitan tidur)'),
(75, 'Keringat Malam'),
(76, 'Suara Serak'),
(77, 'Gusi Berdarah');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `nama`, `foto`, `deskripsi`) VALUES
(12, 'Pfizer-BioNTech', '1717922256_moderna.jpg', 'Vaksin berbasis mRNA dengan efikasi sekitar 95%, disimpan pada suhu -70°C, dan diberikan dalam dua dosis dengan jarak 21 hari.'),
(13, 'Moderna', '1717922307_images (1).jpeg', 'Menggunakan teknologi mRNA dengan efikasi sekitar 94.1%, disimpan pada suhu -20°C, dan diberikan dalam dua dosis dengan jarak 28 hari.'),
(14, 'AstraZeneca', '1717922355_vaksin-astrazeneca-3_169.jpeg', 'Vaksin vektor viral menggunakan adenovirus simpanse, dengan efikasi sekitar 70%, disimpan pada suhu lemari es, dan diberikan dalam dua dosis dengan jarak 4-12 minggu.'),
(15, 'Johnson & Johnson', '1717922392_images (2).jpeg', 'vaksin vektor viral berbasis adenovirus 26, dengan efikasi sekitar 66% untuk mencegah infeksi sedang hingga parah, disimpan pada suhu lemari es, dan diberikan dalam satu dosis.'),
(16, 'Sinopharm', '1717922426_Vaksin-765x510.png', 'Vaksin yang diinaktivasi dengan efikasi sekitar 79%, disimpan pada suhu lemari es, dan diberikan dalam dua dosis dengan jarak 3-4 minggu.'),
(17, 'Sinovac', '1717922456_vaksin-sinovac.jpg', 'Vaksin yang diinaktivasi dengan efikasi sekitar 50-78%, disimpan pada suhu lemari es, dan diberikan dalam dua dosis dengan jarak 2-4 minggu.'),
(18, 'Covaxin', '1717922485_bharat-biotech-covaxin-packshot.jpg', 'Vaksin yang diinaktivasi dengan efikasi sekitar 81% dalam uji klinis tahap 3, disimpan pada suhu lemari es, dan diberikan dalam dua dosis dengan jarak 4 minggu.'),
(19, 'Sputnik V', '1717922514_mengenal-vaksin-sputnik-untuk-covid-19.jpg', 'vaksin vektor viral menggunakan dua adenovirus berbeda (Ad26 dan Ad5), dengan efikasi sekitar 91.6%, disimpan pada suhu lemari es, dan diberikan dalam dua dosis dengan jarak 3 minggu.'),
(20, 'CanSino', '1717922541_vaksin-cansino_169.jpeg', 'vaksin vektor viral berbasis adenovirus 5, dengan efikasi sekitar 65.28% untuk mencegah infeksi simtomatik, disimpan pada suhu lemari es, dan diberikan dalam satu dosis.'),
(21, 'Covovax', '1717922574_944888279p.jpg', 'vaksin berbasis protein subunit dengan efikasi sekitar 89.7%, disimpan pada suhu lemari es, dan diberikan dalam dua dosis dengan jarak 3 minggu.'),
(22, 'EpiVacCorona', '1717922616_images (3).jpeg', 'vaksin peptida sintetis dengan data efikasi yang terbatas dan dilaporkan rendah, disimpan pada suhu lemari es, dan diberikan dalam dua dosis dengan jarak 3-4 minggu.'),
(23, 'QazVac', '1717922646_kazakhstan-dilaporkan-berhasil-mengirimkan-batch-pertama-vaksin-covid-19_210428142423-849.jpg', 'vaksin yang diinaktivasi dengan data efikasi terbatas, disimpan pada suhu lemari es, dan diberikan dalam dua dosis dengan jarak 3 minggu.'),
(24, 'Abdala', '1717922676_images (4).jpeg', 'vaksin berbasis protein subunit dengan efikasi sekitar 92.28%, disimpan pada suhu lemari es, dan diberikan dalam tiga dosis dengan jarak 2 minggu'),
(25, 'Soberana 02', '1717922706_images (5).jpeg', 'vaksin protein konjugasi dengan efikasi sekitar 62% setelah dua dosis, yang meningkat setelah dosis ketiga, disimpan pada suhu lemari es, dan diberikan dalam dua atau tiga dosis dengan jarak 2-4 minggu.'),
(26, 'ZF2001', '1717922757_images (6).jpeg', 'vaksin protein subunit dengan data efikasi terbatas namun menjanjikan, disimpan pada suhu lemari es, dan diberikan dalam tiga dosis dengan jarak 1 bulan.');

-- --------------------------------------------------------

--
-- Table structure for table `obat_penyakit`
--

CREATE TABLE `obat_penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obat_penyakit`
--

INSERT INTO `obat_penyakit` (`id_penyakit`, `id_obat`) VALUES
(22, 15),
(22, 19),
(22, 23),
(15, 12),
(15, 13),
(15, 14),
(16, 15),
(16, 16),
(16, 17),
(17, 18),
(17, 19),
(17, 20),
(18, 20),
(18, 21),
(18, 22),
(19, 23),
(19, 24),
(19, 25),
(21, 17),
(21, 21),
(21, 25),
(23, 13),
(23, 16),
(23, 21),
(24, 12),
(24, 16),
(24, 22),
(25, 13),
(25, 17),
(25, 19),
(20, 18),
(20, 22),
(20, 26);

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `penjelasan` text NOT NULL,
  `tindakan` text NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `nama`, `penjelasan`, `tindakan`, `foto`) VALUES
(15, 'Varian Alpha', 'Varian corona Alpha yang merupakan varian virus corona yang pertama kali muncul di Inggris pada Desember 2020.', 'vaksinasi, protokol kesehatan', '1717919940_novel-corona-virus.jpg'),
(16, 'Varian Beta', 'Virus corona varian Beta pertama kali ditemukan di Teluk Nelson Mendela. Varian ini dua kali lebih infeksius dibandingkan virus COVID-19 yang muncul pertama kali.', 'vaksinasi, protokol kesehatan', '1717919895_o4is5gbek9cjwjdvd0pyd2383of0n76p.jpg'),
(17, 'Varian Gamma', 'Varian Gamma adalah varian yang ditemukan di Brasil. Varian ini awalnya mengakibatkan ledakan wabah di Brasil hingga memicu kenaikan jumlah pasien dan angka kematian yang drastis. Para peneliti di Harvard University, Amerika Serikat mendapatkan fakta tingkat kematian akibat varian Gamma lebih tinggi dibandingkan dengan varian awalnya.', 'vaksinasi, protokol kesehatan', '1717919923_cafarella-covid.jpg'),
(18, 'Varian Delta', 'Varian corona Delta pertama kali ditemukan di India yang diduga menyebabkan peningkatan kasus pada gelombang kedua pandemi di India sejak Februari 2021. Varian ini telah ditemukan di lebih dari 74 negara. Pada 3 Mei 2021, varian ini juga telah masuk ke Indonesia. Penularan dan penyebaran varian Delta mencapai 40% lebih cepat dibandingkan varian Alpha. Selain itu, varian ini dapat menimbulkan komplikasi yang lebih parah pada pasien lansia dan pasien dengan penyakit penyerta seperti diabetes dan hipertensi.', 'vaksinasi, protokol kesehatan', '1717919976_website-cms-16801915727763692.webp'),
(19, 'Varian Epsilon', 'Varian Epsilon merupakan varian COVID-19 yang muncul dari negara bagian California di Amerika Serikat pada Juli 2020. Munculnya varian ini diikuti dengan bertambahnya kasus positif COVID-19 di Amerika Serikat. Di seluruh dunia, sebanyak 46 negara melaporkan kasus positif akibat terjangkitnya varian ini. Namun, tingkat penularannya tidak begitu tinggi seperti di Amerika Serikat. Indonesia tidak melaporkan munculnya varian ini di dalam negeri.', 'protokol', '1717920046_ketahui-tentang-varian-kappa-mutasi-virus-covid-19-terbaru-halodoc.jpg'),
(20, 'Varian Zeta', 'Varian virus corona ini lebih dahulu terdeteksi di Rio de Janeiro, Brasil. Sebelumnya, varian ini sudah menyebar dan terdeteksi lebih dulu di Inggris. Varian virus corona Zeta dianggap tidak menyebabkan kekhawatiran dari segi penyebarannya.', 'Protokol', '1717920096_images.jpeg'),
(21, 'Varian Eta', 'Varian Eta adalah varian yang baru didapatkan dan diidentifikasi di Inggris. Menurut para ilmuwan, varian ini memiliki beberapa mutasi pada gen. Meski demikian, sejauh ini tak ada yang bisa membuktikan bahwa virus corona varian Eta ini lebih menular hingga menyebabkan keparahan pada penderitanya.', 'protokol', '1717920138_BERSAMA-CEGAH-VIRUS-CORONA-MENGEPIDEMI-INDONESIA.jpg'),
(22, 'Varian Theta', 'Virus varian ini dideteksi ada di Filipina. Varian ini belum cukup memiliki bukti bahwa akan berdampak pada kesehatan masyarakat seperti kebanyakan varian lainnya. Namun, varian ini memiliki kemungkinan besar lebih cepat dalam tingkat penularannya.', 'protokol', '1717920189_c3df9bef104fa61b9a77baeb267b5a90.jpg'),
(23, 'Varian Lota', 'Varian yang ditemukan di New York, Amerika Serikat pada bulan November belum diketahui apakah dapat menular atau tidak. Varian virus ini dikabarkan belum tersebar luas baik di New York maupun negara-negara lainnya.', 'protokol', '1717920257_100_varian-terbaru-virus-covid-19-seberapa-berbahaya-virus-omicron.jpg'),
(24, 'Varian Kappa', 'Varian corona Kappa merupakan varian baru yang memiliki mutasi ganda dari negara India. Dilaporkan bahwa ada sebanyak lebih dari 2,7 juta kasus infeksi yang telah terjadi. Varian ini juga diduga dapat menyebabkan berkurangnya efektivitas pada vaksin.', 'protokol', '1717920301_557577_3-2-2021_19-25-38.jpeg'),
(25, 'Varian Lambda', 'Varian virus ini pertama kali ditemukan di Peru. Selain Peru, sejauh ini varian Lambda telah terdeteksi pula di Chile, Argentina, dan Ekuador. Varian baru ini sangat menular dibandingkan dengan virus aslinya.', 'protokol', '1717921014_5fef393177153.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `penyakit_id` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `penyakit_id`, `user_id`, `tanggal`) VALUES
(28, 22, '089832849234', '2024-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `nama` varchar(50) NOT NULL,
  `no_telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`nama`, `no_telp`) VALUES
('Ghazi', '089832849234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aturan`
--
ALTER TABLE `aturan`
  ADD KEY `id_gejala` (`id_gejala`),
  ADD KEY `id_penyakit` (`id_penyakit`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat_penyakit`
--
ALTER TABLE `obat_penyakit`
  ADD KEY `id_obat` (`id_obat`),
  ADD KEY `id_penyakit` (`id_penyakit`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penyakit_id` (`penyakit_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`no_telp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aturan`
--
ALTER TABLE `aturan`
  ADD CONSTRAINT `aturan_ibfk_1` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aturan_ibfk_2` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obat_penyakit`
--
ALTER TABLE `obat_penyakit`
  ADD CONSTRAINT `obat_penyakit_ibfk_1` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obat_penyakit_ibfk_2` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`no_telp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
