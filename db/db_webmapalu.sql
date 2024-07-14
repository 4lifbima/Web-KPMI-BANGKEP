-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Apr 2021 pada 00.58
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_webmapalu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(1, 'Penyembelihan Hewan Kurban Idul Adha 2017', '2017-01-22 06:18:01', 'Idul Adha yang biasa disebut lebaran haji atapun lebaran kurban sangat identik dengan penyembelihan hewan kurban. M-Sekolah tahun ini juga melakukan penyembelihan hewan kurban. Yang rencananya akan dihadiri oleh guru-guru, siswa dan pengurus OSIS.', '2017-01-22', '2017-01-22', 'Kampus UMMI', '08.00 - 11.00 WIB', 'Dihadiri oleh anggota', 'Ayudita Puspitasari'),
(2, 'Peluncuran Website Resmi MAPALU', '2017-01-22 06:26:33', 'Peluncuran website resmi  M-Sekolah, sebagai media informasi dan akademik online untuk pelayanan pendidikan yang lebih baik kepada siswa, orangtua, dan masyarakat pada umumnya semakin meningkat.', '2017-01-04', '2017-01-04', 'Kampus UMMI', '07.30 - 12.00 WIB', '-', 'Ayudita Puspitasari'),
(3, 'Penerimaan Raport Semester Ganjil Tahun Ajaran 2017-2018', '2017-01-22 06:29:49', 'Berakhirnya semester ganjil tahun pelajaran 2016-2017, ditandai dengan pembagian laporan hasil belajar.', '2017-02-17', '2017-02-17', 'Kampus UMMI', '07.30 - 12.00 WIB', 'Untuk kelas XI dan XII, pembagian raport dimulai pukul 07.30 WIB. Sedangkan untuk kelas X pada pukul 09.00 WIB. Raport diambil oleh orang tua/wali murid masing-masing.', 'Ayudita Puspitasari'),
(4, 'Latihan Gabungan Navigasi Darat', '2020-11-21 08:20:51', 'Latihan Gabungan bersama PTM Rayon', '2020-12-01', '2020-12-11', 'Gunung Everets', '08.00 - Selesai', '-', 'Ayudita Puspitasari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(2, 'Dasar-dasar CSS', 'Modul dasar-dasar CSS 3. Modul ini membantu anda untuk memahami struktur dasar CSS', '2017-01-23 04:30:01', 'Drs. Joko', 0, 'ab9a183ff240deadbedaff78e639af2f.pdf'),
(3, '14 Teknik Komunikasi Yang Paling Efektif', 'Ebook 14 teknik komunikasi paling efektif membantu anda untuk berkomunikasi dengan baik dan benar', '2017-01-23 15:26:06', 'Drs. Joko', 0, 'ab2cb34682bd94f30f2347523112ffb9.pdf'),
(4, 'Bagaimana Membentuk Pola Pikir yang Baru', 'Ebook ini membantu anda membentuk pola pikir baru.', '2017-01-23 15:27:07', 'Drs. Joko', 0, '30f588eb5c55324f8d18213f11651855.pdf'),
(5, '7 Tips Penting mengatasi Kritik', '7 Tips Penting mengatasi Kritik', '2017-01-23 15:27:44', 'Drs. Joko', 0, '329a62b25ad475a148e1546aa3db41de.docx'),
(6, '8 Racun dalam kehidupan kita', '8 Racun dalam kehidupan kita', '2017-01-23 15:28:17', 'Drs. Joko', 0, '8e38ad4948ba13758683dea443fbe6be.docx'),
(7, 'Jurnal Teknolgi Informasi', 'Jurnal Teknolgi Informasi', '2017-01-25 03:18:53', 'Moech Fazar', 0, '87ae0f009714ddfdd79e2977b2a64632.pdf'),
(8, 'Jurnal Teknolgi Informasi 2', 'Jurnal Teknolgi Informasi', '2017-01-25 03:19:22', 'Moech Fazar', 0, 'c4e966ba2c6e142155082854dc5b3602.pdf'),
(9, 'Naskah Publikasi IT', 'Naskah Teknolgi Informasi', '2017-01-25 03:21:04', 'Moech Fazar', 0, '71380b3cf16a17a02382098c028ece9c.pdf'),
(10, 'Modul Teknologi Informasi', 'Modul Teknologi Informasi', '2017-01-25 03:22:08', 'Moech Fazar', 0, '029143a3980232ab2900d94df36dbb0c.pdf'),
(11, 'Modul Teknologi Informasi Part II', 'Modul Teknologi Informasi', '2017-01-25 03:22:54', 'Moech Fazar', 0, 'ea8f3f732576083156e509657614f551.pdf'),
(12, 'Modul Teknologi Informasi Part III', 'Modul Teknologi Informasi', '2017-01-25 03:23:21', 'Moech Fazar', 0, 'c5e5e7d16e4cd6c3d22c11f64b0db2af.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(9, 'Fazar Sidk', 'fazarstd@gmail.com', '085602514982', 'Hi', '2020-11-21 13:19:03', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Gunung Hutan', '2016-09-06 05:49:04'),
(2, 'Rafting', '2016-09-06 05:50:01'),
(3, 'Climbing', '2016-09-06 05:59:39'),
(5, 'Penelitian', '2016-09-06 06:19:26'),
(6, 'Prestasi', '2016-09-07 02:51:09'),
(13, 'Kampus', '2017-01-13 13:20:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'Badai Selatan (BASE)'),
(2, 'Belerang Delima (BEDIL)'),
(3, 'Amunisi Rimba (AR)'),
(4, 'Rantai Baja (RABA)'),
(5, 'Gemuruh Alam (GEMA)'),
(6, 'Bara Api (BARA)'),
(7, 'Hujan Rimba (HR)'),
(8, 'Tapak Lembah (TL)'),
(9, 'Mutiara Api (MA)'),
(10, 'Dasa Nara (DARA)'),
(11, 'Elang Rimba (ELBA)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(6, 'Moech Fazar Sidik', 'fazarstd@gmail.com', ' Hi I&#039;m Fazar', '2020-11-21 13:21:09', '1', 24, 0),
(7, 'Moech Fazar', '', 'Hallo Fazar', '2020-11-21 13:22:56', '1', 24, 6),
(8, 'Han Jipyong', 'moechfazar@gmail.com', ' Awesome!', '2020-11-21 13:31:06', '1', 24, 0),
(9, 'Moech Fazar', '', 'Thanks!', '2020-11-21 13:32:09', '1', 24, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(6, 'Moech Fazar', NULL, 'L', 'fazarstd', '616b962f69dc4082dd54605b6fa72e25', NULL, 'fazarstd@gmail.com', '085602514982', NULL, NULL, NULL, NULL, 1, '1', '2020-11-18 07:12:39', '6cac7fe058c044d4fdf31fb38da7a9dc.png'),
(7, 'Aulia Salsabila', NULL, 'P', 'asalsabila', 'd6cf6bebc8b9f9ab344695dc4c3c94f5', NULL, 'mapalu.sukabumi@gmail.com', '085602511111', NULL, NULL, NULL, NULL, 1, '1', '2020-12-16 12:05:01', 'f20c2df6215146a47a2cf6c58ddf5dc6.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(2, 'Pengumuman Pembagian Raport Semester Ganjil Tahun Ajaran 2016-2017', 'Menjelang berakhirnya proses belajar-mengajar di semester ganjil tahun ajaran 2016-2017, maka akan diadakan pembagian hasil belajar/raport pada tanggal 4 Maret 2017 pukul 07.30 WIB.\r\nYang bertempat di M-Sekolah. Raport diambil oleh orang tua/wali kelas murid masing-masing', '2017-01-21 01:16:20', 'Moech Fazar'),
(3, 'Pengumuman Peresmian dan Launching Website Perdana MAPALU', 'Peresmian dan launching website resmi M-Sekolah akan diadakan pada hari 23 Desember 2016 pukul 10.00, bertepatan dengan pembagian raport semester ganjil tahun ajaran 2016-2017', '2017-01-22 07:16:16', 'Ayudita Puspitasari'),
(4, 'Pengumuman Proses Belajar di Semester Genap Tahun Ajaran 2016-2017', 'Setelah libur semester ganjil tahun ajaran 2016-2017, proses belajar mengajar di semester genap tahun ajaran 2016-2017 mulai aktif kembali tanggal 2 Maret 2017.', '2017-01-22 07:15:28', 'Ayudita Puspitasari'),
(5, 'Persiapan anggota menjelang latgab 2020', 'Persiapan panitia latgab menjelang dimulainya kegiatan mencakup pendanaan, administrasi, survey, perizinan, dll.', '2020-11-21 08:25:58', 'Ayudita Puspitasari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 08:04:59', '::1', 'Chrome'),
(931, '2020-11-17 22:24:11', '::1', 'Chrome'),
(932, '2020-11-20 17:45:11', '::1', 'Chrome'),
(933, '2020-11-20 18:32:43', '127.0.0.1', 'Chrome'),
(934, '2020-11-21 06:48:09', '127.0.0.1', 'Chrome'),
(935, '2020-11-23 00:31:56', '127.0.0.1', 'Chrome'),
(936, '2020-11-24 01:13:15', '127.0.0.1', 'Chrome'),
(937, '2020-11-25 01:08:03', '127.0.0.1', 'Chrome'),
(938, '2020-11-26 01:13:22', '127.0.0.1', 'Chrome'),
(939, '2020-11-27 00:06:01', '127.0.0.1', 'Chrome'),
(940, '2020-11-28 05:50:48', '127.0.0.1', 'Chrome'),
(941, '2020-11-30 12:41:31', '127.0.0.1', 'Chrome'),
(942, '2020-12-01 08:17:35', '127.0.0.1', 'Chrome'),
(943, '2020-12-02 12:54:02', '127.0.0.1', 'Chrome'),
(944, '2020-12-12 16:29:38', '::1', 'Chrome'),
(945, '2020-12-14 22:33:07', '::1', 'Chrome'),
(946, '2020-12-16 20:51:52', '::1', 'Chrome'),
(947, '2020-12-18 05:59:25', '::1', 'Chrome'),
(948, '2020-12-18 20:59:30', '::1', 'Chrome'),
(949, '2020-12-25 03:52:56', '::1', 'Chrome'),
(950, '2021-01-24 03:40:45', '::1', 'Chrome'),
(951, '2021-01-29 01:24:32', '::1', 'Chrome'),
(952, '2021-04-15 22:52:35', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES
(1, 'MPA.043.HR', 'Moech Fazar Sidik', 'L', 7, 'a3273eee27ce8ad937687ab6ab900d6d.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(20, 'UMMI Peringkat 3 LLDIKTI 4 Program Kreativitas Mahasiswa 2020', '<p>Sukabumi, ummi.ac.id - Universitas Muhammadiyah Sukabumi berada di peringkat ke-3 sewilayah LLDIKTI 4 Jawa Barat dan Banten kategori Perguruan Tinggi Swasta (PTS) pada Program Kegiatan Mahasiswa (PKM) 5 Bidang 2020.</p>\r\n\r\n<p>Meloloskan 7 proposal kelompok mahasiswa , UMMI melampaui PTS lainnya. Dimana Proposal PKM terbagi dalam lima &nbsp;bidang, yaitu Bidang Kewirausahaan (PKMK), Bidang Karsa Cipta (PKMKC), Bidang Pengabdian Masyarakat (PKMM), Bidang Penelitian (PKMP), dan Bidang Penerapan Teknologi (PKMT).</p>\r\n\r\n<p>Hal ini tertuang dalam surat Direktur Pembelajaran dan Kemahasiswaan (Belmawa) Direktorat Jenderal Pendidikan Tinggi (Dikti) Kementerian Pendidikan dan Kebudayaan (Kemdikbud) Nomor 1686/E2/TU/2020 tertanggal 5 Agustus 2020 tentang Pendanaan PKM 5 Bidang Tahun 2020.</p>\r\n\r\n<p>Wakil Rektor (WR) III bidang kemahasiswaan, kerjasama, dan al Islam kemuhammadiyahan Andri M. Idharoel Haq, S.Th.I., M.M., mengapresiasi pencapaian ini setinggi-tingginya.&nbsp;</p>\r\n\r\n<p>&ldquo;Kami menyampaikan terima kasih dan penghargaan atas keterlibatan semua pihak, khususnya kepada Ibu Lela Lailatul Khumaisah, M.Si, Bapak Billyardi Ramdhan, M.Si, Ibu Lela Mukmilah. Si, &nbsp;Bapak Dr. Setiono, M.Pd, Ibu Hamidah Suryani Lukman, &nbsp;M. Pd dan Ibu Asriyanik, &nbsp;M.T atas dedikasinya dalam membimbing mahasiswa.,&rdquo; kata Andri, &nbsp;(10/10/2020).</p>\r\n\r\n<p>Adapun jumlah sebaran proposal mahasiswa UMMI yang lolos pada setiap bidang untuk pendanaan PKM tahun 2020 adalah PKMK (Kewirausahaan) &nbsp;2 proposal, &nbsp; PKMM (Pengabdian Masyarakat) 1 proposal, PKMPE (Penelitian Eksakta) 3 proposal, dan PKMPSH (Penelitian Sosial Humaniora) 1 proposal.</p>\r\n\r\n<p>Menghadapi PIMNAS, WR III telah berkoordinasi dengan Wakil Dekan Bidang Kemahasiswaan untuk mempersiapkan mahasiswa seoptimal mungkin.</p>\r\n\r\n<p>&ldquo;Mohon doa dari semuanya agar selanjutnya PKM mahasiswa UMMI dapat lolos PIMNAS,&rdquo; tutup WR III, Andri M. Idharoel Haq.</p>\r\n', '2017-05-17 09:24:42', 13, 'Kampus', 28, '0a927c6d34dc5560b72f053313f14638.jpg', 6, 'Moech Fazar', 0, 'ummi-peringkat-3-lldikti-4-program-kreativitas-mahasiswa-2020'),
(22, 'KKN Tematik 2020 : 615 Mahasiswa UMMI Terjun Kemasyarakat', '<p>Auditorium, ummi.ac.id &nbsp;- Universitas Muhammadiyah Sukabumi (UMMI) melepas 615 mahasiswa untuk melaksanakan Kuliah Kerja Nyata di masyarakat yang dihadiri langsung oleh Walikota Sukabumi, Achmad Fahmi dan Rektor UMMI beserta pejabat struktural UMMI.</p>\r\n\r\n<p>Acara pelepasan diikuti oleh mahasiswa peserta KKN melalui daring (dalam jaringan) melalui aplikasi zoom, Senin (27/7/2020).</p>\r\n\r\n<p>UMMI tetap mengadakan Kuliah Kerja Nyata ( KKN) di tengah pandemi corona.</p>\r\n\r\n<p>Namun, pelaksanaan KKN berbeda dengan kegiatan sebelum-sebelumnya.</p>\r\n\r\n<p>Sekretaris Lembaga Penelitian dan Pengabdian Masyarakat (LPPM), Ria Andriani menjelaskan, metode pelaksanaan KKN di masa pandemi Covid-19 dilakukan dengan cara mahasiswa melaksanakan programnya di tempat tinggal masing-masing.</p>\r\n\r\n<p>&quot;Secara mandiri dan tidak berkelompok. Pembimbingannya oleh dosen pembimbing lapangan secara daring,&quot; kata Ria,</p>\r\n\r\n<p>Tetap dilaksanakannya KKN ini lantaran pihak kampus tidak ingin memperlambat kelulusan para mahasiswanya, mengingat belum tahunya pandemi akan berakhir.</p>\r\n\r\n<p>Sebagai tambahan informasi, KKN menjadi salah satu mata kuliah wajib.</p>\r\n\r\n<p><strong>Tema</strong></p>\r\n\r\n<p>Ria menjelaskan, terdapat beberapa tema besar yang akan diusung dalam pelaksanaan KKN periode ini, seperti&nbsp;Kesehatan masyarakat,&nbsp;Ketahanan ekonomi masyarakat,&nbsp;Ketahanan pangan,&nbsp;Edukasi,&nbsp;Penyusunan sistem informasi,&nbsp;Supporting keselamatan masyarakat terhadap Covid-19,&nbsp;Supporting keselamatan masyarakat terhadap Covid-19.</p>\r\n\r\n<p>Program KKN ini ditujukan bagi warga sekitar dari mahasiwa yang menjalankan.&nbsp;Seperti pelatihan pembuatan masker jadi di arahkan untuk membuat masker bukan untuk diberikan cuma-cuma pada masyarakat.</p>\r\n\r\n<p>&quot;Apabila dapat menutupi kebutuhan masyarakat sekitar hasil dari program masyarakat diharapkan mampu memiliki penghasilan sampingan dari kegiatan tersebut,&quot; ujar dia.</p>\r\n\r\n<p>Bisa juga melaksanakan program lainnya dalam hal pangan dengan menyampaikan program terkait TTG (teknologi Tepat Guna) secara sederhana, seperti model tumpang sari antara lele dengan sayur kangkung dalam satu kolam ember.</p>\r\n\r\n<p>&quot;Jadi ketika mahasiswa kembali ke kampus sudah dapat di panen dari hasil program yang di sampaikan pada masyarakat sekitar,&quot; lanjut Ria.</p>\r\n\r\n<p>Ia menegaskan, selama program pelaksanaan KKN, tetap harus mengedepankan protokol kesehatan sesuai standar.</p>\r\n\r\n<p>KKN akan berlangsung selama 40 hari pada 26 Juli-4 &nbsp;September 2020</p>\r\n\r\n<p><strong>Peserta</strong></p>\r\n\r\n<p>Jumlah peserta KKN periode ini sebanyak 615 mahasiswa dan 40 dosen pembimbing lapangan. Lokasi KKN berdasarkan domisili masing-masing mahasiswa yang tersebar di&nbsp;3 Provinsi yaitu provinsi Jawa Barat meliputi kota Sukabumi, kabupaten Sukabumi, kabupaten Ciajur, provinsi Sumatera dan provinsi Banten.</p>\r\n\r\n<p>Seluruh mahasiswa tersebut berasal dari 6 fakultas, yaitu Fakultas Sains dan Teknologi, Fakultas Pertanian, Fakultas Ilmu Administrasi dan Humaniora, Fakultas Ekonomi, Fakultas Keguruan dan Ilmu pendidikan dan Fakultas Hukum.</p>\r\n', '2017-05-17 09:38:21', 5, 'Penelitian', 2, 'a59aa487ab2e3b57b2fcf75063b67575.jpg', 6, 'Moech Fazar', 0, 'kkn-tematik-2020-:-615-mahasiswa-ummi-terjun-kemasyarakat'),
(23, 'Hasil Assement MAPALU Penyebab Terjadinya Banjir Cicurug', '<p>Cicurug, ummi.ac.id &ndash; Pasca banjir bandang&nbsp;menerjang wilayah Kecamatan Cicurug, Kabupaten Sukabumi, Jawa Barat, Senin (21/9/2020). Peristiwa itu dipicu hujan deras yang mengguyur wilayah tersebut sehingga menyebabkan aliran Sungai Citarik-Cipeuncit meluap setinggi 5-6 meter.</p>\r\n\r\n<p>Mahasiswa Penggiat Alam Terbuka UMMI (MAPALU) melakukan&nbsp;Assesment Daerah Aliran Sungai Cibuntu bersama Volunteer Panthera, Biosphere, Relawan Bela Alam dan WANADRI pada kamis (24/9/20).</p>\r\n\r\n<p>Adapun tujuan&nbsp;&nbsp; dari&nbsp; kegiatan&nbsp;&nbsp; ini&nbsp; adalah&nbsp;&nbsp; untuk&nbsp; memperoleh&nbsp;&nbsp; data&nbsp;&nbsp; dan menganalisa&nbsp; serta&nbsp; mengecek&nbsp; isue&nbsp; warga&nbsp; yang&nbsp; berkembang&nbsp; tentang&nbsp; vidio penyebab terjadinya banjir bandang yang menerjang kawasan Cicurug dan Parungkuda.</p>\r\n\r\n<p>Personil yang terlibat berjumlahkan 10 orang dan dibagi menjadi dua regu. Kegiatan&nbsp; dimulai&nbsp; pukul&nbsp; 08.00 WIB&nbsp; dari&nbsp; titik&nbsp; awal&nbsp; posko&nbsp; menuju&nbsp; Curug Citaman yang berjarak kurang lebih 3 km dari titik awal, ditempuh dengan jalan&nbsp; kaki. dengan kondisi cuaca cerah sehingga dapat selesai pukul 14.00 WIB.</p>\r\n\r\n<p>Berikut hasil Assesment Daerah Aliran Sungai Cibuntu :</p>\r\n\r\n<p><strong>1.&nbsp;&nbsp; Perubahan bentuk, lebar sungai dan debit air</strong></p>\r\n\r\n<p>Lebar sungai yan g sem ula nya kurang lebih 5 meter&nbsp;&nbsp; dan setelah banjir bandang menjadi kurang lebih 20 meter , disebabkan oleh bebatuan yang pindah terbawa air dan mengakibatkan debit air berubah&nbsp; yang tadinya mengalir diatas permukaan berubah&nbsp; mengalirnya&nbsp; dibawah permukaan (disela -sela&nbsp;&nbsp; bebatuan)&nbsp;&nbsp; karena&nbsp;&nbsp; banyak&nbsp;&nbsp; batu&nbsp;&nbsp; yang&nbsp;&nbsp; bertumpuk&nbsp;&nbsp; yang diakibatkan&nbsp; terbawa air ketika banjir sehing ga debit air menjadi kecil</p>\r\n\r\n<p><strong>2.&nbsp;&nbsp; Aktivitas penambangan pasir</strong></p>\r\n\r\n<p>Penam bangan&nbsp; pasir&nbsp; ini&nbsp; adalah&nbsp; kegiatan&nbsp; yang&nbsp; dilakukan&nbsp; oleh&nbsp; warga setempat,&nbsp; meskipun&nbsp; penambangan&nbsp; pasir&nbsp; ini&nbsp; dilakukan&nbsp;&nbsp; sudah&nbsp; cukup lama,&nbsp; akan&nbsp; tetapi&nbsp; hal&nbsp; itu&nbsp;&nbsp;&nbsp;&nbsp; menyebabkan&nbsp;&nbsp; kubangan&nbsp;&nbsp; besar&nbsp; di&nbsp; aliran tersebut.&nbsp;&nbsp;&nbsp; Dan&nbsp;&nbsp;&nbsp; ada&nbsp;&nbsp;&nbsp; juga&nbsp;&nbsp;&nbsp; pembendungan&nbsp;&nbsp;&nbsp; aliran&nbsp;&nbsp;&nbsp; sungai&nbsp;&nbsp;&nbsp; sehingga menghambat jalan nya air.</p>\r\n\r\n<p><strong>3.&nbsp;&nbsp; Banyak longsoran ditebing sungai akibat dari banjir.</strong></p>\r\n\r\n<p><strong>4.&nbsp;&nbsp; Banyaknya&nbsp;&nbsp; kayu&nbsp;&nbsp; gelondo ngan&nbsp;&nbsp; yang&nbsp;&nbsp; diduga&nbsp;&nbsp; hasil&nbsp; aktivitas&nbsp; ilegal logging.</strong></p>\r\n', '2017-05-17 09:41:30', 6, 'Prestasi', 17, '12bfb1953df800c59835a2796f8c6619.jpg', 6, 'Moech Fazar', 0, 'hasil-assement-mapalu-penyebab-terjadinya-banjir-cicurug'),
(24, 'UMMI Apresiasi Prestasi Mahasiswa', '<p>Sukabumi, ummi.ac.id - Mahasiswa Pendidikan Biologi UMMI tak pernah berhenti menorehkan prestasi. Sederet penghargaan berhasil diraih mahasiswanya dalam berbagai kompetisi di kancah nasional .</p>\r\n\r\n<p>Ketua program studi (prodi) Pendidikan Biologi UMMI, Billiyardi Ramadhan, M.Si., menyebutkan dalam kurun waktu 7 tahun terakhir banyak mahasiswa yang berhasil mengharumkan nama prodi melalui berbagai ajang kompetisi. Mulai dari lomba Microteaching, lomba Paduan Suara, Program Kreativitas Mahasiswa (PKM), Program Hibah dana Hibah Bina Desa, lomba Olimpiade Nasional MIPA, delegasi SM3T, &nbsp;dan paling terbaru&nbsp;&nbsp;meraih juara 3 dalam Lomba Karya Tulis&nbsp;Ilmiah Nasional&nbsp;dalam kegiatan&nbsp;Biology Learning Fair&nbsp;Part&nbsp; VIII 2020,&nbsp;yang diselenggarakan oleh Universitas Alauddin Makassar.</p>\r\n\r\n<p>&ldquo;Biology Learning Fair merupakan sebuah event tahunan yang setiap tahunnya di laksanakan sebagai suatu program besar di Divisi Ilmu dan Penalaran HMJ Biologi Universitas Alauddin Makassar&nbsp; yang diikuti oleh berbagai&nbsp;perguruan tinggi&nbsp;negeri maupun swasta di Indonesia&nbsp;dengan tujuan untuk meningkatkan intelektualitas mahasiswa dan masyarakat luas pada umumnya. Biology Learning Fair memiliki tiga item kegiatan diantaranya adalah&nbsp; webinar, lomba essai lomba KTI, dan Biologi&nbsp;Desains (Infografis),&rdquo; tuturnya.</p>\r\n\r\n<p>&ldquo;Sehingga denga diraihnya juara 3&nbsp;dalam Lomba Karya Tulis&nbsp;Ilmiah, &nbsp;total ada 26 tim yang sukses meraih prestasi di tingkat nasional selama periode tahun 2014 sampai Oktober 2020,&rdquo; jelasnya, Rabu (28/10/20).</p>\r\n\r\n<p>Guna mengapresiasi capaian para mahasiswanya, rektor UMMI Dr. Sakti Alamsyah, M.Pd beserta wakil rektor II Dr. Dra. Ike Rachmawati, M.Si., dan wakil rektor III Andri M. Idharoel Haq, S.Th.I., M.M., &nbsp;memberikan penghargaan kepada para mahasiswa berprestasi&nbsp;dalam Lomba Karya Tulis&nbsp;Ilmiah Nasional&nbsp;yang berlangsung di ruang rektor Selasa (27/10/20).</p>\r\n\r\n<p>Andri M. Idharoel Haq menuturkan pihaknya terus mendorong mahasiswa untuk berprestasi dalam berbagai kegiatan. Melalui kompetisi yang diikuti diharapkan tidak hanya mampu mengasah mental, namun juga dapat memberikan pengalaman yang berguna saat memasuki dunia kerja nantinya.</p>\r\n\r\n<p>&ldquo;Mengikuti lomba tidak semata-mata mengejar kemenangan, tetapi dari situ banyak pelajaran yang bisa diambil untuk memupuk integritas mahasiswa,&rdquo; ungkapnya.</p>\r\n\r\n<p>Dalam kesempatan itu, Andri M. Idharoel Haq mengatakan UMMI terus berupaya untuk memberikan kontribusi terhadap upaya kemajuan di Indonesia dengan menghasilkan lulusan-lulusan yang berintegritas tinggi. Salah satunya dilakukan dengan menerapkan pendidkan yang tidak hanya unggul dalam keilmuan tetapi juga unggul dalam keislaman.&nbsp;</p>\r\n\r\n<p>&ldquo;Kita tidak hanya memberikan keilmuan pada mahasiswa, tetapi juga mengajarkan wajah Islam yang berkemajuan yang rahmatan lilalamin,&rdquo; urainya.</p>\r\n\r\n<p><strong>Berikut daftar Prestasi mahasiswa program studi Pendidikan Biologi UMMI periode 2014-Oktober 2020 :</strong><br />\r\n1. &nbsp; Juara Harapan 1 Lomba Microteaching se Indonesia 2014 (Syarif Firdaus)<br />\r\n2. &nbsp; Juara 2 Lomba Microteaching se Indonesia 2014 (Ika Siti Rikayah)<br />\r\n3. &nbsp; Juara 2 Lomba Paduan Suara Se Kopertis IV (Syarif Firdaus)<br />\r\n4. &nbsp; Proposal didanai DIKTI &nbsp;PKM-K 2015<br />\r\n&nbsp; &nbsp; &nbsp; (Judul proposal: SOBEK &ldquo;Bakso Bebek&rdquo; Inovasi Jajanan Tanpa MSG)<br />\r\n5. &nbsp; Proposal didanai DIKTI PKM-K 2015<br />\r\n&nbsp; &nbsp; &nbsp; (Judul Proposal: Dodongkal Kotak Rasa Inspirasi Dengan Beraneka Olahan Warna)<br />\r\n6. &nbsp; Juara 3 Lomba Microteaching Nasional 2015 (Siska Wijayanti)<br />\r\n7. &nbsp; Program didanai DIKTI Program Hibah dana Hibah Bina Desa 2015<br />\r\n8. &nbsp; Juara 2 Lomba Microteaching Nasional 2016 (Endi Riana)<br />\r\n9. Juara 3 Lomba Microteaching Nasional 2016 (Dewi Nurdiyanti)<br />\r\n10. Juara Harapan 1 Lomba Microteaching Nasional 2016 (Imas Siti Masitoh)<br />\r\n11. Peringkat 5 Lomba Olimpiade Nasional MIPA 2016 Kopertis 4 dan PTN se-Jawa Barat (Rizky Fauzi)<br />\r\n12. Program Dinanai Dikti Program PKM-K 2017 (Judul Proposal: Bantal Terapi)<br />\r\n13. Delegasi SM3T lokasi pengabdian Papua Barat tahun 2017 (Sukarya Zaenal A)<br />\r\n14. Juara Harapan 1 Lomba Microteaching Nasional 2017 (Endi Riana)<br />\r\n15. Juara 3 Lomba Microteaching Nasional 2017 (Dewi Nurdiyanti)<br />\r\n16. Juara 1 Lomba Microteaching Nasional 2018 (Sri Wahyuni)<br />\r\n17. Mahasiswa Berprestasi tingkat Universitas tahun 2018 (Erisa Septiyani)<br />\r\n18. Proposal PKM didanai DIKTI PKMPE 2018<br />\r\n&nbsp; &nbsp; &nbsp; (Judul &nbsp;Perbandingan Aktivitas Antibakteri Begonia Multangula Dan Begonia Robusta Untuk Formulasi&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; Homemade Less Sugar Soft Candy (Homeless Candy) Anti-Halitosis)<br />\r\n19. Proposal PKM didanai DIKTI PKMM 2018<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;(Judul Sambaran AADC ( Sarana Baru Media Pembelajaran IPA Air Dry Clay)<br />\r\n20. Proposal PKM didanai DIKTI PKMPE 2019<br />\r\n&nbsp; &nbsp; &nbsp; (Judul Pemanfaatan Ekstrak Daun Sanseviera trifasciata sebagai Gelang Penyerap Karbon Monoksida Asap Rokok)<br />\r\n21. Proposal PKM didanai DIKTI PKMPSH 2019<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;(Judul Hey Bacteria! Modul berbasis Hasil Penelitian untuk Melatih Keterampilan Abad 21 Siswa)<br />\r\n22. Proposal PKM didanai DIKTI PKMPSH 2019<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;(Judul Pemetaan Faktor Dominan yang Mempengaruhi perilaku &ldquo;Baby Smoker&rdquo; di Sukabumi)<br />\r\n23. Juara 2 Lomba Microteaching Nasional 2018 (Resti)<br />\r\n24. Proposal PKM didanai DIKTI PKMK 2020<br />\r\n&nbsp; &nbsp; &nbsp; (Judul Baby Bags Multifunction)<br />\r\n25. Proposal PKM didanai DIKTI PKMK 2020<br />\r\n&nbsp; &nbsp; &nbsp; (Pembersih Wajah Beraroma Teraphy)<br />\r\n26. Juara 3 Lomba Karya Tulis Ilmiah Nasional dalam kegiatan Biology Learning Fair Part &nbsp;VIII 2020</p>\r\n', '2017-05-17 09:46:29', 13, 'Kampus', 205, 'ea114dc1ec5275560a5ef3238fd04722.jpg', 6, 'Moech Fazar', 0, 'ummi-apresiasi-prestasi-mahasiswa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indeks untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indeks untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indeks untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indeks untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indeks untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indeks untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=953;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
