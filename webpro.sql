-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2018 at 10:14 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webpro`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_blog`
--

CREATE TABLE `category_blog` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_blog`
--

INSERT INTO `category_blog` (`id`, `category_name`) VALUES
(1, 'PHP'),
(2, 'HTML & CSS'),
(3, 'FRAMEWORK'),
(4, 'SEO'),
(5, 'JavaScript');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `reply` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `username`, `reply`) VALUES
(8, 4, 'Brian Abraham', 'Testing ajah yah !'),
(15, 20, 'Baim Pasha', 'Test Baim Pasha');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(40) NOT NULL,
  `id_category` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `image_news` varchar(100) NOT NULL,
  `news` varchar(10000) NOT NULL,
  `date_post` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `id_category`, `title`, `image_news`, `news`, `date_post`) VALUES
(1, 1, 'Test 1', 'brianabraham_images', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!', '2018-05-24 07:40:59'),
(2, 2, 'Test 2', 'gdfgdfgdfg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!', '2018-05-24 07:38:43'),
(3, 3, 'Test 3', 'brianabraham_images', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!', '2018-05-24 07:40:28'),
(4, 4, 'Test 4', 'gdfgdfgdfg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!', '2018-05-24 07:41:03'),
(5, 5, 'Test 5', 'brianabraham_images', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!', '2018-05-24 07:41:14'),
(6, 1, 'Test 6', 'gdfgdfgdfg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!', '2018-05-24 07:41:17'),
(7, 2, 'Test 7', 'brianabraham_images', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!', '2018-05-24 07:41:20'),
(8, 3, 'Test 8', 'gdfgdfgdfg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!', '2018-05-24 07:41:23'),
(9, 4, 'Test 9', 'brianabraham_images', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!', '2018-05-24 07:41:41'),
(10, 5, 'Test 10', 'gdfgdfgdfg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!', '2018-05-24 07:55:54'),
(11, 1, 'Test 11', 'brianabraham_images', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!', '2018-05-24 07:40:59'),
(12, 2, 'Test 12', 'gdfgdfgdfg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!', '2018-05-24 07:38:43'),
(13, 3, 'Test 13', 'brianabraham_images', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!', '2018-05-24 07:40:28'),
(14, 4, 'Cara Membuat Web Statis Sederhan HTML', 'gdfgdfgdfg', 'Kali ini kita akan membuat website statis sederhana, kenapa statis? Karena ketika selesai dalam pembuatannya maka konten website yang sudah kita masukan tidak bisa di ubah lagi alias fixed. Loh’, kalo gitu ngga bisa update isi website donk?? Kata siapa tidak bisa, update konten atau isi website tetap bisa di lakukan hanya saja caranya berbeda dengan website dinamis.\n\nWebsite dinamis memiliki halaman khusus untuk Admin agar dapat mengelola konten-konten website-nya, halaman-halaman ini biasa kita kenal dengan istilah CMS (Content Management System) seperti WordPress, Joomla, Drupal, dll. merupakan salah satu dari sekian banyak aplikasi CMS berbasis web.\n\nBerbeda dengan website dinamis, maka website statis tidak memiliki halaman admin sehingga untuk update konten atau isi website harus di ubah langsung dari skrip nya atau biasa di sebut dengan Hard-Coding.\n\nPada tutorial kali ini penulis sengaja berbagi ilmu bagaimana cara membuat website statis sebagai dasar kalian terutama untuk pemula. Untuk membuat website pertama kalian harus paham dulu dengan kode HTML dan CSS.\n\nHTML atau Hypertext Markup Language merupakan bahasa pemrograman yang menjadi standar untuk pembuatan website entah itu website statis atau dinamis. Sedangkan CSS atau Cascading Style Sheet sendiri secara tidak langsung merupakan bagian dari HTML yang fungsi utamanya yaitu untuk mengkustomisasi elemen-eleman pada HTML.\n\nJadi secara garis besar kita membuat struktur atau bagan website menggunakan HTML, setelah jadi kita tinggal mendisain tampilan layout-nya dengan CSS menjadi sedemikian rupa sehingga tampilan website menjadi lebih menarik dan berkarakter.\n\nPada tutorial ini kita tidak belajar elemen-elemen HTML atau CSS secara mendalam, tapi kalian bisa merujuk ke W3School sebagai referensi.\n\nOkeh, kita langsung saja untuk membuat website statis sederhana silahkan ikuti langkah-lengkah berikut.', '2018-05-24 08:12:13'),
(15, 5, 'Cara Membuat Website Sederhana HTML', 'brianabraham_images', 'Pada kesempatan kali ini kita akan membahas cara membuat website sederhana dengan html 5, sebelumnya anda diharapkan sudah mengerti dasar HTML dan CSS karena pada tutorial ini tidak akan dijelaskan secara mendetail mengenai HTML dan CSS, tutorial ini hanya menjelaskan secara garis besar fungsi dari elemen yang dipakai.\n\nJika anda belum pernah membuat halaman web sederhana, sangat disarankan untuk latihan membuat halaman web secara sederhana di artikel ” CARA MEMBUAT HALAMAN WEB SEDERHANA ” dalam artikel ini juga dijelaskan secara mendetail tentang apa saja alat yang digunakan dalam membuat website.\n\nHasil akhir dari membuat website adalah seperti gambar dibawah ini, klik ” Run Skrip ” jika ingin melihat hasil secara online sekaligus merubah source code, silahkan anda ikuti langkah-langkah membuat website sederhana dengan html ini. Pada kesempatan kali ini kita akan membahas cara membuat website sederhana dengan html 5, sebelumnya anda diharapkan sudah mengerti dasar HTML dan CSS karena pada tutorial ini tidak akan dijelaskan secara mendetail mengenai HTML dan CSS, tutorial ini hanya menjelaskan secara garis besar fungsi dari elemen yang dipakai.\n\nJika anda belum pernah membuat halaman web sederhana, sangat disarankan untuk latihan membuat halaman web secara sederhana di artikel ” CARA MEMBUAT HALAMAN WEB SEDERHANA ” dalam artikel ini juga dijelaskan secara mendetail tentang apa saja alat yang digunakan dalam membuat website.\n\nHasil akhir dari membuat website adalah seperti gambar dibawah ini, klik ” Run Skrip ” jika ingin melihat hasil secara online sekaligus merubah source code, silahkan anda ikuti langkah-langkah membuat website sederhana dengan html ini. Pada kesempatan kali ini kita akan membahas cara membuat website sederhana dengan html 5, sebelumnya anda diharapkan sudah mengerti dasar HTML dan CSS karena pada tutorial ini tidak akan dijelaskan secara mendetail mengenai HTML dan CSS, tutorial ini hanya menjelaskan secara garis besar fungsi dari elemen yang dipakai.\n\nJika anda belum pernah membuat halaman web sederhana, sangat disarankan untuk latihan membuat halaman web secara sederhana di artikel ” CARA MEMBUAT HALAMAN WEB SEDERHANA ” dalam artikel ini juga dijelaskan secara mendetail tentang apa saja alat yang digunakan dalam membuat website.\n\nHasil akhir dari membuat website adalah seperti gambar dibawah ini, klik ” Run Skrip ” jika ingin melihat hasil secara online sekaligus merubah source code, silahkan anda ikuti langkah-langkah membuat website sederhana dengan html ini. Pada kesempatan kali ini kita akan membahas cara membuat website sederhana dengan html 5, sebelumnya anda diharapkan sudah mengerti dasar HTML dan CSS karena pada tutorial ini tidak akan dijelaskan secara mendetail mengenai HTML dan CSS, tutorial ini hanya menjelaskan secara garis besar fungsi dari elemen yang dipakai.\n\nJika anda belum pernah membuat halaman web sederhana, sangat disarankan untuk latihan membuat halaman web secara sederhana di artikel ” CARA MEMBUAT HALAMAN WEB SEDERHANA ” dalam artikel ini juga dijelaskan secara mendetail tentang apa saja alat yang digunakan dalam membuat website.\n\nHasil akhir dari membuat website adalah seperti gambar dibawah ini, klik ” Run Skrip ” jika ingin melihat hasil secara online sekaligus merubah source code, silahkan anda ikuti langkah-langkah membuat website sederhana dengan html ini. Pada kesempatan kali ini kita akan membahas cara membuat website sederhana dengan html 5, sebelumnya anda diharapkan sudah mengerti dasar HTML dan CSS karena pada tutorial ini tidak akan dijelaskan secara mendetail mengenai HTML dan CSS, tutorial ini hanya menjelaskan secara garis besar fungsi dari elemen yang dipakai.\n\nJika anda belum pernah membuat halaman web sederhana, sangat disarankan untuk latihan membuat halaman web secara sederhana di artikel ” CARA MEMBUAT HALAMAN WEB SEDERHANA ” dalam artikel ini juga dijelaskan secara mendetail tentang apa saja alat yang digunakan dalam membuat website.\n\nHasil akhir dari membuat website adalah seperti gambar dibawah ini, klik ” Run Skrip ” jika ingin melihat hasil secara online sekaligus merubah source code, silahkan anda ikuti langkah-langkah membuat website sederhana dengan html ini. Pada kesempatan kali ini kita akan membahas cara membuat website sederhana dengan html 5, sebelumnya anda diharapkan sudah mengerti dasar HTML dan CSS karena pada tutorial ini tidak akan dijelaskan secara mendetail mengenai HTML dan CSS, tutorial ini hanya menjelaskan secara garis besar fungsi dari elemen yang dipakai.\n\nJika anda belum pernah membuat halaman web sederhana, sangat disarankan untuk latihan membuat halaman web secara sederhana di artikel ” CARA MEMBUAT HALAMAN WEB SEDERHANA ” dalam artikel ini juga dijelaskan secara mendetail tentang apa saja alat yang digunakan dalam membuat website.\n\nHasil akhir dari membuat website adalah seperti gambar dibawah ini, klik ” Run Skrip ” jika ingin melihat hasil secara online sekaligus merubah source code, silahkan anda ikuti langkah-langkah membuat website sederhana dengan html ini. Pada kesempatan kali ini kita akan membahas cara membuat website sederhana dengan html 5, sebelumnya anda diharapkan sudah mengerti dasar HTML dan CSS karena pada tutorial ini tidak akan dijelaskan secara mendetail mengenai HTML dan CSS, tutorial ini hanya menjelaskan secara garis besar fungsi dari elemen yang dipakai.\n\nJika anda belum pernah membuat halaman web sederhana, sangat disarankan untuk latihan membuat halaman web secara sederhana di artikel ” CARA MEMBUAT HALAMAN WEB SEDERHANA ” dalam artikel ini juga dijelaskan secara mendetail tentang apa saja alat yang digunakan dalam membuat website.\n\nHasil akhir dari membuat website adalah seperti gambar dibawah ini, klik ” Run Skrip ” jika ingin melihat hasil secara online sekaligus merubah source code, silahkan anda ikuti langkah-langkah membuat website sederhana dengan html ini. Pada kesempatan kali ini kita akan membahas cara membuat website sederhana dengan html 5, sebelumnya anda diharapkan sudah mengerti dasar HTML dan CSS karena pada tutorial ini tidak akan dijelaskan secara mendetail mengenai HTML dan CSS, tutorial ini hanya menjelaskan secara garis besar fungsi dari elemen yang dipakai.\n\nJika anda belum pernah membuat halaman web sederhana, sangat disarankan untuk latihan membuat halaman web secara sederhana di artikel ” CARA MEMBUAT HALAMAN WEB SEDERHANA ” dalam artikel ini juga dijelaskan secara mendetail tentang apa saja alat yang digunakan dalam membuat website.\n\nHasil akhir dari membuat website adalah seperti gambar dibawah ini, klik ” Run Skrip ” jika ingin melihat hasil secara online sekaligus merubah source code, silahkan anda ikuti langkah-langkah membuat website sederhana dengan html ini.', '2018-05-24 08:11:18'),
(16, 1, 'Cara Membuat Sitemap di WordPress', 'gdfgdfgdfg', 'Dalam artikel ini kita akan membahas cara membuat sitemap di blog. Apa itu sitemap? Seperti namanya, Sitemap adalah daftar halaman web yang dapat diakses sehingga bisa terbaca oleh pengguna dan mesin pencari. Mungkin Anda pernah melihat atau menemukan bermacam-macam situs, terutama situs pemerintah yang salah satu link-nya diberi nama ‘sitemap’. Link ini akan mengarahkan pengguna dan mesin pencari untuk menjelajahi semua halaman yang tersedia di website tersebut.\n\nSitemap diperkenalkan di awal kemunculan internet pada tahun 1994 dan 1995. Ketika itu, sitemap dianggap penting untuk disertakan dalam website. Mungkin saja karena pada tahun-tahun tersebut sitemap website merupakan alat navigasi utama sebelum para desainer memperkenalkan navigasi yang canggih dan mudah digunakan.\n\nMungkin Anda menganggap bahwa sitemap tidak lagi diperlukan karena sudah ada alat navigasi yang lebih baik dan lebih cepat. Sayangnya Anda salah. Dari sudut pandang SEO, sitemap bahkan sangat diperlukan saat ini. Berikut beberapa keuntungan mengapa Anda membutuhkan sitemap:\n\n    Sitemap membuat halaman Website Anda lebih mudah dicari oleh mesin pencari, dan juga indexing akan lebih cepat.\n    Jika ada perubahan pada struktur website Anda, sitemap akan menginformasikannya pada mesin pencari.\n    Sitemap juga membantu mesin pencari untuk mengindeks website besar yang memiliki banyak sekali halaman yang tidak terstruktur atau tidak interlinked.\n\nTiga poin di atas adalah beberapa alasan mengapa sitemap sangat penting dan mengapa Anda harus membuat sitemap untuk website WordPress. Pada tutorial WordPress kali ini, kami akan mengajak Anda untuk mengetahui jenis-jenis sitemap, cara menambahkan sitemap pada WordPress, dan langkah mensubmit WordPress sitemap URL ke mesin pencari. Mari kita mulai.', '2018-05-24 07:55:25'),
(17, 2, 'Bagaimana cara membuat akun Facebook ?', 'brianabraham_images', 'Sebenarnya cara membuat facebook tidaklah sulit. Anda hanya perlu memiliki alamat email atau nomor HP yang aktif untuk persyaratan pendaftaran akun facebook. Namun, masih ada juga yang belum mengerti bagaimana cara membuat/ mendaftar akun facebook baru.\n\nFacebook merupakan salah satu jejaring sosial yang paling populer dan penggunanya sudah banyak tersebar di berbagai belahan dunia. Layanan jejaring sosial besutan Mark Zuckerberg ini semakin berkembang pesat saja seiring berjalannya waktu. Indonesia pun menduduki peringkat 10 besar dengan pengguna facebook terbanyak di dunia. Sebenarnya cara membuat facebook tidaklah sulit. Anda hanya perlu memiliki alamat email atau nomor HP yang aktif untuk persyaratan pendaftaran akun facebook. Namun, masih ada juga yang belum mengerti bagaimana cara membuat/ mendaftar akun facebook baru.\n\nFacebook merupakan salah satu jejaring sosial yang paling populer dan penggunanya sudah banyak tersebar di berbagai belahan dunia. Layanan jejaring sosial besutan Mark Zuckerberg ini semakin berkembang pesat saja seiring berjalannya waktu. Indonesia pun menduduki peringkat 10 besar dengan pengguna facebook terbanyak di dunia. Sebenarnya cara membuat facebook tidaklah sulit. Anda hanya perlu memiliki alamat email atau nomor HP yang aktif untuk persyaratan pendaftaran akun facebook. Namun, masih ada juga yang belum mengerti bagaimana cara membuat/ mendaftar akun facebook baru.\n\nFacebook merupakan salah satu jejaring sosial yang paling populer dan penggunanya sudah banyak tersebar di berbagai belahan dunia. Layanan jejaring sosial besutan Mark Zuckerberg ini semakin berkembang pesat saja seiring berjalannya waktu. Indonesia pun menduduki peringkat 10 besar dengan pengguna facebook terbanyak di dunia. Sebenarnya cara membuat facebook tidaklah sulit. Anda hanya perlu memiliki alamat email atau nomor HP yang aktif untuk persyaratan pendaftaran akun facebook. Namun, masih ada juga yang belum mengerti bagaimana cara membuat/ mendaftar akun facebook baru.\n\nFacebook merupakan salah satu jejaring sosial yang paling populer dan penggunanya sudah banyak tersebar di berbagai belahan dunia. Layanan jejaring sosial besutan Mark Zuckerberg ini semakin berkembang pesat saja seiring berjalannya waktu. Indonesia pun menduduki peringkat 10 besar dengan pengguna facebook terbanyak di dunia. Sebenarnya cara membuat facebook tidaklah sulit. Anda hanya perlu memiliki alamat email atau nomor HP yang aktif untuk persyaratan pendaftaran akun facebook. Namun, masih ada juga yang belum mengerti bagaimana cara membuat/ mendaftar akun facebook baru.\n\nFacebook merupakan salah satu jejaring sosial yang paling populer dan penggunanya sudah banyak tersebar di berbagai belahan dunia. Layanan jejaring sosial besutan Mark Zuckerberg ini semakin berkembang pesat saja seiring berjalannya waktu. Indonesia pun menduduki peringkat 10 besar dengan pengguna facebook terbanyak di dunia.', '2018-05-24 07:54:14'),
(18, 3, 'Membuat Akun Twitter Baru Dengan Cepat', 'gdfgdfgdfg', 'Artikel ini khusus dibuat sebagai bahan referensi bagi mereka yang belum mengetahui cara membuat akun Twitter dengan mudah dan cepat. Twitter adalah salah satu media sosial yang paling banyak digunakan di seluruh dunia. Hampir semua kalangan menggunakan twitter, baik itu dari kalangan artis, politikus, pemusik, pejabat negara, pebisnis, dan lain-lain, semua mendaftar dan membuat akun Twitter mereka. Yang membuat media sosial ini banyak digunakan adalah karena kepraktisannya, dan juga karena bisa menjangkau semua orang yang ada di seluruh dunia dengan mudah.\n\nMedia sosial Twitter sering sekali digunakan sebagai media informasi atau promosi secara online. Beberapa politikus bahkan menggunakan twitter sebagai media untuk kampanye mereka. Dampaknya memang sangat besar bagi banyak orang, efek viral dari media sosial di dunia maya ini besar pengaruhnya di dunia nyata. Walaupun Twitter sudah sangat populer saat ini, ternyata ada banyak juga orang yang belum mengetahui cara daftar dan membuat akun di twitter. Artikel ini khusus dibuat sebagai bahan referensi bagi mereka yang belum mengetahui cara membuat akun Twitter dengan mudah dan cepat. Twitter adalah salah satu media sosial yang paling banyak digunakan di seluruh dunia. Hampir semua kalangan menggunakan twitter, baik itu dari kalangan artis, politikus, pemusik, pejabat negara, pebisnis, dan lain-lain, semua mendaftar dan membuat akun Twitter mereka. Yang membuat media sosial ini banyak digunakan adalah karena kepraktisannya, dan juga karena bisa menjangkau semua orang yang ada di seluruh dunia dengan mudah.\n\nMedia sosial Twitter sering sekali digunakan sebagai media informasi atau promosi secara online. Beberapa politikus bahkan menggunakan twitter sebagai media untuk kampanye mereka. Dampaknya memang sangat besar bagi banyak orang, efek viral dari media sosial di dunia maya ini besar pengaruhnya di dunia nyata. Walaupun Twitter sudah sangat populer saat ini, ternyata ada banyak juga orang yang belum mengetahui cara daftar dan membuat akun di twitter.', '2018-05-24 07:52:36'),
(19, 4, 'Ingin Belajar Membuat Blog? Lakukan 6 Langkah Ini untuk Menjadi Blogger yang Sukses', 'brianabraham_images', 'ara membuat blog untuk sebagian orang adalah hal yang sulit untuk dilakukan. Tapi dengan alat yang tepat, Anda dapat membuatnya dengan mudah, seperti yang akan kami bahas pada tutorial ini. Seperti diketahui, blog merupakan media yang efektif untuk berbagi informasi kepada orang lain.\n\nSelain itu, melalui blog Anda dapat melakukan personal branding dan menghasilkan uang tentunya. Jika Anda ingin memiliki blog tapi belum mengatahui caranya, artikel ini akan membantu Anda langkah demi langkah sampai blog Anda dapat diakses melalui internet.\n\nBukan itu saja, melalui langkah pada tutorial ini Anda dapat mengembangkan blog supaya dapat bersaing di mesin pencari Google.\n\nara membuat blog untuk sebagian orang adalah hal yang sulit untuk dilakukan. Tapi dengan alat yang tepat, Anda dapat membuatnya dengan mudah, seperti yang akan kami bahas pada tutorial ini. Seperti diketahui, blog merupakan media yang efektif untuk berbagi informasi kepada orang lain.\n\nSelain itu, melalui blog Anda dapat melakukan personal branding dan menghasilkan uang tentunya. Jika Anda ingin memiliki blog tapi belum mengatahui caranya, artikel ini akan membantu Anda langkah demi langkah sampai blog Anda dapat diakses melalui internet.\n\nBukan itu saja, melalui langkah pada tutorial ini Anda dapat mengembangkan blog supaya dapat bersaing di mesin pencari Google.\n\nara membuat blog untuk sebagian orang adalah hal yang sulit untuk dilakukan. Tapi dengan alat yang tepat, Anda dapat membuatnya dengan mudah, seperti yang akan kami bahas pada tutorial ini. Seperti diketahui, blog merupakan media yang efektif untuk berbagi informasi kepada orang lain.\n\nSelain itu, melalui blog Anda dapat melakukan personal branding dan menghasilkan uang tentunya. Jika Anda ingin memiliki blog tapi belum mengatahui caranya, artikel ini akan membantu Anda langkah demi langkah sampai blog Anda dapat diakses melalui internet.\n\nBukan itu saja, melalui langkah pada tutorial ini Anda dapat mengembangkan blog supaya dapat bersaing di mesin pencari Google.', '2018-05-24 07:51:28'),
(20, 5, 'Mengenal Apa Itu Facebook Ads ?', 'gdfgdfgdfg', 'Facebook merupakan salah satu social media yang paling banyak digunakan didunia, hal ini terbukti sangat ampuh jika Facebook Anda gunakan untuk media promosi iklan yang paling efektif untuk meningkatkan bisnis Anda. Facebook Ads merupakan salah satu periklanan pada sosial media facebook, Tentunya tidak Asing bagi Anda mendapatkan periklanan dari Facebook saat mengakses aplikasi facebook baik itu di Desktop dan Smartphone Anda.\n\nPerlu Anda ketahui bahwa Indonesia menduduki urutan kedua sebagai negara pengguna Facebook terbesar setelah United States dengan jumlah angka menembus lebih dari 30 juta pengguna. Sehingga menjadi market yang sangat cocok bagi Anda yang ingin menyasar produk di wilayah Indonesia.\n\nIklan berbayar dari Facebook ini dapat digunakan untuk mempromosikan produk/jasa Anda dengan jangkauan yang dapat diatur sesuai dengan pengaturan dari pengiklan. Facebook sendiri lebih menyasar para pengguna facebook yang dapat ditelusuri menggunakan interest, hobby, dan beberapa indikator lain yang bisa dimanfaatkan oleh pengiklan.\n\nHal ini tentunya dapat menjangkau lebih banyak orang dibandingkan menggunakan akun pribadi maupun fanspage FB. Sehingga tidak dipungkiri periklanan dengna Facebook Ads sangat efektif untuk menjangkau market anda untuk bisa mempromosikan produk Anda dengan baik.\n\nBerikut ini beberapa strategi yang bisa Anda gunakan dalam periklanan menggunakan Facebook Ads :\n\n    Memilih Iklan yang sesuai, hal ini bisa dijelaskan apakah target iklan Anda hanya meningkatkan fanspage, meningkatkan like, meningkatkan partisipasi pengguna dan pilihan lainnya. Dalam hal ini Anda bisa memilih opsi seperti : Page Post Engagement, Page Likes, Clicks to Website, Website Conversion, Apps atau Events.\n    Memilih target market yang benar, hal ini harus anda setup dengan benar mengenai lokasi, umur, jenis kelamin, minat, bahasa, dan masih banyak kategori lainnya.\n    Gunakan Gambar dan Call to Action, gambar sangat penting dalam periklanan facebook. Hal yang harus anda ketahui adalah facebook akan menyetujui iklan dengan banyak tulisan pada gambar hanya mencapai 20%, maksudnya disini jika komposisi gambar iklan Anda banyak tulisan tidak akan di terima oleh facebook untuk dimunculkan iklan Anda. Gunakanlah call to action yang memancing pengguna anda untuk mengeklik iklan Anda.\n\nMasih banyak lagi manfaat menggunakan facebook Ads untuk mempromosikan produk/jasa Anda. Bagaimana ? Apakah anda tertarik?', '2018-05-24 07:55:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_blog`
--
ALTER TABLE `category_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_blog`
--
ALTER TABLE `category_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
