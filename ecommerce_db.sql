-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2017 at 04:49 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `product_detail` text NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `size` text NOT NULL,
  `type_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `product_detail`, `price`, `qty`, `size`, `type_id`, `image`, `supplier_id`) VALUES
(1, 'ป้ายชื่อพลาสติก 2.1/2x4 แนวตั้ง', '', 150, 1000, '', 12, '', 5),
(2, 'ลูกขนไก่จีน Tengyun', '', 220, 155, '', 4, '', 9),
(3, 'โพสต์-อิท ชุด', '', 25, 122, '', 10, '', 4),
(4, 'กล่องดินสอ (กล่องเหล็ก 2 ชั้น) 506-C9', '', 150, 35, '', 6, '', 3),
(5, 'ควอนตั้มดินสอกด อะตอม QM220 คละสีด้าม', 'ยี่ห้อ: ควอนตั้ม (Quantum)', 620, 412, '', 6, '', 2),
(6, 'กระดาษถ่ายเอกสาร 80G A4 Double A', 'ยี่ห้อ: ดับเบิล เอ (Double A)', 123, 500, '', 10, '', 1),
(7, 'ตราช้างแฟ้มหนีบ ปกพีพี สีดำ #590PFBLK ', 'ช้าง (Elephant)', 580, 652, '', 2, '', 5),
(8, 'คัตเตอร์สแตนเลสเล็ก 30 องศา', 'ยี่ห้อ: ฟักทอง (PUMPKIN)', 200, 39, '', 3, '', 6),
(9, 'กาว 2 หน้า 12MM.X20Y.', 'ยี่ห้อ: สยามอาร์มสตรองค์', 79, 666, '', 3, '', 7),
(10, 'จานสี กลมเล็กดอกไม้ คละสี 707 (บรรจุถุง)', 'ยี่ห้อ: สุขสวัสดิ์เจริญ', 25, 555, '', 9, '', 8),
(11, 'ตราช้างสมุดฉีก 70G 50S # P-108', 'ยี่ห้อ: ช้าง (Elephant)', 265, 401, '', 1, '', 10),
(12, 'ควอนตั้มปากกาสเก็ต 050 น้ำเงิน <1/50> ชนิดกระบอก', 'ยี่ห้อ: ควอนตั้ม (Quantum)', 159, 65, '', 5, '', 9),
(13, 'ยางลบ ERS-8300038-9', 'ยี่ห้อ: บาร์บี้ (BARBIE)', 259, 124, '', 7, '', 5),
(14, 'ฟุตเหล็ก 24 นิ้ว', 'ยี่ห้อ: สุขสวัสดิ์เจริญ', 420, 321, '', 8, '', 1),
(15, 'Happy new year กลาง 4905-01', '', 249, 21, '', 11, '', 2),
(16, 'ชอล์คขีดผ้า วีไอพี กระต่าย ขาว', 'ยี่ห้อ: สุขสวัสดิ์เจริญ', 49, 89, '', 12, '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `type_name`) VALUES
(1, 'สมุด'),
(2, 'แฟ้ม'),
(3, 'อุปกรณ์สำนักงาน'),
(4, 'อุกรณ์กีฬา'),
(5, 'ปากกา'),
(6, 'ดินสอ'),
(7, 'ยางลบ'),
(8, 'ไม้บรรทัด'),
(9, 'อุปกรณ์ศิลปะ และงานฝีมือ'),
(10, 'ผลิตภัณท์กระดาษ'),
(11, 'อุปกรณ์ตกแต่ง ตามเทศกาล'),
(12, 'เบ็ดเตล็ด');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `supplier_name`, `address`, `telephone`, `detail`) VALUES
(1, 'เพนซิล', 'ถ.เริญประดิษฐ์ อ.เมือง จ.ปัตตานี', '073-335666', 'ร้านนี้เป็นคู่แข่งกับเรา'),
(2, 'หาดใหญ่ เอดดูเคท', 'อ.หาดใหญ่ จ.สงขลา', '074-123456', 'เจ้าของร้านเรื่องมาก'),
(3, 'ป่าบอนเครื่องเขียน', 'อ.บ่าบอน จ.พัทลุง', '074-654321', 'ราคาถูกดี'),
(4, 'พะยูน', 'อ.เมือง จ.ตรัง', '075-259642', ''),
(5, 'NAVA Education', 'ยานาวา กรุงเทพมหานคร', '02-7894562', 'มีบริการส่งทางไปรษณีย์'),
(6, 'กำปงอินเตอร์', 'อ.ยะหริ่ง จ.ปัตตานี', '073-222555', 'อุปกรณ์กีฬาลดให้ 10%'),
(7, 'พี่เล็ก', 'อ.โคกโพธิ์ จ.ปัตตานี', '073-784512', 'ทางไปแคบมาก'),
(8, 'ทรู ดี', 'สามเสน กรุงเทพมหานคร', '02-753951', 'ไกล แต่ราคาถูก'),
(9, 'เพื่อนนักเรียน', 'อ.เมือง จ.สงขลา', '074-564231', 'ไปร้านนี้ได้แวะเที่ยวทะเลด้วย'),
(10, 'บายจัย', 'อ.เมือง จ.ยะลา', '072-258624', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` int(2) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `status`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$11$dy1L7AlC93VPEznZDF7ETOE00564gk0T4Wj4H5080MAo2FxTpXNA2', 'admin@localhost.com', 1, 1, '2017-08-28 10:02:18', '2017-08-28 10:02:18'),
(2, 'surakit.c', '$2y$11$XcP665UzIbZn4bxztLHKueVnjw5.cb/sZ3238exsWx9F0GD3m7u8u', 'customer01@email.com', 1, 0, '2017-08-29 10:38:18', '2017-08-29 10:38:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
